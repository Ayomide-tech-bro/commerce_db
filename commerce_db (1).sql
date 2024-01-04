-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 01, 2024 at 12:37 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `commerce_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart_tb`
--

CREATE TABLE `cart_tb` (
  `id` int(225) NOT NULL,
  `user_id` varchar(250) NOT NULL,
  `product_id` varchar(270) NOT NULL,
  `product_price` varchar(269) NOT NULL,
  `quantity` varchar(270) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cart_tb`
--

INSERT INTO `cart_tb` (`id`, `user_id`, `product_id`, `product_price`, `quantity`) VALUES
(1, '1', '41', '10800', '1'),
(2, '1', '22', '61800', '1'),
(3, '1', '22', '61800', '1'),
(4, '1', '22', '61800', '1'),
(5, '1', '22', '61800', '1');

-- --------------------------------------------------------

--
-- Table structure for table `category_tb`
--

CREATE TABLE `category_tb` (
  `id` int(222) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `user_id` varchar(200) NOT NULL,
  `timestamp` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_tb`
--

INSERT INTO `category_tb` (`id`, `category_name`, `user_id`, `timestamp`) VALUES
(1, 'bags', '1', '2023-12-20 02:51:37'),
(2, 'Laptops', '1', '2023-12-20 02:55:40'),
(3, 'Shoe', '1', '2023-12-20 02:55:45'),
(4, 'Phones', '1', '2023-12-20 02:55:48'),
(5, 'Home accessories ', '1', '2023-12-20 02:55:51'),
(6, 'Food', '1', '2023-12-20 22:27:31'),
(7, 'Groceries', '1', '2023-12-20 22:27:47'),
(8, 'Home appliances', '1', '2023-12-20 22:28:13'),
(9, 'Foot wear', '1', '2023-12-20 22:29:40'),
(10, 'Funitures', '1', '2023-12-20 22:46:25'),
(11, 'Sound System', '1', '2023-12-20 22:56:42'),
(12, 'Spectranent', '1', '2023-12-20 22:59:53');

-- --------------------------------------------------------

--
-- Table structure for table `product_tb`
--

CREATE TABLE `product_tb` (
  `id` int(250) NOT NULL,
  `user_id` varchar(225) NOT NULL,
  `category_id` varchar(100) NOT NULL,
  `product_name` varchar(450) NOT NULL,
  `category_name` varchar(300) NOT NULL,
  `product_price` varchar(400) NOT NULL,
  `former_price` varchar(200) NOT NULL,
  `product_discount` varchar(200) NOT NULL,
  `stock_quantity` varchar(100) NOT NULL,
  `product_description` longtext NOT NULL,
  `product_image` varchar(500) NOT NULL,
  `timestamp` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_tb`
--

INSERT INTO `product_tb` (`id`, `user_id`, `category_id`, `product_name`, `category_name`, `product_price`, `former_price`, `product_discount`, `stock_quantity`, `product_description`, `product_image`, `timestamp`) VALUES
(8, '1', '1', 'Gucci', 'bags', '222', '111', '1', '1', 'wqwww', 'uploads/product_image/658283eaa09c63.jpeg', '2023-12-20 07:04:26'),
(10, '3', '1', 'DELL LAPTOP', 'bags', '40000', '44000', '1', '1', '\ninternal Grey UK/Irish Qwerty Non Backlit Keyboard with nume ric Keypad\nOptical Drive Not Included\n3-Cell Battery, 42WHr\n256GB M.2 SSD\n15.6-inch HD (1366 x 768) Anti -glare LED-Backlit Non-touch N arrow Border Display\n11th Generation Intel(R) Core( TM) i3-1115G4 Processor (6MB C ache, up to 4.1 GHz)\n8GB, 4Gx1, DDR4, 2666MHz\n', 'uploads/product_image/65829446b99f0download (6).jfif', '2023-12-20 08:14:14'),
(11, '3', '1', 'Vercerce', 'bags', '6600', '60000', '2', '3', 'big', 'uploads/product_image/658294e5dd01ddownload (7).jfif', '2023-12-20 08:16:53'),
(12, '3', '1', 'Fendi', 'bags', '20000', '28000', '3', '2', 'A very quality fendi product', 'uploads/product_image/658296a4d6727download (2).jfif', '2023-12-20 08:24:20'),
(13, '3', '1', 'Dior', 'bags', '45000', '49000', '2', '2', 'A very quality dior product', 'uploads/product_image/658298b8bdad7download (6).jfif', '2023-12-20 08:33:12'),
(14, '3', '1', 'zenoir', 'bags', '20000', '21000', '2', '1', 'zenior product', 'uploads/product_image/658299ed99242download (4).jfif', '2023-12-20 08:38:21'),
(15, '3', '1', 'Cila', 'bags', '40000', '55000', '15', '1', 'Quality Cilla', 'uploads/product_image/65829bb574c67download (5).jfif', '2023-12-20 08:45:57'),
(16, '3', '1', 'Menor', 'bags', '12000', '14000', '2', '1', 'Quality Menor Product', 'uploads/product_image/65829c556533adownload (1).jfif', '2023-12-20 08:48:37'),
(17, '1', '2', 'Dell', 'Laptops', '120000', '125000', '5', '1', '\ninternal Grey UK/Irish Qwerty Non Backlit Keyboard with nume ric Keypad\nOptical Drive Not Included\n3-Cell Battery, 42WHr\n256GB M.2 SSD\n15.6-inch HD (1366 x 768) Anti -glare LED-Backlit Non-touch N arrow Border Display\n11th Generation Intel(R) Core( TM) i3-1115G4 Processor (6MB C ache, up to 4.1 GHz)\n8GB, 4Gx1, DDR4, 2666MHz\n', 'uploads/product_image/658342cd208c4product01.png', '2023-12-20 20:38:53'),
(18, '1', '2', 'Hp ', 'Laptops', '110000', '112000', '2', '1', 'Lattitude e7440 Hp laptop', 'uploads/product_image/6583442a40a48product08.png', '2023-12-20 20:44:42'),
(19, '1', '2', 'Vivo', 'Laptops', '85000', '100000', '5', '1', 'Vivo laptop ', 'uploads/product_image/658344f3d78e0product06.png', '2023-12-20 20:48:03'),
(20, '1', '2', 'Popnovo', 'Laptops', '125000', '130000', '2', '1', 'Popnovo System', 'uploads/product_image/658347a43b669product04.png', '2023-12-20 20:59:32'),
(21, '1', '2', 'Samsung', 'Laptops', '170000', '180000', '2', '2', 'Samsung laptop latitude 57yy7', 'uploads/product_image/65835c2b585c5product06.png', '2023-12-20 22:27:07'),
(22, '1', '4', 'XIAOMI Redmi A2+', 'Phones', '61800', '71000', '13', '1', 'XIAOMI Redmi A2+ 6.52\" 2GB RAM/32GB ROM Android 12 - Black', 'uploads/product_image/6584c4fc43d1a1.jpg', '2023-12-22 00:06:36'),
(23, '1', '4', 'Infinix HOT 30i ', 'Phones', '108000', '180300', '40', '1', 'Infinix HOT 30i 6.56\" 4GB RAM/128GB ROM Android 12 - Black', 'uploads/product_image/6584c5bcf19f92.jpg', '2023-12-22 00:09:48'),
(24, '1', '4', 'Tecno Spark 10c ', 'Phones', '94000', '140000', '39', '1', 'Tecno Spark 10c 4GB-128GB\r\n\r\nThe phone has a 5000mAh battery and runs on the Android v12 operating s', 'uploads/product_image/6584c7fde0dd73.jpg', '2023-12-22 00:19:25'),
(25, '1', '4', 'Samsung Galaxy A04s ', 'Phones', '138000', '140000', '2', '1', 'Samsung Galaxy A04s 6.5\" 4GB RAM/64GB ROM Android 12- Black\r\n', 'uploads/product_image/6584c952a5c724.jpg', '2023-12-22 00:25:06'),
(26, '1', '4', 'Tecno Camon 20 ', 'Phones', '182000', '250000', '27', '1', 'Tecno Camon 20 (8GB RAM+256GB ROM) 5000MAH Black', 'uploads/product_image/6584c9b3816235.jpg', '2023-12-22 00:26:43'),
(27, '1', '4', 'Apple IPhone 12, ', 'Phones', '478000', '500000', '28', '1', 'Apple IPhone 12, 6.1-Inch 128GB ROM 5G - Pacific Blue', 'uploads/product_image/6584ca218ed876.jpg', '2023-12-22 00:28:33'),
(28, '1', '4', 'IPhone X 64GB ', 'Phones', '218000', '222000', '2', '2', 'IPhone X 64GB - （Renewed）- Space Gray - 5.8 Inch', 'uploads/product_image/6584ca767a52c7.jpg', '2023-12-22 00:29:58'),
(29, '1', '4', 'Iphone 6s+', 'Phones', '92000', '110000', '9', '1', 'parameter:\r\n\r\nOS: iOS 9\r\n\r\nCPU: A9+M9,\r\n\r\nSIM Card: Nano SIM\r\n\r\nDisplay: 5.5-inch Retina HD with 3D-', 'uploads/product_image/6584cb322d0a28.jpg', '2023-12-22 00:33:06'),
(30, '1', '4', 'Apple IPhone 15 Pro ', 'Phones', '1275000', '1340000', '7', '1', 'Apple IPhone 15 Pro 128GB White Titanium - FaceTime - A17 Pro Chip\r\n', 'uploads/product_image/6584cbbaef8c59.jpg', '2023-12-22 00:35:22'),
(31, '1', '4', 'IPHONE 12 ', 'Phones', '350000', '390000', '11', '1', 'SHARE THIS PRODUCT\r\n\r\n\r\nApple IPHONE 12 - 6.1\" 64GB 4GB RAM (12PM+12PM) 2815mAh RED', 'uploads/product_image/6584cc57bc57210.jpg', '2023-12-22 00:37:59'),
(32, '1', '4', ' Iphone XR ', 'Phones', '280000', '300000', '8', '1', 'NETWORK   Technology   GSM / CDMA / HSPA / EVDO / LTELAUNCH   AnnounceD    2018, September          Status       Available. Released 2018, OctoberBODY   Dimensions   150.9 x 75.7 x 8.3 mm (5.94 x 2.98 x 0.33 in)          Weight       194 g (6.84 oz)          Build        Front/back glass, aluminum frame (7000 series)          SIM        Single SIM (Nano-SIM) or Dual SIM (Nano-SIM, dual stand-by) - for China                 IP67 dust/water resistant (up to 1m for 30 mins)                       Apple Pay (Visa, MasterCard, AMEX certified)DISPLAY   Type        IPS LCD capacitive touchscreen, 16M colors          Size        6.1 inches, 90.3 cm2 (~79.0% screen-to-body ratio)          ResolutioN   828 x 1792 pixels, 19.5:9 ratio (~326 ppi density)          Protection   Scratch-resistant glass, oleophobic coating                 True-tone                       Wide color gamut                       120 Hz touch-sensingPLATFORM  OS        iOS 12, upgradable to iOS 12.2          Chipset      Apple A12 Bionic (7 nm)          CPU        Hexa-core (2x2.5 GHz Vortex + 4x1.6 GHz Tempest)          GPU          Apple GPU (4-core graphics)NETWORK   Technology   GSM / CDMA / HSPA / EVDO / LTELAUNCH   AnnounceD    2018, September          Status       Available. Released 2018, OctoberBODY   Dimensions   150.9 x 75.7 x 8.3 mm (5.94 x 2.98 x 0.33 in)          Weight       194 g (6.84 oz)          Build        Front/back glass, aluminum frame (7000 series)          SIM        Single SIM (Nano-SIM) or Dual SIM (Nano-SIM, dual stand-by) - for China                 IP67 dust/water resistant (up to 1m for 30 mins)                       Apple Pay (Visa, MasterCard, AMEX certified)DISPLAY   Type        IPS LCD capacitive touchscreen, 16M colors          Size        6.1 inches, 90.3 cm2 (~79.0% screen-to-body ratio)          ResolutioN   828 x 1792 pixels, 19.5:9 ratio (~326 ppi density)          Protection   Scratch-resistant glass, oleophobic coating                 True-tone                       Wide color gamut                       120 Hz touch-sensingPLATFORM  OS        iOS 12, upgradable to iOS 12.2          Chipset      Apple A12 Bionic (7 nm)          CPU        Hexa-core (2x2.5 GHz Vortex + 4x1.6 GHz Tempest)          GPU          Apple GPU (4-core graphics)', 'uploads/product_image/6584cddea364a11.jpg', '2023-12-22 00:44:30'),
(33, '1', '4', 'Tecno Spark 10c ', 'Phones', '120000', '135000', '15', '1', 'Tecno Spark 10c 4GB-128GB\r\n\r\nThe phone has a 5000mAh battery and runs on the Android v12 operating system, which offers you speedier updates. This allows you to enjoy watching movies, playing games, and doing a lot more on a single full charge. A 6.6 inches (16.76 cm) display that has a resolution of 720 x 1612 pixels.\r\n\r\nThe phone’s 4GB of RAM and 128GB of internal storage, ensures that it performs without lagging. As a result, it provides smooth and quick performance when using various programs. Also, you may save a variety of files, including music, films,games, and more, without worrying  about running out of room.\r\n\r\nCamera\r\n\r\nThe new Tecno Spark 10c comes with 16MP. The camera of the phone helps you capture stunning pictures as it comes with a single camera setup on the rear while on the front, the mobile sports a 8MP front camera so that you can click some amazing selfies and make video calls.\r\n\r\nBattery\r\n\r\nThe smartphone comes with a 5000 mAh battery that lets you enjoy watching movies, playing games, and do a lot more on a single full charge.\r\n\r\nSpecifications\r\n\r\n6.6 inch\r\n720 x 1612 pixels\r\nWater Drop Notch Display\r\nMain Camera 16MP Rear Camera\r\nFront Camera 8MP\r\nOcta Core\r\n4 GB RAM + 128GM ROM\r\nConnectivity 4G, VoLTE\r\nBattery 5000mAh with 10W fast Charging', 'uploads/product_image/6584cee20f9d612.jpg', '2023-12-22 00:48:50'),
(34, '1', '2', 'Lenovo AMD ', 'Laptops', '273000', '292000', '12', '1', 'outThe Lenovo IdeaPad Amd ryzen is a 14.1-inch laptop with a screen resolution of 1920 x 1080. It has 8GB of memory and a 1TB Hard Disk drive. It has an Amd ryzen to 2.6GHz processor with Lenovo turbo boost system. It was with Windows 10 Home installed.\r\nIt has 3 full-size USB ports built-in on the laptop. Video outputs include: an HDMI full-size port. It supports WiFi 802.11ac, so it\'s compatible with high-speed routers. It has a 0.3MP webcam for video conferencing. \r\nThe Lenovo Amd ryzen 3 measures 14.2 inches wide by 9.9 inches deep by 1 inches high, and it weighs 3.7 lbs. It\'s backed by a 12-month warranty\r\nThe Lenovo Amd ryzen 3 breaks the mold of the contemporary 2-in-1 convertibles. Its design not only capitalizes on a more flattened and sleeker overall surface. It is ultimately a more distinctly commutable gadget to aid users to boot the system up wherever they wish to go. The Lenovo Amd ryzen demonstrates a wide range of versatility when it comes to accomplishing essential tasks pertaining to productivity. \r\nFirst of all, it is worth noting that the monitor of the Lenovo does not flip all the way to the rear end of the device due to the absence of a standard 360 degree angle rotation mechanism. However, it can be laid flat on a plain surface without any obstruction, which can be considered as a quirky trait, which can be put into good use. \r\nWith immediacy, it can also be noted that the Lenovo  has a 14 inches antiglare display, which is further magnified by thin side bezels. The visuals displayed are further accompanied with an audio system of complimentary caliber all thanks to the appreciated inclusion of Dolby Audio technology.\r\nTherefore, the Lenovo  is generally better off to be used and focused on everyday work instead of competitive gaming. The construction of the Lenovo is wholly made out of polycarbonate and plastic materials. This entails to the fact that the structure of the Lenovo is prone to scratch. However, despite the materials used are of the cheaper variety, its aesthetic is surprisingly professional and pleasing to say the least. Needless to say, thoughtful development and efforts were being poured into the design of the Lenovo without any sort of visible discrepancy.\r\nAmd ryzen 3 GPU (GT1) with 12 EUs found on some low-end Kaby-Lake CPU models (15 W ULV series). Same performance as the old HD Graphics 510. Non demanding games should be playable with these graphics cards. 15-16 inch is a standard display size for laptop', 'uploads/product_image/6584d014e8fbb13.jpg', '2023-12-22 00:53:56'),
(35, '1', '2', 'Hp ProBook 11 X360', 'Laptops', '150000', '165000', '25', '1', 'Hp ProBook 11 X360- Touchscreen Intel Celeron 256GB 4GB RAM Windows 10     \r\n\r\n\r\n\r\n1 USB 3.1 Gen 1 Type-C™ (Data Transfer Only, 5 Gb/s signaling rate); 1 USB 3.1 Gen 1 Type-A (Data Transfer Only); 1 AC smart pin; 1 HDMI 1.4b; 1 headphone/microphone combo; 1 RJ-45\r\n\r\nDISPLAY\r\n\r\n\r\n35.6 cm (11\") diagonal HD SVA anti-glare micro-edge WLED 35.6 cm (11\") diagonal HD SVA anti-glare micro-edge WLED 35.6 cm (11\") diagonal HD SVA anti-glare micro-edge WLED', 'uploads/product_image/6584d0c5a6f0814.jpg', '2023-12-22 00:56:53'),
(36, '1', '2', 'Hp 15 Touchscreen ', 'Laptops', '210000', '230000', '12', '1', 'Hp 15 Touchscreen Intel Core I3-10110U,8GB,1TB HDD, Wins 10\r\n\r\nMicroprocessor\r\nIntel® Core™ i3-10110U (2.1 GHz base frequency, up to 4.1 GHz with Intel® Turbo Boost Technology, 4 MB cache, 2 cores)\r\nStorage: 1TB HDD\r\nMemory: 8GB RAM\r\nScreen: 15.6 Inch touch screen\r\nOperating System: Windows 10\r\nChipsetIntel® Integrated SoCMemory, standard8 GB DDR4-2666 SDRAM (1 x 8 GB)Video graphicsIntel® UHD GraphicsIntegratedHard drive1 TB PCIe® HDDOptical driveOptical drive not includedDisplay15.6\" diagonal HD SVA BrightView micro-edge WLED-backlit touch screen, 220 nits, 45% NTSC (1366 x 768)Wireless connectivityRealtek RTL8821CE 802.11b/g/n/ac (1x1) Wi-Fi® and Bluetooth® 4.2 ComboExpansion slots1 multi-format SD media card readerExternal ports1 USB 3.1 Gen 1 Type-C™ (Data Transfer Only, 5 Gb/s signaling rate); 2 USB 3.1 Gen 1 Type-A (Data Transfer Only); 1 AC smart pin; 1 HDMI 1.4b; 1 headphone/microphone combo Minimum dimensions (W x D x H)35.85 x 24.2 x 1.79 cmWeight1.69 kg Power supply type45 W Smart AC power adapter Battery type3-cell, 41 Wh Li-ionWebcam HP True Vision HD Camera with integrated dual array digital microphone Audio features Dual speakers Software\r\n', 'uploads/product_image/6584d1bbb542215.jpg', '2023-12-22 01:00:59'),
(37, '1', '2', '   DELL Vostro 3510', 'Laptops', '390000', '410000', '20', '1', 'SHARE THIS PRODUCT\r\n\r\n\r\nDELL Vostro 3510, 11th Gen, Intel Core I3, 8GB RAM 256GB SSD 15.6\" HD Win 11', 'uploads/product_image/6584d217d52fd16.jpg', '2023-12-22 01:02:31'),
(38, '1', '2', 'Hp Pavilion 15 X360', 'Laptops', '894000', '900000', '15', '1', 'SHARE THIS PRODUCT\r\n\r\n\r\nHp Pavilion 15 X360 11th Gen Intel Core™ I7,16GB RAM 1TB SSD, Backlit Keyboard, Wins 11\r\n\r\n\r\n', 'uploads/product_image/6584d5e4d0f3717.jpg', '2023-12-22 01:18:44'),
(39, '1', '2', 'Apple macbook pro', 'Laptops', '1235000', '1350000', '9', '1', 'Apple MacBook Pro 13.3\" - 256GB - 8cores - Space Grey - M2 - 2022\r\n\r\n\r\n\r\nWith the M2 chip get more out of your MacBook Pro 13inch 2022 as it begins the next generation of Apple silicon, with even more of the speed and power efficiency introduced by M1. So you can rip through workflows with a more powerful 8-core CPU. Create stunning graphics with a lightning‑fast 10‑core GPU. Work with more streams of 4K and 8K ProRes video with the high-performance media engine. And do it all at once with up to 24GB of faster-unified memory.\r\nUp to 1.4x faster than M1 model\r\nUp to 6x faster than the Intel-based model\r\nUp to 20 hours of battery life', 'uploads/product_image/6584d781b532d18.jpg', '2023-12-22 01:25:37'),
(40, '1', '2', 'Hp stream 11', 'Laptops', '100000', '120000', '12', '1', 'SHARE THIS PRODUCT\r\n\r\n\r\nHp Stream 11 Intel Celeron- Education Edition - 4GB RAM - 64GB HDD Windows 10', 'uploads/product_image/6584d83d98d0319.jpg', '2023-12-22 01:28:45'),
(41, '1', '3', ' Men\'s Sports Shoes ', 'Shoe', '10800', '12000', '8', '1', '2024 Men\'s Sports Shoes Casual Board Shoes - White\r\n\r\n\r\n\r\n\r\nWelcome to Nan SeeL official store Shop!!!\r\nTrendy black, thick bottom design, three-dimensional surround and comfortable wrapping, with the current very hot design elements, a must-have item for hipsters.\r\nThe strong wrapping upper is natural, the upper material is breathable and comfortable, and the anti-kick and wear-resistant upper shape makes the vision more conspicuous.\r\nThe sole adopts science-fict outsole, strong grip and stable performance. The texture is clear and non-slip, with strong shock resistance and resilience..', 'uploads/product_image/6584da843a34920.jpg', '2023-12-22 01:38:28'),
(42, '1', '3', 'Men\'s Sports Shoes ', 'Shoe', '15000', '16000', '1', '2', 'Men\'s Sports Shoes Casual Breathable Mesh Anti-skid Running Sneakers Black\r\n\r\n\r\n\r\n  [About Crossed price] refers to the commodity price under the scenario of self marketing activities. price does not include various preferential activities of the platform. It may be the sales guide price of the commodity or the displayed sales price of the commodity, which is not the original price, but for reference only.\r\n\r\n  [About Unmarked price] the sales price set by the merchant on the platform. The specific transaction price changes according to various preferential activities set by the merchant, and the final price shall be subject to the price on the order settlement page.\r\n', 'uploads/product_image/6584db8a759af21.jpg', '2023-12-22 01:42:50');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(200) NOT NULL,
  `first_name` varchar(225) NOT NULL,
  `last_name` varchar(1200) NOT NULL,
  `email` varchar(50) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `password` varchar(500) NOT NULL,
  `picture` varchar(250) NOT NULL,
  `user_typ` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `gender`, `password`, `picture`, `user_typ`) VALUES
(1, 'ayomide', 'otusanya', 'aayomideotusanya@gmail.com', 'male', 'www', '', 'admin'),
(2, 'ifeoluwa', 'timileyin', 'favsh@gmail.com', 'male', 'are', '', 'standard'),
(3, 'mide', 'martins', 'ade@gmail.com', 'male', 'eee', '', ''),
(4, 'oye', 'yinka', 'adetolu@gmail.com', 'male', 'iii', '', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart_tb`
--
ALTER TABLE `cart_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_tb`
--
ALTER TABLE `category_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_tb`
--
ALTER TABLE `product_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart_tb`
--
ALTER TABLE `cart_tb`
  MODIFY `id` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `category_tb`
--
ALTER TABLE `category_tb`
  MODIFY `id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `product_tb`
--
ALTER TABLE `product_tb`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
