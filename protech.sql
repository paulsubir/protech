-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 23, 2019 at 08:10 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `protech`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `userid` int(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`userid`, `password`) VALUES
(12345, 'password');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE IF NOT EXISTS `course` (
`cid` int(20) NOT NULL,
  `cname` varchar(50) NOT NULL,
  `fees` int(10) NOT NULL,
  `duration` varchar(20) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`cid`, `cname`, `fees`, `duration`) VALUES
(21, 'BCA', 50000, '3 Years'),
(22, 'MCA', 150000, '3 Years'),
(23, 'PGDCA', 12000, '1 Year'),
(24, 'DCA', 5200, '6 Months'),
(25, 'ADCA', 7000, '6 Months');

-- --------------------------------------------------------

--
-- Table structure for table `edu_quali`
--

CREATE TABLE IF NOT EXISTS `edu_quali` (
`eid` int(10) NOT NULL,
  `exam_passed` varchar(20) NOT NULL,
  `board` varchar(20) NOT NULL,
  `yearofpass` int(10) NOT NULL,
  `division` varchar(10) NOT NULL,
  `percentage` float NOT NULL,
  `stuid` int(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `edu_quali`
--

INSERT INTO `edu_quali` (`eid`, `exam_passed`, `board`, `yearofpass`, `division`, `percentage`, `stuid`) VALUES
(2, 'HSLCc', 'SONITPUR', 2011, '3st', 30.22, 1277),
(8, 'HS', 'SEBA', 2011, '1st', 78, 1278),
(10, 'EGW', 'EEW', 2017, '1st', 78, 1279);

-- --------------------------------------------------------

--
-- Table structure for table `enrolled_in`
--

CREATE TABLE IF NOT EXISTS `enrolled_in` (
`enrollid` int(20) NOT NULL,
  `s_id` int(20) NOT NULL,
  `co_id` int(20) NOT NULL,
  `edate` date DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `enrolled_in`
--

INSERT INTO `enrolled_in` (`enrollid`, `s_id`, `co_id`, `edate`) VALUES
(5, 1277, 21, '2010-03-16'),
(11, 1278, 23, NULL),
(13, 1279, 22, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE IF NOT EXISTS `faculty` (
`fid` int(20) NOT NULL,
  `ffname` varchar(20) NOT NULL,
  `fmname` varchar(20) NOT NULL,
  `flname` varchar(20) NOT NULL,
  `fdob` date NOT NULL,
  `fgender` varchar(20) NOT NULL,
  `flane` varchar(30) NOT NULL,
  `flandmark` varchar(30) NOT NULL,
  `fcity` varchar(20) NOT NULL,
  `fstate` varchar(20) NOT NULL,
  `fdist` varchar(20) NOT NULL,
  `fpin` int(10) NOT NULL,
  `fphnno` bigint(12) NOT NULL,
  `fmail` varchar(40) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`fid`, `ffname`, `fmname`, `flname`, `fdob`, `fgender`, `flane`, `flandmark`, `fcity`, `fstate`, `fdist`, `fpin`, `fphnno`, `fmail`) VALUES
(29, 'Subir', '', 'Paul', '2019-05-15', 'Male', 'Daccai Patty', 'Silchar', 'Silchar', 'Assam', 'Cachar', 788002, 2147483647, 'subir.paul151@gmail.com'),
(30, 'Dev', '', 'Kirtonia', '2019-05-01', 'Male', 'Silapathar, Assam.', 'Assam', 'Silapather', 'assam', 'Dibrugarh', 786654, 789456123, 'millionslove10@gmail.com'),
(31, 'SHIULY', '', 'ROY', '2019-05-07', 'Female', 'TRUNK ROAD', 'Silchar', 'Silchar', 'Assam', 'Cachar', 787059, 2147483647, 'millionslove@gmail.com'),
(32, 'Rajddep', 'Kumar', 'Paul', '2019-05-11', 'Male', 'qqq', 'wwww', 'eeee', 'ttttt', 'rrrrr', 776123, 8845634587, 'radjeep123@gmail.com'),
(33, 'Rak', 'jh', 'jh', '2019-05-08', 'Others', 'Silapathar,', 'Assam', 'Silapather', ' Assam.', ' Assam', 258369, 2147483647, 'abc@mail'),
(34, 'Roji', 'Das', 'Das', '2007-02-06', 'Male', 'Kashipur', 'Kashipur', 'Silchar', 'Assam', 'Cachar', 788009, 8486955678, 'roji@love');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE IF NOT EXISTS `images` (
`i_id` int(20) NOT NULL,
  `photo` varchar(220) NOT NULL,
  `sign` varchar(220) NOT NULL,
  `st_id` int(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`i_id`, `photo`, `sign`, `st_id`) VALUES
(3, 'upload/32392c9513b708191cdb1bdd38579df0--travel-ideas-travel-tips.jpg', 'NULL', 1277),
(5, 'upload/32392c9513b708191cdb1bdd38579df0--travel-ideas-travel-tips.jpg', 'NULL', 1278),
(6, 'upload/32392c9513b708191cdb1bdd38579df0--travel-ideas-travel-tips.jpg', 'NULL', 1279);

-- --------------------------------------------------------

--
-- Table structure for table `otp_expiry`
--

CREATE TABLE IF NOT EXISTS `otp_expiry` (
`id` int(11) NOT NULL,
  `otp` varchar(10) NOT NULL,
  `is_expired` int(11) NOT NULL,
  `create_at` datetime NOT NULL,
  `u_id` int(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `otp_expiry`
--

INSERT INTO `otp_expiry` (`id`, `otp`, `is_expired`, `create_at`, `u_id`) VALUES
(31, '459445', 1, '2019-05-11 15:19:04', 1278),
(32, '157980', 1, '2019-05-12 12:19:19', 1279);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `sid` int(20) NOT NULL,
  `fathers_name` varchar(30) DEFAULT NULL,
  `mothers_name` varchar(30) DEFAULT NULL,
  `dob` date NOT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `pno` bigint(12) DEFAULT NULL,
  `lane` varchar(30) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `dist` varchar(20) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  `pin` int(10) DEFAULT NULL,
  `po` varchar(30) DEFAULT NULL,
  `landmark` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`sid`, `fathers_name`, `mothers_name`, `dob`, `gender`, `pno`, `lane`, `city`, `dist`, `state`, `pin`, `po`, `landmark`) VALUES
(1277, 'Binud Boruah', 'Amit Dhar', '2019-05-07', 'Male', 8486955678, 'zzzz', 'sssss', 'ccccc', 'aSSAM', 7885465, 'popopo', 'lmlm'),
(1278, 'Modi', 'LOPdi', '2019-04-11', 'Male', 9876543210, 'Daccai Patty', 'Silchar', 'Cachar', 'Assam', 789456, 'popopo', 'Assam'),
(1279, 'AFAF', 'FWF', '2019-05-09', 'Male', 7002906539, 'deeedd', 'FWFEW', 'WEFWE', 'EWFW', 789456, 'FWEFW', 'ASSAM');

-- --------------------------------------------------------

--
-- Table structure for table `teaches`
--

CREATE TABLE IF NOT EXISTS `teaches` (
  `t_id` int(20) NOT NULL DEFAULT '0',
  `c_id` int(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teaches`
--

INSERT INTO `teaches` (`t_id`, `c_id`) VALUES
(29, 21),
(30, 21),
(30, 23);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`uid` int(20) NOT NULL,
  `sfname` varchar(20) NOT NULL,
  `smname` varchar(20) DEFAULT NULL,
  `slname` varchar(20) NOT NULL,
  `password` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=1280 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uid`, `sfname`, `smname`, `slname`, `password`, `email`) VALUES
(1277, 'Sandeep', 'hhhh', 'gogoi', '123456789', 'subirpaul541@gmail.com'),
(1278, 'Mahadev', 'Kumar', 'Kirtonia', '789456123', 'millionslove10@gmail.com'),
(1279, 'Ankit', '', 'Sen', 'ankitsen123', 'ankitsen@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
 ADD PRIMARY KEY (`userid`), ADD UNIQUE KEY `userid` (`userid`), ADD UNIQUE KEY `password` (`password`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
 ADD PRIMARY KEY (`cid`), ADD UNIQUE KEY `cid` (`cid`);

--
-- Indexes for table `edu_quali`
--
ALTER TABLE `edu_quali`
 ADD PRIMARY KEY (`eid`), ADD KEY `fk_edu` (`stuid`);

--
-- Indexes for table `enrolled_in`
--
ALTER TABLE `enrolled_in`
 ADD PRIMARY KEY (`enrollid`), ADD KEY `fk_enroll1` (`co_id`), ADD KEY `fk_enroll2` (`s_id`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
 ADD PRIMARY KEY (`fid`), ADD UNIQUE KEY `fid` (`fid`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
 ADD PRIMARY KEY (`i_id`), ADD KEY `fk_img` (`st_id`);

--
-- Indexes for table `otp_expiry`
--
ALTER TABLE `otp_expiry`
 ADD PRIMARY KEY (`id`), ADD KEY `fk_otp` (`u_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
 ADD PRIMARY KEY (`sid`), ADD UNIQUE KEY `sid` (`sid`);

--
-- Indexes for table `teaches`
--
ALTER TABLE `teaches`
 ADD PRIMARY KEY (`t_id`,`c_id`), ADD KEY `fk_course` (`c_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`uid`), ADD UNIQUE KEY `uid` (`uid`), ADD UNIQUE KEY `uid_2` (`uid`), ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
MODIFY `cid` int(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `edu_quali`
--
ALTER TABLE `edu_quali`
MODIFY `eid` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `enrolled_in`
--
ALTER TABLE `enrolled_in`
MODIFY `enrollid` int(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `faculty`
--
ALTER TABLE `faculty`
MODIFY `fid` int(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
MODIFY `i_id` int(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `otp_expiry`
--
ALTER TABLE `otp_expiry`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `uid` int(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1280;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `edu_quali`
--
ALTER TABLE `edu_quali`
ADD CONSTRAINT `fk_edu` FOREIGN KEY (`stuid`) REFERENCES `student` (`sid`);

--
-- Constraints for table `enrolled_in`
--
ALTER TABLE `enrolled_in`
ADD CONSTRAINT `fk_enroll1` FOREIGN KEY (`co_id`) REFERENCES `course` (`cid`),
ADD CONSTRAINT `fk_enroll2` FOREIGN KEY (`s_id`) REFERENCES `student` (`sid`);

--
-- Constraints for table `images`
--
ALTER TABLE `images`
ADD CONSTRAINT `fk_img` FOREIGN KEY (`st_id`) REFERENCES `student` (`sid`);

--
-- Constraints for table `otp_expiry`
--
ALTER TABLE `otp_expiry`
ADD CONSTRAINT `fk_otp` FOREIGN KEY (`u_id`) REFERENCES `users` (`uid`);

--
-- Constraints for table `student`
--
ALTER TABLE `student`
ADD CONSTRAINT `fk_student` FOREIGN KEY (`sid`) REFERENCES `users` (`uid`);

--
-- Constraints for table `teaches`
--
ALTER TABLE `teaches`
ADD CONSTRAINT `fk_course` FOREIGN KEY (`c_id`) REFERENCES `course` (`cid`),
ADD CONSTRAINT `fk_teacher` FOREIGN KEY (`t_id`) REFERENCES `faculty` (`fid`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
