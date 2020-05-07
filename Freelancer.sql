-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 17, 2019 at 03:27 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Freelancer`
--

-- --------------------------------------------------------

--
-- Table structure for table `bid`
--

CREATE TABLE `bid` (
  `idbid` int(6) NOT NULL,
  `proposalBiaya` int(12) DEFAULT NULL,
  `lamaKerja` int(4) DEFAULT NULL,
  `deskripsiFreelancer` text,
  `username` varchar(20) DEFAULT NULL,
  `idp` int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bid`
--

INSERT INTO `bid` (`idbid`, `proposalBiaya`, `lamaKerja`, `deskripsiFreelancer`, `username`, `idp`) VALUES
(1, 75000, 7, '', 'yofi', 1),
(2, 100000, 12, '', 'kiki', 2),
(3, 105000, 3, '', 'winny', 4),
(4, 75000, 5, '', 'winny', 2);

-- --------------------------------------------------------

--
-- Table structure for table `keahlian`
--

CREATE TABLE `keahlian` (
  `idk` varchar(4) NOT NULL,
  `namak` varchar(25) NOT NULL,
  `idkk` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `keahlian`
--

INSERT INTO `keahlian` (`idk`, `namak`, `idkk`) VALUES
('k001', 'PHP', 'kk01'),
('k002', 'HTML', 'kk01'),
('k003', 'JavaScript', 'kk01'),
('k004', 'MySQL', 'kk01'),
('k005', 'Java ', 'kk01'),
('k006', 'Mobile App Development', 'kk02'),
('k007', 'Android', 'kk02'),
('k008', 'Iphone', 'kk02'),
('k009', 'Ipad', 'kk02'),
('k010', 'Kotlin', 'kk02'),
('k011', 'Article Writing', 'kk03'),
('k012', 'Content Writing', 'kk03'),
('k013', 'Copywriting', 'kk03'),
('k014', 'Ghostwriting', 'kk03'),
('k015', 'Translation', 'kk03'),
('k016', 'Graphic Design', 'kk04'),
('k017', 'Website Design', 'kk04'),
('k018', 'Logo Design', 'kk04'),
('k019', 'Photoshop', 'kk04'),
('k020', 'Illustrator', 'kk04'),
('k021', 'Excel', 'kk05'),
('k022', 'Data Entry', 'kk05'),
('k023', 'Data Processing', 'kk05'),
('k024', 'Web Search', 'kk05'),
('k025', 'Virtual Assistant', 'kk05'),
('k026', 'Engineering', 'kk06'),
('k027', 'AutoCAD', 'kk06'),
('k028', 'Electrical Engineering', 'kk06'),
('k029', 'Matlab and Mathematica', 'kk06'),
('k030', 'Electronics', 'kk06'),
('k031', 'Product Design', 'kk07'),
('k032', 'Manufacturing', 'kk07'),
('k033', 'Supplier Sourcing', 'kk07'),
('k034', 'Product Sourcing', 'kk07'),
('k035', '3D Printing', 'kk07'),
('k036', 'Internet Marketing', 'kk08'),
('k037', 'Marketing', 'kk08'),
('k038', 'Social Media Marketing', 'kk08'),
('k039', 'Facebook Marketing', 'kk08'),
('k040', 'Sales', 'kk08'),
('k041', 'Delivery', 'kk09'),
('k042', 'Pickup', 'kk09'),
('k043', 'Logistics', 'kk09'),
('k044', 'Moving', 'kk09'),
('k045', 'Car Driving', 'kk09'),
('k046', 'Accounting', 'kk10'),
('k047', 'Finance', 'kk10'),
('k048', 'Business Analysis', 'kk10'),
('k049', 'Business Plans', 'kk10'),
('k050', 'Project Management', 'kk10'),
('k051', 'English(US)', 'kk11'),
('k052', 'English(UK)', 'kk11'),
('k053', 'Spanish', 'kk11'),
('k054', 'French', 'kk11'),
('k055', 'Japanese', 'kk11'),
('k056', 'General Labor', 'kk12'),
('k057', 'Painting', 'kk12'),
('k058', 'Drafting', 'kk12'),
('k059', 'Computer Support', 'kk12'),
('k060', 'Extensions & Additions', 'kk12');

-- --------------------------------------------------------

--
-- Table structure for table `keahlianMember`
--

CREATE TABLE `keahlianMember` (
  `username` varchar(20) DEFAULT NULL,
  `idk` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `keahlianMember`
--

INSERT INTO `keahlianMember` (`username`, `idk`) VALUES
('kiki', 'k001'),
('kiki', 'k002'),
('kiki', 'k003'),
('kiki', 'k004'),
('kiki', 'k005'),
('kiki', 'k022'),
('kiki', 'k023'),
('yofi', 'k002'),
('yofi', 'k005'),
('yofi', 'k006'),
('yofi', 'k007'),
('yofi', 'k041'),
('yofi', 'k042'),
('arya', 'k016'),
('arya', 'k017'),
('arya', 'k018'),
('arya', 'k021'),
('arya', 'k036'),
('indrawan', 'k001'),
('indrawan', 'k002'),
('indrawan', 'k003'),
('indrawan', 'k004'),
('indrawan', 'k005'),
('harapan', 'k016'),
('harapan', 'k017'),
('harapan', 'k018'),
('harapan', 'k019'),
('harapan', 'k020'),
('vanyof', 'k006'),
('vanyof', 'k007'),
('vanyof', 'k008'),
('vanyof', 'k009'),
('vanyof', 'k010'),
('winny', 'k016');

-- --------------------------------------------------------

--
-- Table structure for table `keahlianProject`
--

CREATE TABLE `keahlianProject` (
  `idp` int(6) DEFAULT NULL,
  `idk` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `keahlianProject`
--

INSERT INTO `keahlianProject` (`idp`, `idk`) VALUES
(1, 'k001'),
(1, 'k002'),
(1, 'k003'),
(1, 'k006'),
(2, 'k011'),
(2, 'k012'),
(2, 'k013'),
(3, 'k006'),
(3, 'k007'),
(3, 'k008'),
(4, 'k012');

-- --------------------------------------------------------

--
-- Table structure for table `kelompokKeahlian`
--

CREATE TABLE `kelompokKeahlian` (
  `idkk` varchar(4) NOT NULL,
  `namakk` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kelompokKeahlian`
--

INSERT INTO `kelompokKeahlian` (`idkk`, `namakk`) VALUES
('kk01', 'Website, IT & Software'),
('kk02', 'Mobile Phones & Computing'),
('kk03', 'Writing & Content'),
('kk04', 'Design, Media & Architecture'),
('kk05', 'Data Entry & Admin'),
('kk06', 'Engineering & Sciene'),
('kk07', 'Product Sourcing & Manufacturing'),
('kk08', 'Sales & Marketing'),
('kk09', 'Freight, Shipping & Tansportation'),
('kk10', 'Business, Accounting'),
('kk11', 'Translation & Language'),
('kk12', 'Local Jobs & Services');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `username` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `Nnama_member` varchar(30) DEFAULT NULL,
  `email` varchar(25) DEFAULT NULL,
  `noHp` varchar(13) DEFAULT NULL,
  `foto_profile` text,
  `profesi` varchar(20) DEFAULT NULL,
  `deskripsi_member` text,
  `Tgl_lahir` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`username`, `password`, `Nnama_member`, `email`, `noHp`, `foto_profile`, `profesi`, `deskripsi_member`, `Tgl_lahir`) VALUES
('admin', '21232f297a57a5a743894a0e4a801fc3', 'Administrator', 'kiki18ti@mahasiswa.pcr.ac', '082390962951', NULL, 'Mahasiswa', 'I am the administrator for this system', '1999-03-13'),
('arya', '5882985c8b1e2dce2763072d56a1d6e5', 'Arya Alde', 'arya18ti@mahasiswa.pcr.ac', NULL, NULL, 'Pengusaha', 'Has a degree from the university of Nairobi, Kenya. Has advanced knowledge in tutoring techniques, writing styles and blogging. I write academic and papers and blog posts.Having worked with other companies, I find it easy to handle most clients in Freelancer easy due to the one on one interaction. Be sure to get the best from me, at affordable rates.', '2000-12-31'),
('harapan', '58dfc596f429eae7bbec270f88c89cd9', 'Harapan Nusa', 'harapan@gmail.com', NULL, NULL, 'Designer', 'Has a degree from the university of Nairobi, Kenya. Has advanced knowledge in tutoring techniques, writing styles and blogging. I write academic and papers and blog posts.Having worked with other companies, I find it easy to handle most clients in Freelancer easy due to the one on one interaction. Be sure to get the best from me, at affordable rates.', '1997-05-03'),
('indrawan', 'd4295af3f125b9c067fc66ab50496eea', 'Indrawan Yofi', 'indrawan@gmail.com', NULL, NULL, 'Programmer', 'I am a student majoring in informatics. I have a good understanding in computers and software. I also have experience on programming using PHP, mysql, javascript, HTML, and css. I have Junior Database Programmer certificate and Cisco certificate.', '2000-12-12'),
('kiki', '0d61130a6dd5eea85c2c5facfe1c15a7', 'Kiki Harapan Hutapea', 'kiki18ti@mahasiswa.pcr.ac', '082390962951', 'WhatsApp Image 2018-12-03 at 08.15.49.jpeg', 'Mahasiswa', 'saya adalah seorang mahasiswa semester 1 program studi Teknik Informatikan Politeknik Caltex Riau', '1999-03-13'),
('vanyof', '8988116a4fbd8a79798b31543dcbaf84', 'Vanni Yof', 'vanyof@gmail.com', NULL, NULL, 'Professional mobile ', 'OUR SLOGAN - We love this word \"There is nothing we can not implement\", so that we are developers Thank you for considering my profile. We have have been developing iOS & Android apps and websites over 6 years.', '1993-01-02'),
('winny', '52a7c8047a12ec2594b94295f23d158b', 'Winny', 'winny@gmail.com', NULL, NULL, 'Graphics Designer', 'I am a fulltime graphics designer. I am a hardworking person. I am looking forward to work with you.', '2000-02-01'),
('yofi', '304dac82e2bf3caac36b67451cfe62f7', 'M. Yofi Indrawan', 'kiki18ti@mahasiswa.pcr.ac', '082390962951', 'LogoITSA2.png', 'Mahasiswa', 'Saya seorang mahasiswa Politeknik Caltex Riau generasi 18 program studi Teknik Informatika', '2000-06-22');

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `idp` int(6) NOT NULL,
  `judul_project` text,
  `descripsi_project` text,
  `budget_project_min` int(11) DEFAULT NULL,
  `budget_project_max` int(11) DEFAULT NULL,
  `idPembuat` varchar(20) DEFAULT NULL,
  `status` varchar(20) DEFAULT 'Available'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`idp`, `judul_project`, `descripsi_project`, `budget_project_min`, `budget_project_max`, `idPembuat`, `status`) VALUES
(1, 'Membuat dashboard performance', 'Saya membutuhkan expertise di power BI, karena dasboard saya menggunakan power bi, dan saya membutuhkan orang yang sanggup membuat databasenya hingga ke tampilan power bi nya.', 50000, 250000, 'kiki', 'Available'),
(2, 'Buatkan rangkuman dari buku phonology saya dengan bahasa sendiri dalam bentuk bahasa inggris', 'erangkum buku pelajaran dalam bahasa inggris menggunakan kata-kata/bahasa sendiri\r\n\r\nTugas di kumpulkan paling lambat tgl 12\r\n\r\nUntuk bukunya bisa langsung ketemuan daerah surabaya/sidoarjo.', 50000, 149998, 'yofi', 'Available'),
(3, 'I need to create android app', 'I need an Android app. I would like it designed and built. money minded ppl stay away... I need helping mind ppl... we can work together and share revenue....', 500000, 749999, 'kiki', 'Available'),
(4, 'personal Wikipedia page ', 'I need you to write some content for a Wikipedia page about my self, we would call and you would take notes on all that you need to create the page and get approved.', 100000, 250000, 'yofi', 'Available');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bid`
--
ALTER TABLE `bid`
  ADD PRIMARY KEY (`idbid`),
  ADD KEY `username` (`username`),
  ADD KEY `idp` (`idp`);

--
-- Indexes for table `keahlian`
--
ALTER TABLE `keahlian`
  ADD PRIMARY KEY (`idk`),
  ADD KEY `idkk` (`idkk`);

--
-- Indexes for table `keahlianMember`
--
ALTER TABLE `keahlianMember`
  ADD KEY `username` (`username`),
  ADD KEY `idk` (`idk`);

--
-- Indexes for table `keahlianProject`
--
ALTER TABLE `keahlianProject`
  ADD KEY `idp` (`idp`),
  ADD KEY `idk` (`idk`);

--
-- Indexes for table `kelompokKeahlian`
--
ALTER TABLE `kelompokKeahlian`
  ADD PRIMARY KEY (`idkk`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`idp`),
  ADD KEY `idPembuat` (`idPembuat`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bid`
--
ALTER TABLE `bid`
  MODIFY `idbid` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `idp` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bid`
--
ALTER TABLE `bid`
  ADD CONSTRAINT `bid_ibfk_1` FOREIGN KEY (`username`) REFERENCES `member` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `bid_ibfk_2` FOREIGN KEY (`idp`) REFERENCES `project` (`idp`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `keahlian`
--
ALTER TABLE `keahlian`
  ADD CONSTRAINT `keahlian_ibfk_1` FOREIGN KEY (`idkk`) REFERENCES `kelompokKeahlian` (`idkk`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `keahlianMember`
--
ALTER TABLE `keahlianMember`
  ADD CONSTRAINT `keahlianMember_ibfk_1` FOREIGN KEY (`username`) REFERENCES `member` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `keahlianMember_ibfk_2` FOREIGN KEY (`idk`) REFERENCES `keahlian` (`idk`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `keahlianProject`
--
ALTER TABLE `keahlianProject`
  ADD CONSTRAINT `keahlianProject_ibfk_1` FOREIGN KEY (`idp`) REFERENCES `project` (`idp`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `keahlianProject_ibfk_2` FOREIGN KEY (`idk`) REFERENCES `keahlian` (`idk`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `project`
--
ALTER TABLE `project`
  ADD CONSTRAINT `project_ibfk_1` FOREIGN KEY (`idPembuat`) REFERENCES `member` (`username`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
