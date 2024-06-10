-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 10, 2024 at 01:58 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pw2024_tubes_233040022`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE `tb_admin` (
  `admin_id` int NOT NULL,
  `admin_name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `admin_telp` varchar(20) NOT NULL,
  `admin_email` varchar(50) NOT NULL,
  `admin_address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`admin_id`, `admin_name`, `username`, `password`, `admin_telp`, `admin_email`, `admin_address`) VALUES
(1, 'Deri', 'admin', '1378ef0fcd13e1bfa078cce2cc045d03', '+6281221042116', 'asepderi@gmail.com', 'Jl. Ciwaruga No.26, Parongpong, Bandung Barat');

-- --------------------------------------------------------

--
-- Table structure for table `tb_category`
--

CREATE TABLE `tb_category` (
  `category_id` int NOT NULL,
  `category_name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tb_category`
--

INSERT INTO `tb_category` (`category_id`, `category_name`) VALUES
(2, 'Obat'),
(3, 'Suplemen'),
(4, 'Nutrisi'),
(5, 'Herbal'),
(7, 'Mata');

-- --------------------------------------------------------

--
-- Table structure for table `tb_product`
--

CREATE TABLE `tb_product` (
  `product_id` int NOT NULL,
  `category_id` int NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` int NOT NULL,
  `product_description` text NOT NULL,
  `product_image` varchar(100) NOT NULL,
  `product_status` tinyint NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tb_product`
--

INSERT INTO `tb_product` (`product_id`, `category_id`, `product_name`, `product_price`, `product_description`, `product_image`, `product_status`, `date_created`) VALUES
(9, 2, 'AMLODIPINE BESILATE MEDIKON 10 MG STRIP 10 TABLET', 40000, '<p>PENGGUNAAN OBAT INI HARUS SESUAI PETUNJUK DOKTER.</p>\r\n\r\n<p>Digunakan untuk pengobatan hipertensi (tekanan darah tinggi), angina stabil kronik, pengobatan pasien yang pasti atau diduga menderita angina vasospastik (angina varian)</p>\r\n', 'produk1717484647.jpg', 1, '2024-06-04 00:04:07'),
(10, 2, 'SIMVASTATIN MUTIFA 10 MG TABLET', 1668, '<p>PENGGUNAAN OBAT INI HARUS SESUAI PETUNJUK DOKTER.</p>\r\n\r\n<p>Obat ini berfungsi untuk menurunkan kadar kolesterol darah serta untuk pencegahan risiko penyakit jantung dan pembuluh darah</p>\r\n', 'produk1717484788.jpg', 1, '2024-06-04 00:06:28'),
(11, 2, 'PARACETAMOL TRIMAN 500 MG BOX 100 KAPLET', 67357, '<p>Obat ini digunakan untuk meringankan rasa sakit seperti sakit gigi, sakit kepala, dan menurunkan demam</p>\r\n', 'produk1717484875.jpg', 1, '2024-06-04 00:07:55'),
(12, 2, 'PARAMEX SK STRIP 6 KAPLET', 1832, '<p>Paramex SK mengandung Paracetamol, Propyphenazone, Caffeine dan Dexchlorpheniramine Maleate yang efektif meredakan sakit kepala dan sakit gigi.</p>\r\n', 'produk1717484977.jpg', 1, '2024-06-04 00:09:37'),
(13, 2, 'PARAMEX NYERI OTOT STRIP 4 TABLET', 40000, '<p>Paramex Nyeri Otot digunakan untuk mengurangi rasa nyeri pada sakit gigi, sakit kepala, nyeri otot dan menurunkan demam</p>\r\n', 'produk1717485071.jpg', 1, '2024-06-04 00:11:11'),
(14, 2, 'CATAFLAM 25 MG TABLET', 16000, '<p>PENGGUNAAN OBAT INI HARUS SESUAI PETUNJUK DOKTER.</p>\r\n\r\n<p>Digunakan untuk terapi akut dan kronik pada rhematoid artritis, osteoartritis, dismenore, nyeri tulang belakang, paska operasi gigi dan nyeri lainnya</p>\r\n', 'produk1717485213.jpg', 1, '2024-06-04 00:13:33'),
(15, 2, 'TRAJENTA DUO 2.5 MG/1000 MG TABLET', 6000, '<p>PENGGUNAAN OBAT INI HARUS SESUAI PETUNJUK DOKTER.</p>\r\n\r\n<p>Obat ini untuk terapi tambahan terhadap diet dan olahraga untuk memperbaiki kontrol glukosa darah pada pasien dewasa dengan diabetes mellitus (DM) tipe 2 sebagai monoterapi, atau sebagai obat tambahan dari obat diabetes yang lain.</p>\r\n', 'produk1717485375.jpg', 1, '2024-06-04 00:16:15'),
(16, 3, 'STIMUNO ORIGINAL SIRUP 100 ML/IMUN TUBUH', 4785, '<p>Stimuno Sirup adalah penguat imun (imunomodulator) berbahan ekstrak Meniran (Phyllanthus niruri) untuk anak. Di Indonesia, Stimuno merupakan satu-satunya imunomodulator sudah mendapat Sertifikat Fitofarmaka dari BPOM dan Halal. Stimuno telah lulus uji coba klinis dapat meningkatkan fungsi sistem imun dan aman digunakan dalam jangka panjang.</p>\r\n', 'produk1717485482.jpg', 1, '2024-06-04 00:18:02'),
(17, 3, 'ENERVON C STRIP 4 TABLET', 4740, '<p>Suplemen untuk memelihara daya tahan tubuh</p>\r\n', 'produk1717485554.jpg', 1, '2024-06-04 00:19:14'),
(18, 3, 'FERLIN ORAL DROP 30 ML', 13500, '<p>Ferlin 30 ml&nbsp;digunakan untuk suplemen vitamin dan Fe (zat besi) untuk anak pada masa pertumbuhan dalam bentuk sirup drop</p>\r\n', 'produk1717485643.jpg', 1, '2024-06-04 00:20:43'),
(19, 3, 'BECOM-ZET STRIP 10 KAPLET', 33300, '<p>Untuk pengobatan kekurangan vitamin B kompleks, vitamin C, vitamin E &amp; Zn (seng)</p>\r\n', 'produk1717485811.jpg', 1, '2024-06-04 00:23:31'),
(20, 3, 'WELMOVE STRIP 5 KAPLET', 9000, '<p>Welmove adalah suplemen makanan untuk memelihara kesehatan fungi persendian</p>\r\n', 'produk1717485881.jpg', 1, '2024-06-04 00:24:41'),
(21, 3, 'VITACIMIN 500 MG 20 TABLET', 80833, '<p>Vitacimin merupakan tablet hisap yang dapat digunakan untuk Pencegahan dan mengatasi defisiensi vitamin C.</p>\r\n', 'produk1717485973.jpg', 1, '2024-06-04 00:26:13'),
(22, 3, 'OMEPROS BOX 60 KAPSUL', 11000, '<p>Omepros merupakan suplemen makanan yang membantu dalam proses pengurangan lemak dalam tubuh.</p>\r\n', 'produk1717486048.jpg', 1, '2024-06-04 00:27:28'),
(23, 4, 'PRODUGEN VITAFIRST RASA COKELAT 500 GRAM BOX', 95849, '<p>Produgen adalah susu tinggi kalsium, mengandung 100% Kalsium Susu yang diekstrak langsung dari Sapi Eropa dan Serat INULIN1. Kandungan inulin dapat membantu untuk meningkatkan kesehatan saluran cerna dan penyerapan kalsium. Produgen juga tinggi fosfor dan magnesium, tinggi Vitamin D, mengandung Glukosamin serta Rendah Lemak. CEGAH OSTEOPOROSIS DENGAN KONSUMSI KALSIUM, Salah satunya dengan mengkosumsi susu</p>\r\n', 'produk1717572142.jpg', 1, '2024-06-05 00:22:22'),
(24, 4, 'STIMUNO ORANGE BERRY SIRUP 100 ML', 49084, '<p>Stimuno Sirup adalah penguat imun (imunomodulator) berbahan ekstrak Meniran (Phyllanthus niruri) untuk anak. Di Indonesia, Stimuno merupakan satu-satunya imunomodulator sudah mendapat Sertifikat Fitofarmaka dari BPOM dan Halal. Stimuno telah lulus uji coba klinis dapat meningkatkan fungsi sistem imun dan aman digunakan dalam jangka panjang.</p>\r\n', 'produk1717572219.jpg', 1, '2024-06-05 00:23:39'),
(25, 4, 'ISOCAL RASA VANILA 400 GRAM BOX', 70359, '<p>Isocal adalah susu bubuk dengan sumber Protein dan Kalsium, mengandung Zink, Vitamin A, C, E, serta makro dan mikro nutrient untuk memenuhi kebutuhan nutrisi pasien pada masa perawatan dan masa pemulihan. Fitur Produk dan Manfaat :</p>\r\n\r\n<p>- Protein untuk pembentukan sel daya tahan tubuh dan membantu pulihnya kesehatan.</p>\r\n\r\n<p>- Kalsium agar terhindar dari Osteoporosis</p>\r\n\r\n<p>- Zink untuk membantu sistem imun tubuh tetap bekerja dengan baik.</p>\r\n\r\n<p>- Vitamin A untuk kesehatan kulit, penglihatan, pertumbuhan dan reproduksi</p>\r\n\r\n<p>- Vitamin C untuk membantu erbaikan jaringan di seluruh tubuh</p>\r\n\r\n<p>- Vitamin E sebagai antioksidan yang kuat untuk melindungi sel daya tahan tubuh dari kerusakan oksidatif</p>\r\n\r\n<p>- Omega 3 sebagai anti inflamasi dan mengurang risiko penyakit kardiovaskuler</p>\r\n\r\n<p>- Omega 6 yang berperan penting untuk fungsi kerja otak dan perkembangan tubuh yang normal</p>\r\n\r\n<p>- Memiliki rasa vanila</p>\r\n', 'produk1717572477.jpg', 1, '2024-06-05 00:27:57'),
(26, 4, 'BOOST OPTIMUM NESTLE RASA VANILA 400 G', 168214, '<p>BOOST&reg; Optimum dengan protein Whey, sumber serat pangan, tinggi Vitamin E, B6, dan B12 untuk membantu memenuhi kebutuhan nutrisi harian agar tetap aktif sepanjang usia. Sangat cocok digunakan untuk mengembalikan produktifitas saat masa pemulihan.</p>\r\n', 'produk1717572656.jpg', 1, '2024-06-05 00:30:56'),
(27, 4, 'MADU ENAK PURE HONEY 150 G', 21620, '<p>Madu enak merupakan madu yang daat digunakan untuk menjaga kesehatan dan daya tahan tubuh</p>\r\n', 'produk1717572759.jpg', 1, '2024-06-05 00:32:39'),
(28, 4, 'L-CAL BOX 30 KAPSUL', 99000, '<p>L-cal merupakan suplemen yang digunakan untuk memelihara kesehatan tulang</p>\r\n', 'produk1717572845.jpg', 1, '2024-06-05 00:34:05'),
(29, 4, 'MADU ENAK STICK ORIGINAL 15 G BOX 20 SACHET', 15986, '<p>Madu enak merupakan madu yang daat digunakan untuk menjaga kesehatan dan daya tahan tubuh</p>\r\n', 'produk1717572986.jpg', 1, '2024-06-05 00:36:26'),
(30, 5, 'STIMUNO GRAPE SIRUP 60 ML / IMUN TUBUH', 35287, '<p>Stimuno Sirup adalah penguat imun (imunomodulator) berbahan ekstrak Meniran (Phyllanthus niruri) untuk anak. Di Indonesia, Stimuno merupakan satu-satunya imunomodulator sudah mendapat Sertifikat Fitofarmaka dari BPOM dan Halal. Stimuno telah lulus uji coba klinis dapat meningkatkan fungsi sistem imun dan aman digunakan dalam jangka panjang.</p>\r\n', 'produk1717573225.jpg', 1, '2024-06-05 00:40:25'),
(31, 5, 'HERBAKOF SIRUP 100 ML / OBAT BATUK HERBAL', 22711, '<p>Herbakof adalah salah satu Obat Modern Asli Indonesia (OMAI) yang juga dikenal sebagai Obat Batuk Herbal yang diproses secara modern. Herbakof bekerja cepat untuk meredakan batuk. Penggunaannya aman selama dikonsumsi sesuai anjuran dan dapat diminum kapan saja saat batuk karena tidak menyebabkan kantuk. Herbakof mengandung fraksi bioaktif bernama Reconyl. Reconyl adalah kombinasi fraksi spesifik dari 4 tanaman herbal Indonesia yang diperoleh dengan teknologi modern bernama Advance Fractionation Technology. Empat tanaman herbal itu adalah Daun Legundi, Rimpang Jahe, Daun Saga, dan Buah Mahkota dewa yang diyakini dapat mengatasi batuk. Herbakof diproduksi dengan Sistem Jaminan Halal unggulan dan telah mendapat sertifikat HALAL.</p>\r\n', 'produk1717573392.jpg', 1, '2024-06-05 00:43:12'),
(34, 7, 'OPTIMAX PLUS SIRUP 100 ML', 89000, '<p>Suplemen untuk memelihara kesehatan fugnsi mata dan membantu memperbaiki mikrosirkulasi retina</p>\r\n', 'produk1717996986.jpg', 1, '2024-06-09 22:23:06'),
(35, 7, 'CENDO LYTERS TETES MATA 15 ML', 37347, '<p>Cendo lyters merupakan obat tetes mata yang digunakan Untuk membasahi dan menyejukkan mata kering akibat kurangnya cairan mata, iritasi, penggunaan lensa kontak, dan gangguan penglihatan</p>\r\n', 'produk1717997107.jpg', 1, '2024-06-09 22:25:07'),
(36, 7, 'AKILEN 5 ML EAR DROP', 60000, '<p>PENGGUNAAN OBAT INI HARUS SESUAI PETUNJUK DOKTER. Akilen digunakan untuk mengobati infeksi saluran kemih (ISK), infeksi berat dan terkomplikasi, infeksi saluran nafas, uretritis GO dan servisitis tanpa komplikasi, uretritis non GO, infeksi kulit dan jaringan lunak, infeksi kandungan serta enteritis bakterial karena bakteri yang peka terhadap ofloxacin</p>\r\n', 'produk1718026742.jpg', 1, '2024-06-10 06:39:02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tb_category`
--
ALTER TABLE `tb_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tb_product`
--
ALTER TABLE `tb_product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `category_id` (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `admin_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_category`
--
ALTER TABLE `tb_category`
  MODIFY `category_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tb_product`
--
ALTER TABLE `tb_product`
  MODIFY `product_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
