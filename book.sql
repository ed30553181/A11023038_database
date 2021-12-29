-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- 主機： localhost
-- 產生時間： 
-- 伺服器版本： 8.0.17
-- PHP 版本： 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `book`
--

-- --------------------------------------------------------

--
-- 資料表結構 `books`
--

CREATE TABLE `books` (
  `BookSN` varchar(50) NOT NULL,
  `Title` varchar(50) NOT NULL,
  `Btype` varchar(50) NOT NULL,
  `Language` varchar(50) NOT NULL,
  `Subject` varchar(50) NOT NULL,
  `Grade` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `donaterecord`
--

CREATE TABLE `donaterecord` (
  `Record_Key` varchar(50) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `DonateDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `donator`
--

CREATE TABLE `donator` (
  `DonateKey` varchar(50) NOT NULL,
  `Dname` varchar(50) NOT NULL,
  `Phone` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `donator`
--

INSERT INTO `donator` (`DonateKey`, `Dname`, `Phone`, `Email`) VALUES
('B001', 'Python', '0912345678', 'example@gmail.com');

-- --------------------------------------------------------

--
-- 資料表結構 `organization`
--

CREATE TABLE `organization` (
  `Organization_SN` int(11) NOT NULL,
  `Application` varchar(50) NOT NULL,
  `Phone` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `receiverecord`
--

CREATE TABLE `receiverecord` (
  `Record_Key` int(11) NOT NULL,
  `ReceiveQuantity` varchar(50) NOT NULL,
  `ReceiveDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `student`
--

CREATE TABLE `student` (
  `Studid` int(11) NOT NULL,
  `Sapplication` varchar(50) NOT NULL,
  `Certificate` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`BookSN`);

--
-- 資料表索引 `donaterecord`
--
ALTER TABLE `donaterecord`
  ADD PRIMARY KEY (`Record_Key`);

--
-- 資料表索引 `donator`
--
ALTER TABLE `donator`
  ADD PRIMARY KEY (`DonateKey`);

--
-- 資料表索引 `organization`
--
ALTER TABLE `organization`
  ADD PRIMARY KEY (`Organization_SN`);

--
-- 資料表索引 `receiverecord`
--
ALTER TABLE `receiverecord`
  ADD PRIMARY KEY (`Record_Key`);

--
-- 資料表索引 `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`Studid`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `organization`
--
ALTER TABLE `organization`
  MODIFY `Organization_SN` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `student`
--
ALTER TABLE `student`
  MODIFY `Studid` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
