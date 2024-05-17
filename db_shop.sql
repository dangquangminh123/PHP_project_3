-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 01, 2023 lúc 04:58 AM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `db_shop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `adminId` int(11) NOT NULL,
  `adminName` varchar(255) NOT NULL,
  `adminUser` varchar(255) NOT NULL,
  `adminEmail` varchar(255) NOT NULL,
  `adminPass` varchar(42) NOT NULL,
  `level` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`adminId`, `adminName`, `adminUser`, `adminEmail`, `adminPass`, `level`) VALUES
(1, 'Admin Vũ', 'Admin', 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `brandId` int(11) NOT NULL,
  `brandName` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_brand`
--

INSERT INTO `tbl_brand` (`brandId`, `brandName`) VALUES
(1, 'ACER'),
(2, 'CANON'),
(3, 'SAMSUNG'),
(4, 'IPHONE');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `cartId` int(11) NOT NULL,
  `sId` varchar(300) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(300) NOT NULL,
  `price` float(10,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `image` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_cart`
--

INSERT INTO `tbl_cart` (`cartId`, `sId`, `productId`, `productName`, `price`, `quantity`, `image`) VALUES
(1, 'b8bjm33p3aeee8uliv7ps0k53a', 4, 'Bàn là', 49.00, 1, 'uploads/f54a28d653.png'),
(2, 'b8bjm33p3aeee8uliv7ps0k53a', 7, 'Tủ lạnh 2 ngăn', 79.00, 1, 'uploads/09b3ec0d17.png'),
(3, 'b8bjm33p3aeee8uliv7ps0k53a', 4, 'Bàn là', 49.00, 1, 'uploads/f54a28d653.png'),
(7, 'qkor242rdt9viu138kg2ihjv2j', 5, 'máy xay sinh tố', 65.00, 2, 'uploads/630608a7f9.png'),
(8, 'qkor242rdt9viu138kg2ihjv2j', 3, 'Bộ loa và đầu đĩa ', 85.00, 2, 'uploads/b542867d7e.jpg'),
(9, 'gcmnu2ub6fvt55j9shglbpqvhm', 4, 'Bàn là', 49.00, 1, 'uploads/f54a28d653.png'),
(10, 'gcmnu2ub6fvt55j9shglbpqvhm', 7, 'Tủ lạnh 2 ngăn', 79.00, 3, 'uploads/09b3ec0d17.png'),
(11, 't8op8gadhfmcerqgpbgp2qqgg3', 7, 'Tủ lạnh 2 ngăn', 79.00, 1, 'uploads/09b3ec0d17.png'),
(13, 'c47iklu61s42g9i3f4l6v77qvf', 4, 'Bàn là', 49.00, 1, 'uploads/f54a28d653.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_category`
--

CREATE TABLE `tbl_category` (
  `catId` int(11) NOT NULL,
  `catName` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_category`
--

INSERT INTO `tbl_category` (`catId`, `catName`) VALUES
(1, 'Mobile Phones'),
(2, 'Desktop'),
(3, 'Laptop'),
(4, 'Accessories'),
(5, 'Software'),
(6, 'Sports &amp; Fitness'),
(7, 'Footwear'),
(8, 'Jewellery'),
(9, 'Clothing'),
(10, 'Home Decor &amp; Kitchen'),
(11, 'Beauty &amp; Healthcare'),
(12, 'Toys, Kids &amp; Babies'),
(13, 'Beauty &amp; Healthcare');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_compare`
--

CREATE TABLE `tbl_compare` (
  `id` int(11) NOT NULL,
  `cmrId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `price` float(10,2) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_compare`
--

INSERT INTO `tbl_compare` (`id`, `cmrId`, `productId`, `productName`, `price`, `image`) VALUES
(1, 1, 5, 'máy xay sinh tố', 65.00, 'uploads/630608a7f9.png'),
(2, 1, 3, 'Bộ loa và đầu đĩa ', 85.00, 'uploads/b542867d7e.jpg'),
(3, 1, 7, 'Tủ lạnh 2 ngăn', 79.00, 'uploads/09b3ec0d17.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `zip` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pass` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_customer`
--

INSERT INTO `tbl_customer` (`id`, `name`, `address`, `city`, `country`, `zip`, `phone`, `email`, `pass`) VALUES
(1, 'Thằn vũ', 'Bình chánh', 'Hồ Chí Minh', 'Việt Nam', '110000', '09472837124', 'customervu@gmail.com', '41059b11a214d780c8ea364628ad4eeb');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(11) NOT NULL,
  `cmrId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` float(10,2) NOT NULL,
  `image` varchar(300) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `cmrId`, `productId`, `productName`, `quantity`, `price`, `image`, `date`, `status`) VALUES
(3, 1, 7, 'Tủ lạnh 2 ngăn', 2, 158.00, 'uploads/09b3ec0d17.png', '2023-03-31 08:45:30', 2),
(4, 1, 3, 'Bộ loa và đầu đĩa ', 2, 170.00, 'uploads/b542867d7e.jpg', '2023-03-31 08:45:30', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_product`
--

CREATE TABLE `tbl_product` (
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `catId` int(11) NOT NULL,
  `brandId` int(11) NOT NULL,
  `body` text NOT NULL,
  `price` float(10,2) NOT NULL,
  `image` varchar(300) NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_product`
--

INSERT INTO `tbl_product` (`productId`, `productName`, `catId`, `brandId`, `body`, `price`, `image`, `type`) VALUES
(2, 'quạt đứng', 8, 1, '<p>Quạt đứng v&ograve;ng 5 c&aacute;nh</p>', 60.00, 'uploads/90cd1af163.jpg', 1),
(3, 'Bộ loa và đầu đĩa ', 4, 3, '<p>Bộ loa v&agrave; c&aacute;c đầu đĩa&nbsp;&nbsp;</p>', 85.00, 'uploads/b542867d7e.jpg', 0),
(4, 'Bàn là', 4, 1, '<p>B&agrave;n l&agrave; ủi điện tử</p>', 49.00, 'uploads/f54a28d653.png', 1),
(5, 'máy xay sinh tố', 10, 1, '<p>M&aacute;y xay sinh tố điện tử hiện đại</p>', 65.00, 'uploads/630608a7f9.png', 0),
(7, 'Tủ lạnh 2 ngăn', 10, 3, '<p>Tủ lạnh chứa đồ ăn 2 ngăn</p>', 79.00, 'uploads/09b3ec0d17.png', 0),
(8, 'Iphone 5', 1, 0, '<p>Iphone 5 mobie phone</p>', 30.00, 'uploads/103f62db04.png', 1),
(9, 'canon R9', 4, 2, '<p>CANON R9</p>', 79.00, 'uploads/f6cace9495.jpg', 1),
(10, 'Máy ảnh Nikon', 4, 2, '<p>M&aacute;y ảnh Nikon</p>', 80.00, 'uploads/a105bcd754.jpg', 1),
(11, 'Canon', 4, 2, '<p>M&aacute;y ảnh CANON ch&iacute;nh h&atilde;ng</p>', 82.00, 'uploads/1ec6716542.png', 0),
(12, 'Iphone 6', 1, 4, '<p>IPHONE 6 ch&iacute;nh h&atilde;ng</p>', 49.00, 'uploads/656e514ba9.png', 0),
(13, 'CAMERA để bàn', 4, 3, '<p>CAMERA để b&agrave;n</p>', 79.00, 'uploads/408f878862.jpg', 1),
(14, 'CAMERA treo tường', 4, 3, '<p>CAMERA treo tường chống trộm&nbsp;</p>', 60.00, 'uploads/2ccb32536a.jpg', 0),
(15, 'Tivi bàn khách', 10, 1, '<p>Tivi để b&agrave;n ph&ograve;ng kh&aacute;ch ch&iacute;nh h&atilde;ng</p>', 89.00, 'uploads/1ad3347d3f.jpg', 0),
(16, 'Máy xay thức ăn', 10, 3, '<p>M&aacute;y xay thức ăn ch&iacute;nh h&atilde;ng</p>', 75.00, 'uploads/c528fdb04f.jpg', 1),
(17, 'Tivi để bàn ACER', 10, 1, '<p>Tivi để b&agrave;n ph&ograve;ng kh&aacute;ch ACER</p>', 81.00, 'uploads/5711276113.jpg', 0),
(18, 'LAPTOP', 3, 3, '<p>LAPTOP ch&iacute;nh h&atilde;ng</p>', 96.00, 'uploads/c6c3b79947.jpg', 1),
(19, 'Tivi RAZOR LED', 10, 3, '<p>TIVI RAZOR LED</p>', 90.00, 'uploads/835335a96a.jpg', 1),
(20, 'Tủ lạnh 4 ngăn lớn', 11, 0, '<p>Tủ lạnh rộng lớn 4 ngăn</p>', 95.00, 'uploads/cb6019d5c2.jpg', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_wlist`
--

CREATE TABLE `tbl_wlist` (
  `id` int(11) NOT NULL,
  `cmrId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `price` float(10,2) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`adminId`);

--
-- Chỉ mục cho bảng `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`brandId`);

--
-- Chỉ mục cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`cartId`);

--
-- Chỉ mục cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`catId`);

--
-- Chỉ mục cho bảng `tbl_compare`
--
ALTER TABLE `tbl_compare`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`productId`);

--
-- Chỉ mục cho bảng `tbl_wlist`
--
ALTER TABLE `tbl_wlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `adminId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `brandId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `cartId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `catId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `tbl_compare`
--
ALTER TABLE `tbl_compare`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `productId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `tbl_wlist`
--
ALTER TABLE `tbl_wlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
