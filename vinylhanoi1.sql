-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2023 at 12:30 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vinylhanoi1`
--

-- --------------------------------------------------------

--
-- Table structure for table `binhluan`
--

CREATE TABLE `binhluan` (
  `MaBinhLuan` int(11) NOT NULL,
  `TenDangNhap` varchar(255) NOT NULL,
  `MaSanPham` int(11) NOT NULL,
  `NgayBinhLuan` date NOT NULL,
  `NoiDung` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `binhluan`
--

INSERT INTO `binhluan` (`MaBinhLuan`, `TenDangNhap`, `MaSanPham`, `NgayBinhLuan`, `NoiDung`) VALUES
(16, 'tuananh', 74, '2023-05-22', '?????????'),
(17, 'tuananh', 69, '2023-05-22', 'alo lao');

-- --------------------------------------------------------

--
-- Table structure for table `ct_dondat`
--

CREATE TABLE `ct_dondat` (
  `MaDonDat` int(11) NOT NULL,
  `MaSanPham` int(11) NOT NULL,
  `SoLuong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ct_dondat`
--

INSERT INTO `ct_dondat` (`MaDonDat`, `MaSanPham`, `SoLuong`) VALUES
(11, 70, 6),
(11, 71, 1),
(12, 69, 3),
(12, 72, 2);

-- --------------------------------------------------------

--
-- Table structure for table `dondat`
--

CREATE TABLE `dondat` (
  `MaDonDat` int(11) NOT NULL,
  `TenDangNhap` varchar(255) NOT NULL,
  `MaNhanVien` int(11) NOT NULL,
  `TrangThai` text NOT NULL,
  `NoiGiao` text NOT NULL,
  `NgayDat` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `dondat`
--

INSERT INTO `dondat` (`MaDonDat`, `TenDangNhap`, `MaNhanVien`, `TrangThai`, `NoiGiao`, `NgayDat`) VALUES
(11, 'tuananh', 1, '1', 'Hà Nội', '2023-05-22'),
(12, 'tuananh', 1, '0', 'Hà Nội', '2023-05-22');

-- --------------------------------------------------------

--
-- Table structure for table `loaisp`
--

CREATE TABLE `loaisp` (
  `MaLoaiSP` int(11) NOT NULL,
  `TenLoai` text NOT NULL,
  `MoTa` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `loaisp`
--

INSERT INTO `loaisp` (`MaLoaiSP`, `TenLoai`, `MoTa`) VALUES
(1, 'Đĩa Than ', 'Vinyl Record album '),
(2, 'Spakers ', 'Loa bookshelf passive, active '),
(3, 'Mâm Đĩa ', 'Thiết bị đọc đĩa '),
(4, 'Phụ Kiện', 'Dây blabla ');

-- --------------------------------------------------------

--
-- Table structure for table `nhanvien`
--

CREATE TABLE `nhanvien` (
  `MaNhanVien` int(11) NOT NULL,
  `HoTen` text NOT NULL,
  `TenDangNhap` text NOT NULL,
  `MatKhau` text NOT NULL,
  `NgaySinh` date NOT NULL,
  `GioiTinh` text NOT NULL,
  `DienThoai` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `nhanvien`
--

INSERT INTO `nhanvien` (`MaNhanVien`, `HoTen`, `TenDangNhap`, `MatKhau`, `NgaySinh`, `GioiTinh`, `DienThoai`) VALUES
(1, 'admin', 'admin', '123456', '1998-01-01', 'M', '0911234567');

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `MaSanPham` int(11) NOT NULL,
  `TenSanPham` text NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `Anh` text NOT NULL,
  `DonGia` decimal(10,0) NOT NULL,
  `ThongTin` text NOT NULL,
  `TrangThai` text NOT NULL,
  `MaLoaiSP` int(11) NOT NULL,
  `Anh2` text NOT NULL,
  `Anh3` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`MaSanPham`, `TenSanPham`, `SoLuong`, `Anh`, `DonGia`, `ThongTin`, `TrangThai`, `MaLoaiSP`, `Anh2`, `Anh3`) VALUES
(69, 'The Beatles - Abbey Road', 10, 'dia1.jpg', 1250000, 'Album the beatles ', 'Còn Hàng ', 1, 'dia1.jpg', 'dia1.jpg'),
(70, 'DiaThan2', 10, 'dia2.2.jpg', 850000, 'blabla', 'Còn Hàng ', 1, 'dia2.2.jpg', 'dia2.2.jpg'),
(71, 'DiaThan3', 5, 'dia2.jpg', 900000, 'album 122345', 'Còn Hang', 1, 'dia2.jpg', 'dia2.jpg'),
(72, 'Loa1 ', 6, 'loa1.jpg', 15000000, 'loa1 lofi cuc chill ', 'Còn Hàng', 2, 'loa1.2.jfif', 'loa1.2.jfif'),
(73, 'MamDia1', 3, 'mamdia1.1.jpg', 8000000, 'Mamdia nghe nhac ', 'Còn Hàng', 3, 'mamdia1.jfif', 'mamdia1.1.jpg'),
(74, 'Dayloa1', 5, 'loudspeaker-Heimdall-2-1.jpg', 60390000, 'Hemdail 2 ', 'Còn Hàng', 4, 'loudspeaker-Heimdall-2-1.jpg', 'loudspeaker-Heimdall-2-1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `thanhvien`
--

CREATE TABLE `thanhvien` (
  `TenDangNhap` varchar(255) NOT NULL,
  `MatKhau` text NOT NULL,
  `HoTen` text NOT NULL,
  `NgaySinh` date NOT NULL,
  `GioiTinh` text NOT NULL,
  `DiaChi` text NOT NULL,
  `DienThoai` text NOT NULL,
  `Email` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `thanhvien`
--

INSERT INTO `thanhvien` (`TenDangNhap`, `MatKhau`, `HoTen`, `NgaySinh`, `GioiTinh`, `DiaChi`, `DienThoai`, `Email`) VALUES
('hung1', '123456', 'Nguyễn Thành Hưng', '2000-05-15', 'M', 'hà lội', '09112267885', 'hung1@gmail.com'),
('mthai', '123456', 'Mai Thu Hải', '1111-11-11', 'M', 'Hà Nội', '231654987', 'mthai@outlook.com'),
('tuananh', '123456', 'Nguyễn Tuấn Anh', '0000-00-00', 'M', 'Hà Nội', '0123456789', 'anh@gmail.com'),
('tung', '123456', 'Hà Đức Tùng', '2222-02-22', 'M', 'Hà Nội', '5486432186', 'tung@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`MaBinhLuan`),
  ADD KEY `TenDangNhap` (`TenDangNhap`),
  ADD KEY `MaSanPham` (`MaSanPham`);

--
-- Indexes for table `ct_dondat`
--
ALTER TABLE `ct_dondat`
  ADD PRIMARY KEY (`MaDonDat`,`MaSanPham`),
  ADD KEY `ctdondat_sanpham` (`MaSanPham`);

--
-- Indexes for table `dondat`
--
ALTER TABLE `dondat`
  ADD PRIMARY KEY (`MaDonDat`),
  ADD KEY `TenDangNhap` (`TenDangNhap`),
  ADD KEY `MaNhanVien` (`MaNhanVien`);

--
-- Indexes for table `loaisp`
--
ALTER TABLE `loaisp`
  ADD PRIMARY KEY (`MaLoaiSP`);

--
-- Indexes for table `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`MaNhanVien`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`MaSanPham`),
  ADD KEY `MaLoaiSP` (`MaLoaiSP`);

--
-- Indexes for table `thanhvien`
--
ALTER TABLE `thanhvien`
  ADD PRIMARY KEY (`TenDangNhap`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `MaBinhLuan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `dondat`
--
ALTER TABLE `dondat`
  MODIFY `MaDonDat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `loaisp`
--
ALTER TABLE `loaisp`
  MODIFY `MaLoaiSP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `nhanvien`
--
ALTER TABLE `nhanvien`
  MODIFY `MaNhanVien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `MaSanPham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `binhluan`
--
ALTER TABLE `binhluan`
  ADD CONSTRAINT `binhluan_sanpham` FOREIGN KEY (`MaSanPham`) REFERENCES `sanpham` (`MaSanPham`),
  ADD CONSTRAINT `binhluan_thanhvien` FOREIGN KEY (`TenDangNhap`) REFERENCES `thanhvien` (`TenDangNhap`);

--
-- Constraints for table `ct_dondat`
--
ALTER TABLE `ct_dondat`
  ADD CONSTRAINT `ctdondat_dondat` FOREIGN KEY (`MaDonDat`) REFERENCES `dondat` (`MaDonDat`),
  ADD CONSTRAINT `ctdondat_sanpham` FOREIGN KEY (`MaSanPham`) REFERENCES `sanpham` (`MaSanPham`);

--
-- Constraints for table `dondat`
--
ALTER TABLE `dondat`
  ADD CONSTRAINT `dondat_nhanvien` FOREIGN KEY (`MaNhanVien`) REFERENCES `nhanvien` (`MaNhanVien`),
  ADD CONSTRAINT `dondat_thanhvien` FOREIGN KEY (`TenDangNhap`) REFERENCES `thanhvien` (`TenDangNhap`);

--
-- Constraints for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_loaisp` FOREIGN KEY (`MaLoaiSP`) REFERENCES `loaisp` (`MaLoaiSP`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
