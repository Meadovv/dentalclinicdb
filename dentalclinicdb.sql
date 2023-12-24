-- phpMyAdmin SQL Dump
-- version 5.2.1deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8686
-- Generation Time: Dec 24, 2023 at 04:17 PM
-- Server version: 10.11.6-MariaDB-1
-- PHP Version: 8.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dentalclinicdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `EMAIL` varchar(50) NOT NULL,
  `PASSWORD` varchar(20) NOT NULL,
  `FULLNAME` varchar(50) NOT NULL,
  `SDT` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `MAKH` int(11) NOT NULL,
  `NGAYKhAM` date NOT NULL,
  `HOTEN` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `PHONE` char(10) NOT NULL,
  `MADV` int(11) NOT NULL,
  `MANS` int(11) NOT NULL,
  `GHICHU` varchar(200) DEFAULT NULL,
  `KHUNGGIO` time NOT NULL,
  `KHOATHANHTOAN` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`MAKH`, `NGAYKhAM`, `HOTEN`, `PHONE`, `MADV`, `MANS`, `GHICHU`, `KHUNGGIO`, `KHOATHANHTOAN`) VALUES
(135, '0000-00-00', '', '', 0, 0, '', '00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `danhgiaNhasi`
--

CREATE TABLE `danhgiaNhasi` (
  `MADG` int(11) NOT NULL,
  `MAKH` int(11) NOT NULL,
  `NGAYKHAM` varchar(200) NOT NULL,
  `SOSAO` int(11) NOT NULL,
  `BINHLUAN` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `danhgiaNhasi`
--

INSERT INTO `danhgiaNhasi` (`MADG`, `MAKH`, `NGAYKHAM`, `SOSAO`, `BINHLUAN`) VALUES
(1, 1, '12/12/2003', 5, 'good');

-- --------------------------------------------------------

--
-- Table structure for table `danhgiaService`
--

CREATE TABLE `danhgiaService` (
  `MADG` int(11) NOT NULL,
  `MAKH` int(11) NOT NULL,
  `NGAYKHAM` varchar(200) NOT NULL,
  `SOSAO` int(11) NOT NULL,
  `BINHLUAN` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `danhgiaService`
--

INSERT INTO `danhgiaService` (`MADG`, `MAKH`, `NGAYKHAM`, `SOSAO`, `BINHLUAN`) VALUES
(1, 1, '12/12/2003', 5, 'good');

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
--

CREATE TABLE `khachhang` (
  `MAKH` int(11) NOT NULL,
  `HOTEN` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `EMAIL` varchar(50) NOT NULL,
  `PASSWORD` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `SDT` char(10) NOT NULL,
  `GIOITINH` tinyint(1) NOT NULL,
  `DIACHI` varchar(200) NOT NULL,
  `NGAYSINH` date NOT NULL,
  `TICHDIEM` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `khachhang`
--

INSERT INTO `khachhang` (`MAKH`, `HOTEN`, `EMAIL`, `PASSWORD`, `SDT`, `GIOITINH`, `DIACHI`, `NGAYSINH`, `TICHDIEM`) VALUES
(1, 'Nguyễn Văn A', 'a@gmail.com', '123', '123', 0, 'AAA', '2023-12-24', 1),
(2, 'Nguyễn Văn B', 'b@gmail.com', '123', '123', 0, 'AAA', '2023-12-24', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nhanvien`
--

CREATE TABLE `nhanvien` (
  `MANV` int(11) NOT NULL,
  `HOTEN` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `EMAIL` varchar(50) NOT NULL,
  `PASSWORD` varchar(20) NOT NULL,
  `SDT` char(10) NOT NULL,
  `GIOITINH` tinyint(1) NOT NULL,
  `DIACHI` varchar(200) NOT NULL,
  `NGAYSINH` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nhasi`
--

CREATE TABLE `nhasi` (
  `MANS` int(11) NOT NULL,
  `TENNS` varchar(50) NOT NULL,
  `GIOITHIEU` varchar(200) DEFAULT NULL,
  `SDT` char(10) NOT NULL,
  `DIACHI` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nhasi`
--

INSERT INTO `nhasi` (`MANS`, `TENNS`, `GIOITHIEU`, `SDT`, `DIACHI`) VALUES
(1, 'Nha sĩ 1', 'aaa', '123', 'aaa'),
(2, 'Nha sĩ 2', 'aaa', '123', 'aaa');

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `MADV` int(11) NOT NULL,
  `TENDV` varchar(50) NOT NULL,
  `GIA` int(11) NOT NULL,
  `MOTA` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`MADV`, `TENDV`, `GIA`, `MOTA`) VALUES
(1, 'Dịch vụ 1', 123, 'ass'),
(3, 'Dịch vụ 2', 123, 'ass');

-- --------------------------------------------------------

--
-- Table structure for table `uudai`
--

CREATE TABLE `uudai` (
  `TICHDIEM` int(11) NOT NULL,
  `GIAMGIA` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`NGAYKhAM`,`MAKH`);

--
-- Indexes for table `danhgiaNhasi`
--
ALTER TABLE `danhgiaNhasi`
  ADD PRIMARY KEY (`MADG`);

--
-- Indexes for table `danhgiaService`
--
ALTER TABLE `danhgiaService`
  ADD PRIMARY KEY (`MADG`);

--
-- Indexes for table `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`MAKH`),
  ADD UNIQUE KEY `EMAIL` (`EMAIL`);

--
-- Indexes for table `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`MANV`);

--
-- Indexes for table `nhasi`
--
ALTER TABLE `nhasi`
  ADD PRIMARY KEY (`MANS`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`MADV`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `danhgiaNhasi`
--
ALTER TABLE `danhgiaNhasi`
  MODIFY `MADG` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `danhgiaService`
--
ALTER TABLE `danhgiaService`
  MODIFY `MADG` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `MAKH` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `nhanvien`
--
ALTER TABLE `nhanvien`
  MODIFY `MANV` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nhasi`
--
ALTER TABLE `nhasi`
  MODIFY `MANS` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `MADV` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
