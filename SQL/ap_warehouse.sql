-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 08, 2023 at 03:52 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ap_warehouse`
--

-- --------------------------------------------------------

--
-- Table structure for table `currentstock`
--

CREATE TABLE `currentstock` (
  `productcode` varchar(45) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `currentstock`
--

INSERT INTO `currentstock` (`productcode`, `quantity`) VALUES
('Lnyd', 27),
('pAlita', 2),
('pOrbit', 250);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `cid` int(11) NOT NULL,
  `customercode` varchar(45) NOT NULL,
  `fullname` varchar(45) NOT NULL,
  `location` varchar(45) NOT NULL,
  `phone` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`cid`, `customercode`, `fullname`, `location`, `phone`) VALUES
(308, 'tlk', 'PT. Telkomsel', 'TSO', '021837328'),
(309, 'xla', 'PT. XL Axiata', 'Axiata Tower', '021342728'),
(310, 'ioh', 'PT. Indosat', 'KPPTI', '02146823'),
(311, 'idl', 'PT. Indolakto', 'Ciracas', '0214537364'),
(312, 'bds', 'PT. Bank Danamon Indonesia', 'Kuningan', '0215327823'),
(313, 'rnf', 'PT. Rekso Nasional Food', 'Sunter', '0218735278'),
(314, 'kfc', 'PT. Fastfood Indonesia', 'MT Haryono', '021432829'),
(315, 'dxm', 'PT. Dexa Medica', 'Bintaro', '0214362873'),
(316, 'dai', 'PT. Danone Indonesia', 'RDTX Place', '0217392728'),
(317, 'sbi', 'PT. Sari Burger Indonesia', 'Jakarta', '0218929739'),
(318, 'alita', 'PT. Alita Indonesia', 'Jakarta Selatan', '021526272');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `pid` int(11) NOT NULL,
  `productcode` varchar(45) NOT NULL,
  `productname` varchar(45) NOT NULL,
  `costprice` bigint(20) NOT NULL,
  `sellprice` bigint(20) NOT NULL,
  `brand` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`pid`, `productcode`, `productname`, `costprice`, `sellprice`, `brand`) VALUES
(131, 'Lnyd', 'Lanyard Dexa Medica', 11000, 13500, 'Bintang Plastik'),
(132, 'Porbit', 'Payung Telkomsel Orbit', 31000, 50000, 'Aneka Payung'),
(133, 'PlakatRNF', 'Plakat Pensiun', 576000, 720000, 'Dais Virgo'),
(134, 'Etoll', 'Etoll Alita', 33000, 47000, 'Mitra Anugerah'),
(135, 'Tumblr', 'Tumbler Tsel Orbit', 15000, 25000, 'Padma Jaya'),
(136, 'Stainless', 'Stand Backdrop', 2900000, 3750000, 'Arsa Interior'),
(137, 'Backwall', 'Backwall Childfund', 3800000, 5000000, 'Wellen Print'),
(139, 'KursiIOH3', 'Kursi Tri Magenta', 47000, 53000, 'HC Print'),
(140, 'lnydXLELITE', 'Lanyard XL ELITE', 11000, 13500, 'Bintang Plastik'),
(142, 'pAlita', 'Plakat Alita', 425000, 575000, 'Dais Virgo');

-- --------------------------------------------------------

--
-- Table structure for table `purchaseinfo`
--

CREATE TABLE `purchaseinfo` (
  `purchaseID` int(11) NOT NULL,
  `suppliercode` varchar(45) NOT NULL,
  `productcode` varchar(45) NOT NULL,
  `date` varchar(50) NOT NULL,
  `quantity` int(11) NOT NULL,
  `totalcost` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `purchaseinfo`
--

INSERT INTO `purchaseinfo` (`purchaseID`, `suppliercode`, `productcode`, `date`, `quantity`, `totalcost`) VALUES
(1001, 'sup1', 'prod1', '0000-00-00', 10, 850000),
(1002, 'sup1', 'prod6', '0000-00-00', 20, 34000),
(1003, 'sup2', 'prod3', '0000-00-00', 5, 300000),
(1004, 'sup2', 'prod5', '0000-00-00', 5, 10000),
(1005, 'sup3', 'prod2', '0000-00-00', 2, 140000),
(1006, 'sup4', 'prod4', '0000-00-00', 2, 100000),
(1009, 'sup2', 'prod3', '0000-00-00', 2, 120000),
(1010, 'sup1', 'prod7', '0000-00-00', 10, 30000),
(1011, 'sup2', 'prod8', '0000-00-00', 20, 300000),
(1012, 'sup1', 'prod1', '0000-00-00', 11, 935000),
(1016, 'sbp', 'idXL', '0000-00-00', 500, 212500000),
(1017, 'sap', 'pOrbit', '0000-00-00', 500, 15500000),
(1021, 'sdv', 'pAlita', '0000-00-00', 12, 5100000),
(1022, 'sbp', 'Lnyd', '2023-07-05T17:00:00Z', 15, 165000),
(1023, 'sbp', 'Lnyd', '2023-07-05T17:00:00Z', 10, 110000),
(1024, 'sbp', 'Lnyd', '2023-07-05T17:00:00Z', 1, 11000),
(1025, 'sbp', 'lnyd', 'Thu Jul 06 19:47:57 ICT 2023', 1, 11000);

-- --------------------------------------------------------

--
-- Table structure for table `salesinfo`
--

CREATE TABLE `salesinfo` (
  `salesid` int(11) NOT NULL,
  `date` varchar(45) NOT NULL,
  `productcode` varchar(45) NOT NULL,
  `customercode` varchar(45) NOT NULL,
  `quantity` int(11) NOT NULL,
  `revenue` bigint(20) NOT NULL,
  `soldby` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `salesinfo`
--

INSERT INTO `salesinfo` (`salesid`, `date`, `productcode`, `customercode`, `quantity`, `revenue`, `soldby`) VALUES
(2017, 'Tue Jul 04 00:00:00 ICT 2023', 'pOrbit', 'tlk', 250, 12500000, 'root'),
(2018, 'Tue Jul 04 00:00:00 ICT 2023', 'pAlita', 'alita', 10, 5750000, 'root');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `sid` int(11) NOT NULL,
  `suppliercode` varchar(45) NOT NULL,
  `fullname` varchar(45) NOT NULL,
  `location` varchar(45) NOT NULL,
  `mobile` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`sid`, `suppliercode`, `fullname`, `location`, `mobile`) VALUES
(411, 'sbp', 'Bintang Plastik', 'Asemka', '0874392738'),
(412, 'sap', 'Aneka Payung', 'Sunter', '0856382737'),
(413, 'sdv', 'Dais Virgo', 'Blok M', '0821383922'),
(414, 'sma', 'Mitra Anugerah', 'Jakarta Timur', '0892517182'),
(415, 'spj', 'Padma Jaya', 'Asemka', '0811628393'),
(416, 'sai', 'Arsa Interior', 'Cibubur', '0897547687'),
(417, 'swp', 'Wellen Print', 'Daan Mogot', '0877655487'),
(418, 'shc', 'HC Print', 'Daan Mogot', '0857895479');

-- --------------------------------------------------------

--
-- Table structure for table `userlogs`
--

CREATE TABLE `userlogs` (
  `username` varchar(45) NOT NULL,
  `in_time` varchar(45) NOT NULL,
  `out_time` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `userlogs`
--

INSERT INTO `userlogs` (`username`, `in_time`, `out_time`) VALUES
('aduser1', '2021-09-01T04:46:55.125709800', '2021-09-01T04:47:01.801381'),
('root', '2021-09-01T05:02:43.010014', '2021-09-01T05:02:50.224787400'),
('stduser1', '2021-09-01T05:04:57.690182100', '2021-09-01T05:05:04.294274300'),
('root', '2021-09-01T05:05:12.269897600', '2021-09-01T05:05:16.866792500'),
('root', '2021-09-01T05:10:08.728527600', '2021-09-01T05:10:16.926883100'),
('root', '2021-09-01T06:19:09.326477200', '2021-09-01T06:19:21.641620900'),
('emp1', '2021-09-01T06:19:34.536411800', '2021-09-01T06:19:43.517392100'),
('root', '2021-09-01T06:19:46.811400900', '2021-09-01T06:20:10.879660700'),
('root', '2021-09-01T14:59:48.661066400', '2021-09-01T15:02:09.761864900'),
('root', '2021-09-01T15:09:02.964317400', '2021-09-01T15:09:14.141324800'),
('root', '2021-09-01T15:09:27.889908500', '2021-09-01T15:09:48.262387'),
('root', '2021-09-01T15:38:48.557639300', '2021-09-01T15:40:00.527183800'),
('root', '2021-09-01T15:40:22.622326', '2021-09-01T15:41:06.461438500'),
('root', '2021-09-01T15:44:26.195028100', '2021-09-01T15:44:33.071448800'),
('root', '2021-09-02T01:42:52.417989900', '2021-09-02T01:42:55.226675900'),
('root', '2021-09-02T01:43:12.226339400', '2021-09-02T01:43:15.818776'),
('aduser1', '2021-09-03T02:12:41.021781900', '2021-09-03T02:19:11.829873500'),
('root', '2023-04-06T11:41:27.871444', '2023-04-06T11:41:45.971195500'),
('root', '2023-04-06T11:44:02.030312600', '2023-04-06T11:44:27.863287300'),
('root', '2023-04-06T11:45:09.148590400', '2023-04-06T11:45:20.909007800'),
('root', '2023-04-06T11:53:58.735074900', '2023-04-06T11:54:12.305707700'),
('root', '2023-04-06T11:54:48.745915400', '2023-04-06T11:58:48.513617700'),
('root', '2023-04-06T12:05:42.968785600', '2023-04-06T12:06:15.625932400'),
('root', '2023-04-06T21:15:43.466440400', '2023-04-06T21:25:39.191920200'),
('panji', '2023-04-06T21:25:44.428435500', '2023-04-06T21:26:12.544761300'),
('stduser1', '2023-04-06T21:26:29.055713800', '2023-04-06T21:27:47.811920200'),
('root', '2023-04-06T21:28:39.551350400', '2023-04-06T21:37:24.048288600'),
('root', '2023-05-26T10:16:37.643758600', '2023-05-26T10:16:42.672142800'),
('root', '2023-05-26T10:18:28.929893400', '2023-05-26T10:18:37.525130300'),
('root', '2023-05-26T10:13:56.006636600', '2023-05-26T10:18:46.383271600'),
('root', '2023-05-26T10:20:28.742144200', '2023-05-26T10:20:32.761179400'),
('root', '2023-05-26T10:22:21.296108100', '2023-05-26T10:23:30.657106200'),
('root', '2023-06-08T10:24:41.864653500', '2023-06-08T10:25:11.999946'),
('root', '2023-06-08T10:31:24.634464', '2023-06-08T10:31:41.947829100'),
('root', '2023-06-08T10:33:37.702623700', '2023-06-08T10:34:08.025638400'),
('root', '2023-06-08T10:45:17.268113200', '2023-06-08T10:45:55.499188200'),
('root', '2023-06-08T10:46:38.063475500', '2023-06-08T10:46:46.734344100'),
('root', '2023-06-08T10:47:23.650157200', '2023-06-08T10:47:35.202544400'),
('root', '2023-06-08T10:48:06.152226300', '2023-06-08T10:48:15.257314400'),
('root', '2023-06-08T10:53:04.988151700', '2023-06-08T10:56:52.598809900'),
('root', '2023-06-08T10:57:55.548625900', '2023-06-08T10:58:20.039870300'),
('root', '2023-06-08T11:00:16.599483400', '2023-06-08T11:00:48.675234500'),
('root', '2023-06-08T11:01:26.635700400', '2023-06-08T11:01:30.251402800'),
('root', '2023-06-08T11:02:24.496163400', '2023-06-08T11:02:28.424537500'),
('root', '2023-06-08T11:05:51.474438900', '2023-06-08T11:05:54.524786100'),
('root', '2023-06-08T11:11:30.296005200', '2023-06-08T11:11:36.804755500'),
('root', '2023-06-08T11:15:59.291370800', '2023-06-08T11:18:00.415918'),
('root', '2023-06-08T11:23:36.456956500', '2023-06-08T11:23:57.280795900'),
('root', '2023-06-08T11:25:43.930692700', '2023-06-08T11:27:01.895808600'),
('root', '2023-06-08T11:27:48.256520', '2023-06-08T11:28:41.631137500'),
('root', '2023-06-08T11:29:07.630358700', '2023-06-08T11:44:57.373630300'),
('root', '2023-06-08T11:51:27.033324300', '2023-06-08T11:51:34.659391500'),
('root', '2023-06-08T11:52:10.228987300', '2023-06-08T11:52:20.834501700'),
('root', '2023-06-08T11:53:03.487787900', '2023-06-08T11:53:11.164887200'),
('root', '2023-06-08T11:56:02.346388200', '2023-06-08T11:56:12.053109300'),
('root', '2023-06-08T11:56:29.506924900', '2023-06-08T11:56:34.602051300'),
('root', '2023-06-08T11:56:53.419398400', '2023-06-08T11:57:20.202368300'),
('root', '2023-06-08T11:57:52.769435500', '2023-06-08T11:58:00.070889400'),
('root', '2023-06-08T11:58:35.432556700', '2023-06-08T11:58:43.936504500'),
('root', '2023-06-08T12:01:31.779475', '2023-06-08T12:01:44.517628400'),
('root', '2023-06-08T12:04:36.898668500', '2023-06-08T12:04:50.627475600'),
('root', '2023-06-08T12:06:58.436438100', '2023-06-08T12:07:46.342913300'),
('root', '2023-06-08T12:08:00.165043400', '2023-06-08T12:08:30.952573700'),
('root', '2023-06-08T12:08:34.710720800', '2023-06-08T12:08:51.855747900'),
('root', '2023-06-08T12:08:54.558745200', '2023-06-08T12:09:05.031524100'),
('root', '2023-06-08T12:09:17.981403300', '2023-06-08T12:09:46.128147'),
('root', '2023-06-08T12:11:37.485218100', '2023-06-08T12:12:00.985533600'),
('root', '2023-06-08T12:12:26.518921600', '2023-06-08T12:12:32.631490400'),
('root', '2023-06-08T12:13:35.679411900', '2023-06-08T12:13:42.245989900'),
('root', '2023-06-08T12:14:03.397083500', '2023-06-08T12:14:11.730999700'),
('root', '2023-06-08T12:14:47.306404500', '2023-06-08T12:14:58.863360'),
('root', '2023-06-08T12:15:28.741023400', '2023-06-08T12:15:40.092374900'),
('root', '2023-06-08T12:16:00.980782', '2023-06-08T12:16:05.440729700'),
('root', '2023-06-08T12:16:18.155815300', '2023-06-08T12:16:36.311076500'),
('root', '2023-06-08T12:17:15.751993800', '2023-06-08T12:17:20.720450600'),
('root', '2023-06-08T12:18:05.820936100', '2023-06-08T12:18:24.686255300'),
('root', '2023-06-08T12:19:22.682687300', '2023-06-08T12:19:43.093487100'),
('root', '2023-06-08T12:20:06.446425600', '2023-06-08T12:20:35.491550'),
('root', '2023-06-08T12:20:48.320402300', '2023-06-08T12:21:04.195171500'),
('root', '2023-06-08T12:25:09.545346900', '2023-06-08T12:25:22.165613200'),
('root', '2023-06-08T12:25:39.539610200', '2023-06-08T12:25:46.918216100'),
('root', '2023-06-08T12:26:09.537179100', '2023-06-08T12:26:28.663852'),
('root', '2023-06-08T12:27:17.968223100', '2023-06-08T12:27:32.935345300'),
('root', '2023-06-08T12:27:55.302661900', '2023-06-08T12:28:01.364977'),
('root', '2023-06-08T12:28:36.341516800', '2023-06-08T12:29:06.435928'),
('root', '2023-06-08T12:29:49.894235100', '2023-06-08T12:30:02.525770400'),
('root', '2023-06-08T12:30:58.317653200', '2023-06-08T12:31:08.282174300'),
('root', '2023-06-08T12:31:23.015011600', '2023-06-08T12:31:27.769202700'),
('root', '2023-06-08T12:32:08.025453500', '2023-06-08T12:32:14.903603500'),
('root', '2023-06-08T12:32:29.025379400', '2023-06-08T12:32:56.463987300'),
('root', '2023-06-08T12:33:58.643891400', '2023-06-08T12:34:01.460196'),
('root', '2023-06-08T12:34:41.811300500', '2023-06-08T12:34:54.728364100'),
('root', '2023-06-08T12:35:23.209499400', '2023-06-08T12:35:27.601131800'),
('root', '2023-06-08T12:35:42.420926', '2023-06-08T12:35:46.470072300'),
('root', '2023-06-08T12:36:14.610824700', '2023-06-08T12:36:18.881317900'),
('root', '2023-06-08T12:36:35.897110', '2023-06-08T12:36:42.899502600'),
('root', '2023-06-08T12:37:31.900371200', '2023-06-08T12:37:44.797709600'),
('root', '2023-06-08T12:39:04.966437300', '2023-06-08T12:39:11.018097100'),
('root', '2023-06-08T12:38:13.122723', '2023-06-08T12:39:13.000975600'),
('root', '2023-06-08T12:40:00.219900', '2023-06-08T12:40:08.045435800'),
('root', '2023-06-08T12:41:48.829434100', '2023-06-08T12:42:03.035380100'),
('root', '2023-06-08T12:42:36.152529600', '2023-06-08T12:42:41.137542700'),
('root', '2023-06-08T20:15:36.952306400', '2023-06-08T20:15:55.816329900'),
('root', '2023-06-08T20:19:58.959615100', '2023-06-08T20:20:07.263118600'),
('root', '2023-06-08T20:20:40.977297300', '2023-06-08T20:33:43.230465200'),
('emp1', '2023-06-08T20:35:39.731835300', '2023-06-08T20:35:52.912268900'),
('emp1', '2023-06-08T20:36:17.210254500', '2023-06-08T20:37:53.016434700'),
('root', '2023-06-08T20:38:32.845167300', '2023-06-08T20:38:40.726827100'),
('root', '2023-06-08T20:40:24.494644', '2023-06-08T20:41:17.220955900'),
('root', '2023-06-08T20:44:55.905889', '2023-06-08T20:53:50.895503800'),
('root', '2023-06-27T11:36:06.401', '2023-06-27T11:37:42.218'),
('root', '2023-06-27T12:56:44.548', '2023-06-27T12:57:17.701'),
('root', '2023-06-27T12:57:37.065', '2023-06-27T12:58:09.616'),
('root', '2023-06-27T13:03:41.701', '2023-06-27T13:05:59.050'),
('root', '2023-06-27T13:06:23.556', '2023-06-27T13:06:43.084'),
('root', '2023-06-27T15:11:50.881', '2023-06-27T15:13:31.326'),
('root', '2023-07-02T19:44:15.620', '2023-07-02T19:46:26.354'),
('root', '2023-07-02T20:05:10.237', '2023-07-02T20:06:09.144'),
('root', '2023-07-02T20:06:37.564', '2023-07-02T20:10:16.169'),
('root', '2023-07-02T20:10:52.885', '2023-07-02T20:20:19.639'),
('root', '2023-07-02T20:21:11.768', '2023-07-02T20:23:01.052'),
('root', '2023-07-02T20:24:30.477', '2023-07-02T20:25:07.013'),
('root', '2023-07-02T20:26:42.957', '2023-07-02T20:27:51.585'),
('root', '2023-07-02T20:28:54.164', '2023-07-02T22:09:05.534'),
('root', '2023-07-05T13:41:49.841', '2023-07-05T13:42:23.655'),
('root', '2023-07-05T13:49:18.371', '2023-07-05T13:50:40.571'),
('root', '2023-07-05T13:52:20.274', '2023-07-05T13:52:36.137'),
('root', '2023-07-05T13:53:47.726', '2023-07-05T13:54:10.313'),
('root', '2023-07-05T13:55:24.674', '2023-07-05T13:58:55.291'),
('root', '2023-07-05T14:01:13.560', '2023-07-05T14:09:35.019'),
('root', '2023-07-05T14:09:50.207', '2023-07-05T14:10:03.279'),
('root', '2023-07-05T14:10:37.047', '2023-07-05T14:10:53.424'),
('root', '2023-07-05T14:11:28.720', '2023-07-05T14:11:37.572'),
('root', '2023-07-05T14:12:34.271', '2023-07-05T14:13:16.486'),
('root', '2023-07-05T14:15:08.936', '2023-07-05T14:15:20.938'),
('root', '2023-07-05T14:15:58.197', '2023-07-05T14:16:08.665'),
('root', '2023-07-05T14:18:31.196', '2023-07-05T14:19:00.454'),
('root', '2023-07-06T12:57:49.193', '2023-07-06T12:59:32.467'),
('root', '2023-07-06T13:01:03.544', '2023-07-06T13:01:09.408'),
('root', '2023-07-06T13:06:55.822', '2023-07-06T13:07:05.355'),
('root', '2023-07-06T13:12:04.025', '2023-07-06T13:12:09.772'),
('root', '2023-07-06T13:12:37.750', '2023-07-06T13:13:15.764'),
('root', '2023-07-06T13:42:12.233', '2023-07-06T13:42:33.503'),
('root', '2023-07-06T13:43:29.246', '2023-07-06T13:43:36.298'),
('root', '2023-07-06T13:44:30.453', '2023-07-06T13:44:52.956'),
('root', '2023-07-06T13:51:20.339', '2023-07-06T13:51:57.605'),
('root', '2023-07-06T13:47:34.117', '2023-07-06T13:51:59.627'),
('root', '2023-07-06T13:53:55.279', '2023-07-06T13:56:33.930'),
('root', '2023-07-06T13:56:17.939', '2023-07-06T13:56:34.829'),
('root', '2023-07-06T13:57:13.976', '2023-07-06T13:58:15.492'),
('root', '2023-07-06T14:00:41.177', '2023-07-06T14:00:52.098'),
('root', '2023-07-06T14:08:42.316', '2023-07-06T14:09:25.935'),
('root', '2023-07-06T14:35:37.662', '2023-07-06T14:35:43.178'),
('root', '2023-07-06T14:36:55.823', '2023-07-06T14:38:44.310'),
('root', '2023-07-06T14:45:04.418', '2023-07-06T14:45:44.122'),
('root', '2023-07-06T14:46:23.038', '2023-07-06T14:46:36.293'),
('root', '2023-07-06T14:41:01.328', '2023-07-06T14:46:41.193'),
('root', '2023-07-06T14:47:28.440', '2023-07-06T14:47:33.869'),
('root', '2023-07-06T19:47:46.157', '2023-07-06T19:49:34.389'),
('root', '2023-07-06T19:50:42.946', '2023-07-06T19:50:51.891'),
('root', '2023-07-08T17:30:41.289', '2023-07-08T17:33:41.286'),
('root', '2023-07-08T17:51:16.505', '2023-07-08T17:51:28.579'),
('root', '2023-07-08T17:55:45.069', '2023-07-08T17:55:49.028'),
('root', '2023-07-08T17:55:55.981', '2023-07-08T17:55:58.624'),
('root', '2023-07-08T17:56:07.023', '2023-07-08T17:56:08.824');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `location` varchar(45) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(200) NOT NULL,
  `usertype` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `location`, `phone`, `username`, `password`, `usertype`) VALUES
(17, 'Faren', 'Local', '9650786717', 'aduser1', 'dbadpass', 'ADMINISTRATOR'),
(18, 'Kasir', 'Local', '9660654785', 'stduser1', 'dbstdpass', 'EMPLOYEE'),
(20, 'Lukman Juwono', 'Local', '9876543210', 'root', 'root', 'ADMINISTRATOR'),
(29, 'Trial Employee', 'Local', '1122334455', 'emp1', 'emp1', 'EMPLOYEE'),
(30, 'Panji Asmoro', 'Kalisari', '698738380', 'panji', 'panji', 'ADMINISTRATOR');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `currentstock`
--
ALTER TABLE `currentstock`
  ADD PRIMARY KEY (`productcode`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`pid`),
  ADD UNIQUE KEY `productcode_UNIQUE` (`productcode`);

--
-- Indexes for table `purchaseinfo`
--
ALTER TABLE `purchaseinfo`
  ADD PRIMARY KEY (`purchaseID`);

--
-- Indexes for table `salesinfo`
--
ALTER TABLE `salesinfo`
  ADD PRIMARY KEY (`salesid`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=319;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;

--
-- AUTO_INCREMENT for table `purchaseinfo`
--
ALTER TABLE `purchaseinfo`
  MODIFY `purchaseID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1026;

--
-- AUTO_INCREMENT for table `salesinfo`
--
ALTER TABLE `salesinfo`
  MODIFY `salesid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2019;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=419;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
