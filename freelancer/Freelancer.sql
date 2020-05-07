DROP database Freelancer;
CREATE database Freelancer;
USE Freelancer;

CREATE TABLE `member` (
  `username` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `Nnama_member` varchar(30) ,
  `email` varchar(25) ,
  `noHp` varchar(13) ,
  `foto_profile` text ,
  `profesi` varchar(20) ,
  `deskripsi_member` text,
  `Tgl_lahir` date,
  PRIMARY KEY(`username`) 
);

CREATE TABLE `kelompokKeahlian` (
  `idkk` varchar(4) NOT NULL,
  `namakk` text,
  PRIMARY KEY(`idkk`)
); 


CREATE TABLE `keahlian` (
  `idk` varchar(4) ,
  `namak` varchar(25) NOT NULL,
  `idkk` varchar(20) ,
  PRIMARY KEY(`idk`),
  FOREIGN KEY(`idkk`) REFERENCES kelompokKeahlian(`idkk`) ON UPDATE CASCADE ON DELETE CASCADE
);


CREATE TABLE `project` (
  `idp` int(6) NOT NULL AUTO_INCREMENT,
  `judul_project` text,
  `descripsi_project` text,
  `budget_project_min` int,
  `budget_project_max` int,
  `idPembuat` varchar(20),
  `status` varchar(20) DEFAULT 'Available',
  PRIMARY KEY(`idp`),
  FOREIGN KEY(`idPembuat`) REFERENCES member(`username`)
    ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE `keahlianMember`(
  `username` varchar(20),
  `idk` varchar(4),
  FOREIGN KEY(`username`) REFERENCES member(`username`) 
    ON UPDATE CASCADE ON DELETE CASCADE,
  FOREIGN KEY(`idk`) REFERENCES keahlian(`idk`)
    ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE `keahlianProject`(
  `idp` int(6),
  `idk` varchar(4),
  FOREIGN KEY(`idp`) REFERENCES project(`idp`)
    ON UPDATE CASCADE ON DELETE CASCADE,
  FOREIGN KEY(`idk`) REFERENCES keahlian(`idk`)
    ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE `bid`(
  `idbid` int(6) AUTO_INCREMENT,
  `proposalBiaya` int(12),
  `lamaKerja` int(4),
  `deskripsiFreelancer` text,
  `username` varchar(20),
  `idp` int(6),
  PRIMARY KEY (`idbid`),
  FOREIGN KEY(`username`) REFERENCES member(`username`) 
    ON UPDATE CASCADE ON DELETE CASCADE,
  FOREIGN KEY(`idp`) REFERENCES project(`idp`)
    ON UPDATE CASCADE ON DELETE CASCADE
);

#Insert Data

INSERT INTO `member` (`username`, `password`, `Nnama_member`, `email`, `noHp`, `foto_profile`, `profesi`, `deskripsi_member`, `Tgl_lahir`) VALUES
('admin', '21232f297a57a5a743894a0e4a801fc3', 'Administrator', 'kiki18ti@mahasiswa.pcr.ac', '082390962951', NULL, 'Mahasiswa', 'I am the administrator for this system', '1999-03-13'),
('kiki', '0d61130a6dd5eea85c2c5facfe1c15a7', 'Kiki Harapan Hutapea', 'kiki18ti@mahasiswa.pcr.ac', '082390962951', 'WhatsApp Image 2018-12-03 at 08.15.49.jpeg', 'Mahasiswa', 'saya adalah seorang mahasiswa semester 1 program studi Teknik Informatikan Politeknik Caltex Riau', '1999-03-13'),
('yofi', '304dac82e2bf3caac36b67451cfe62f7', 'M. Yofi Indrawan', 'kiki18ti@mahasiswa.pcr.ac', '082390962951', 'LogoITSA2.png', 'Mahasiswa', 'Saya seorang mahasiswa Politeknik Caltex Riau generasi 18 program studi Teknik Informatika', '2000-06-22');

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


INSERT INTO `project` (`idp`, `judul_project`, `descripsi_project`, `budget_project_min`, `budget_project_max`, `idPembuat`, `status`) VALUES
(1, 'Membuat dashboard performance', 'Saya membutuhkan expertise di power BI, karena dasboard saya menggunakan power bi, dan saya membutuhkan orang yang sanggup membuat databasenya hingga ke tampilan power bi nya.', 50000, 250000, (select username from member where username = 'kiki'), 'Available'),
(2, 'Buatkan rangkuman dari buku phonology saya dengan bahasa sendiri dalam bentuk bahasa inggris', 'erangkum buku pelajaran dalam bahasa inggris menggunakan kata-kata/bahasa sendiri\r\n\r\nTugas di kumpulkan paling lambat tgl 12\r\n\r\nUntuk bukunya bisa langsung ketemuan daerah surabaya/sidoarjo.', 50000, 149998, (select username from member where username = 'yofi'), 'Available'),
(3, 'I need to create android app', 'I need an Android app. I would like it designed and built. money minded ppl stay away... I need helping mind ppl... we can work together and share revenue....', 500000, 749999, (select username from member where username = 'kiki'), 'Available'),
(4, 'personal Wikipedia page ', 'I need you to write some content for a Wikipedia page about my self, we would call and you would take notes on all that you need to create the page and get approved.', 100000, 250000, (select username from member where username = 'yofi'), 'Available');

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

INSERT INTO `keahlianMember` (`username`, `idk`) VALUES
((select username from member where username = 'kiki'), 'k001'),
((select username from member where username = 'kiki'), 'k002'),
((select username from member where username = 'kiki'), 'k003'),
((select username from member where username = 'kiki'), 'k004'),
((select username from member where username = 'kiki'), 'k005'),
((select username from member where username = 'kiki'), 'k022'),
((select username from member where username = 'kiki'), 'k023'),
((select username from member where username = 'yofi'), 'k002'),
((select username from member where username = 'yofi'), 'k005'),
((select username from member where username = 'yofi'), 'k006'),
((select username from member where username = 'yofi'), 'k007'),
((select username from member where username = 'yofi'), 'k041'),
((select username from member where username = 'yofi'), 'k042');

INSERT INTO `bid` (`idbid`, `proposalBiaya`, `lamaKerja`, `deskripsiFreelancer`, `username`, `idp`) VALUES
(1, 75000, 7, '', 'yofi', 1),
(2, 100000, 12, '', 'kiki', 2);