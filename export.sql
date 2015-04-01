-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 01, 2015 at 03:07 AM
-- Server version: 5.6.21
-- PHP Version: 5.5.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `rdfest`
--

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE IF NOT EXISTS `payments` (
`id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `status` varchar(256) NOT NULL,
  `date_inserted` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `name`, `status`, `date_inserted`) VALUES
(17, 'Justin', 'paid', '2015-03-31 22:49:25'),
(18, 'Staci', 'paid', '2015-03-31 23:00:00'),
(19, 'Jess', 'unpaid', '2015-03-31 23:01:14'),
(20, 'Neil', 'deposit', '2015-03-31 23:01:20'),
(21, 'Lex', 'deposit', '2015-03-31 23:01:36'),
(22, 'Bets', 'deposit', '2015-03-31 23:01:50'),
(23, 'AJ', 'unpaid', '2015-03-31 23:01:55'),
(24, 'Heather', 'deposit', '2015-03-31 23:02:01'),
(25, 'Lisa', 'deposit', '2015-03-31 23:02:07'),
(26, 'Denny', 'deposit', '2015-03-31 23:02:11'),
(27, 'Julio', 'paid', '2015-03-31 23:02:21'),
(28, 'Keith', 'unpaid', '2015-03-31 23:02:38'),
(29, 'Katie Walker', 'deposit', '2015-03-31 23:02:47'),
(30, 'Justus', 'deposit', '2015-03-31 23:02:55'),
(31, 'Tina', 'deposit', '2015-03-31 23:03:02'),
(32, 'Amanda', 'unpaid', '2015-03-31 23:03:10'),
(33, 'Tyler', 'deposit', '2015-03-31 23:03:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
 ADD PRIMARY KEY (`id`), ADD KEY `name` (`name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=34;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
