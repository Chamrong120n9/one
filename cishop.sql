-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 24, 2016 at 04:39 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cishop`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE IF NOT EXISTS `blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_url` varchar(255) NOT NULL,
  `page_title` varchar(255) NOT NULL,
  `page_keywords` text NOT NULL,
  `page_description` text NOT NULL,
  `page_content` text NOT NULL,
  `date_published` int(11) NOT NULL,
  `author` varchar(65) NOT NULL,
  `picture` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `page_url`, `page_title`, `page_keywords`, `page_description`, `page_content`, `date_published`, `author`, `picture`) VALUES
(6, 'First-Blog-Entry', 'First Blog Entry', '                                                      my blog view website                                                                       ', '                                                               there my blog                                                                         ', '                                                               view web blog                                                        ', 1470286800, '', 'JZAMYQ3368vthHXF.jpg'),
(7, 'sadasd', 'sadasd', '                   asdasdsa                                ', '                   dsadsadasd                                ', '                  dasdsadsa                ', 1470373200, '', '3YR3UVrtecx8Avxw.jpg'),
(10, 'sadad', 'sadad', '                             asdasdasd                                       ', '                              sdasdasda                                      ', '                           asdasdasdasdoiplk,m,uygjgnhnhg                        ', 1470286800, '', 'KlkJrZTKQvmldFF5.jpg'),
(11, 'asdasd', 'asdasd', '                    daasd                               ', '                     dasd                              ', '                  ds                ', 1470286800, '', 'qTgqqlgNqQr2BhHE.jpg'),
(12, 'zfdsf', 'zfdsf', '           fsafsad                       ', '           sdfsdf                       ', '         sdfsdf        ', 1470373200, '', 'Wr95kH2qhXzBqS9a.jpg'),
(13, 'sadasdasd', 'sadasdasd', '  sddfhyuoiumj               ', '  hgkapofpoDJXSAOIWQIDHKNCLKX               ', 's,aooeripokcsmzpiwejknlxknoiisudwquiepowqis-903iopekad', 1470373200, '', '55hAhD7NlpSaL5T6.jpg'),
(14, 'udueihdae', 'udueihdae', 'wqepoefoior                 ', 'ddiqkmndokkappepkk                 ', 'dapoipoqpkw,;,;skaldjiuduiasjd', 1470373200, 'Rong', 'HT3ALzD82lyD3R7D.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE IF NOT EXISTS `ci_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL,
  KEY `ci_sessions_timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('a77ab92379dd2a9f44ad693a9a1da5cef7db192d', '::1', 1471756177, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437313735363137373b796f75725f6e616d657c733a353a224461766964223b),
('11ae1115394cbb72052d1d5c745a15076e843d0c', '::1', 1471757115, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437313735363932353b796f75725f6e616d657c733a353a224461766964223b),
('ebbeae5b0fe03922e0eda0133e39ed56e530ad64', '::1', 1471761548, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437313736313439323b),
('b3c77f4ad0e99ad8e81f0d111f2e757b37551f6e', '::1', 1471762515, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437313736323530373b),
('9fb5dc6b8bcf626f2cba75c46b748b5c93a143ef', '::1', 1471763219, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437313736333231383b757365725f69647c733a313a2237223b),
('7b472c2e96709713d21a21a657ffec42a822439e', '::1', 1471763687, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437313736333634343b),
('e87520a8cff5a02e8c05f10b8447e1c67f95ceac', '::1', 1471765323, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437313736353135333b),
('09c74a25e578c05e767cd0c0d1bc0b6b53a28872', '::1', 1471765614, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437313736353438353b),
('0ec6cf986c1ee88d4c30f47462380bd80b48efe4', '::1', 1471785892, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437313738353730383b),
('060a305614a3cffcb58d2ac8a58e63af461888a4', '::1', 1471786273, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437313738363032363b),
('954c8501f22b4c582faded182ebdcec04e6cfe4d', '::1', 1471786623, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437313738363536363b),
('39505d19e785bdba3cd5c6514b2ce8a309345776', '::1', 1471786927, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437313738363838363b),
('6e24fe9ac387bc99d1980306153ce8d741c12795', '::1', 1471787693, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437313738373339333b),
('f6d9e75e9e41dc9d75e24c9811fff504e757cbff', '::1', 1471787705, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437313738373730353b),
('daa0c16a9fe484dcebc0a5f3a8f1230f993e5c90', '::1', 1471866477, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437313836363231393b),
('4406dc594330f9b90f1941bd5c69e32de086704e', '::1', 1471866773, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437313836363734313b),
('73d31c3d8726a481e6d9d9c1efb8cbd50d6dc8f3', '::1', 1471867929, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437313836373730353b),
('63e2c83803246451cd7113093e6a9de56b0c0f85', '::1', 1471868346, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437313836383037303b),
('88e2d2ec4450b06b7f9837d14c660ab65869caf3', '::1', 1471869319, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437313836393031393b),
('e07d7e578a8e5e2fdcba9e72837dde7e4670f8cb', '::1', 1471870462, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437313837303137333b),
('2226fbca1859ea1f8b65f07e74a222a5b5e81edd', '::1', 1471870842, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437313837303735303b),
('07929d8ae9ede3a01c7bccf45a648b5f1cb03a4f', '::1', 1471957757, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437313935373537313b),
('66aa12caf8741d9793d357a875740c8bc76f0789', '::1', 1471958162, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437313935373934393b),
('9f86f49d9e5e3f9b177dad21870b26ce292f898a', '::1', 1471958591, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437313935383338323b),
('2ca3f911328ce44bd7e500c42e60860f9e52a56b', '::1', 1471958899, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437313935383731303b),
('c1bf4744f82ccb37a845b47365a5aa8b6ca1930d', '::1', 1472044775, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437323034343438323b),
('52111b7e8c73ca57a2a81dadf05ddfd89e741eb6', '::1', 1472045099, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437323034343838383b),
('4d9eb5ce04fee58beac6504b75b5e8162e3ece9d', '::1', 1472045901, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437323034353832353b),
('7bae0a32202c0748502f2a67b5b75c6e238acc8a', '::1', 1472046831, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437323034363831393b),
('6a30bc71167a2dfa45eda9fea1efaee993a21e22', '::1', 1472048082, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437323034373936303b757365725f69647c733a313a2237223b),
('42cf366f28a623fd30841fd4ad6f6a9ffa0b1eef', '::1', 1472048946, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437323034383634383b757365725f69647c733a313a2237223b),
('632f6371abffd5d29403fb51f988557fd92b07cd', '::1', 1472048971, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437323034383935333b757365725f69647c733a313a2237223b69735f61646d696e7c733a313a2231223b),
('a6be2d7d6b175462be9a83e16b0fff716b662d36', '::1', 1472049464, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437323034393434313b757365725f69647c733a313a2237223b);

-- --------------------------------------------------------

--
-- Table structure for table `enquiries`
--

CREATE TABLE IF NOT EXISTS `enquiries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_created` int(11) NOT NULL,
  `sent_by` int(11) NOT NULL,
  `sent_to` int(11) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `opened` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `enquiries`
--

INSERT INTO `enquiries` (`id`, `date_created`, `sent_by`, `sent_to`, `subject`, `message`, `opened`) VALUES
(1, 1472959168, 6, 0, 'here is subject line. i need to help.', 'i am new customer and i need to help.', 1),
(2, 1442959168, 6, 0, 'Another subject line here', 'Here is the second message. it was actually sent before the first one.', 1),
(3, 1471870794, 0, 7, 'What i know', 'please explain me how to create web dynamic', 0);

-- --------------------------------------------------------

--
-- Table structure for table `homepage_blocks`
--

CREATE TABLE IF NOT EXISTS `homepage_blocks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `block_title` varchar(255) NOT NULL,
  `priority` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `homepage_blocks`
--

INSERT INTO `homepage_blocks` (`id`, `block_title`, `priority`) VALUES
(1, 'iPhone Special ', 2),
(2, 'Special  Promotion', 1),
(5, 'Special  Promotion Charge', 0);

-- --------------------------------------------------------

--
-- Table structure for table `homepage_offers`
--

CREATE TABLE IF NOT EXISTS `homepage_offers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `block_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=27 ;

--
-- Dumping data for table `homepage_offers`
--

INSERT INTO `homepage_offers` (`id`, `block_id`, `item_id`) VALUES
(2, 2, 28),
(3, 2, 29),
(4, 2, 30),
(5, 2, 31),
(7, 1, 18),
(8, 1, 19),
(9, 1, 20),
(11, 1, 15),
(23, 5, 31),
(24, 5, 33),
(25, 5, 34),
(26, 5, 34);

-- --------------------------------------------------------

--
-- Table structure for table `site_cookies`
--

CREATE TABLE IF NOT EXISTS `site_cookies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cookie_code` varchar(128) NOT NULL,
  `user_id` int(11) NOT NULL,
  `expiry_date` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `site_cookies`
--

INSERT INTO `site_cookies` (`id`, `cookie_code`, `user_id`, `expiry_date`) VALUES
(1, 'RmF5t57j5raAh8apbqYGmYWYV5TbtqbN5bCMm8BCnsXgKT2bzECkrt8erynN9BGxERXnB3uP4m9PBxeQmMDSSQGmhTehbFB8CrEQfQKS89FfQ4QnvM3gH5Dnx7uEACTB', 88, 1472959113),
(2, 'QMHTDvhjQHRCZaLnf4Ru98tsMArdNa8ff3mxJYuykbmfFmj6QKc5p4kDuvBLDMkU2an5bk4FdwdJHsdGNjTx3QAGxgacSjVsaaLtZzYGsJs79pvb9KYR4wdDXV6vuGUR', 88, 1472959168),
(3, 'uAWmq4k3bg75KQYNBQc7HTrjx4We4XsfHF9cvNKqSswJNb8xL7NCKQjmbrMA3v2EN9cptW4asZMMJU9CPLjwDa3NFbwlUrusMY9YhtehTWWdx237JMFMqRDC4j7sDHNB', 88, 1472959243),
(4, 'nxcebJQddXw6YluHrqqq2lx4KDAW4tMXVpQsQvXeJqTE7cPzUsulCh7Kcgpc8wzwmBm4nEXC9e8A7r3NhSsB6CxQxh5Q5WesEdK2MbQpqreUZ48rwEggskRhKEBQTKKK', 88, 1472959509),
(5, 'QcZm56AxyZdBK46qDPXjFr38Qr3dAWaqTy96emd4zW5EnrWLCnyHLT7lMzlXavstPhabgZHWugN7TaEwvhZvKJ3UC5v6ArATCp4Ec36dfXqVghfCezlEBWRRkXxAUJCG', 88, 1472959685),
(8, '5gYBHQC8luqt93leTTPuLQSRvfXqlY4KVkCXycBEUSvVdfgmbDp44TNzwm24PSX5EM8HgVuAmEuL9Q7SmLQYclBFqPV6c9JLgAvQR3dSFPkYXMPKqg9he7habFHusMnQ', 88, 1472960364);

-- --------------------------------------------------------

--
-- Table structure for table `store_accounts`
--

CREATE TABLE IF NOT EXISTS `store_accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(65) NOT NULL,
  `firstname` varchar(120) NOT NULL,
  `lastname` varchar(65) NOT NULL,
  `company` varchar(150) NOT NULL,
  `address1` varchar(255) NOT NULL,
  `address2` varchar(255) NOT NULL,
  `town` varchar(50) NOT NULL,
  `country` varchar(40) NOT NULL,
  `postcode` varchar(15) NOT NULL,
  `telnum` varchar(30) NOT NULL,
  `email` varchar(65) NOT NULL,
  `date_made` int(11) NOT NULL,
  `pword` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `store_accounts`
--

INSERT INTO `store_accounts` (`id`, `username`, `firstname`, `lastname`, `company`, `address1`, `address2`, `town`, `country`, `postcode`, `telnum`, `email`, `date_made`, `pword`) VALUES
(6, '120N9', 'Sin', 'Chamrong', 'Techno Khmer', 'Trang Village', 'Siem reap', 'Siem reap', 'Cabodia', '00855', '069539945', '5inchamron9@gmail.com', 1469453562, '$2y$11$xp2vFPIZgJ1AKfdYfAXr1OkDtFqJW8tOMsuL.8tzjkCNaR.FdOu8O'),
(7, 'samosa', 'samosa', 'lyu', '', '', '', '', '', '', '', 'samosalyu7@gmail.com', 0, '$2y$11$Hz0oRXIhQhL5YiNNs4efv.m/DITYeN7XVBiy12UjyqwPv.UmNoTyS');

-- --------------------------------------------------------

--
-- Table structure for table `store_categories`
--

CREATE TABLE IF NOT EXISTS `store_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_title` varchar(255) NOT NULL,
  `cat_url` varchar(255) NOT NULL,
  `parent_cat_id` int(11) NOT NULL,
  `priority` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `store_categories`
--

INSERT INTO `store_categories` (`id`, `cat_title`, `cat_url`, `parent_cat_id`, `priority`) VALUES
(6, 'iWatch', 'iWatch', 0, 3),
(7, 'iPhone', 'iPhone', 0, 1),
(8, 'iPhone 6', 'iPhone-6', 7, 2),
(9, 'iPhone 6 Plus', 'iPhone-6-Plus', 7, 4),
(10, 'iPhone 6S', 'iPhone-6S', 7, 3),
(11, 'Samsung', 'Samsung', 0, 2),
(12, 'JBL', 'JBL', 0, 4),
(13, 'iPhone 6S Plus', 'iPhone-6S-Plus', 7, 5),
(14, 'Samsung J3', 'Samsung-J3', 11, 0),
(15, 'Galaxy Note5', 'Galaxy-Note5', 11, 0),
(16, 'Samsung J5', 'Samsung-J5', 11, 0),
(17, 'iPhone SE', 'iPhone-SE', 7, 1),
(18, ' JBL Bluetooth', 'JBL-Bluetooth', 12, 0);

-- --------------------------------------------------------

--
-- Table structure for table `store_cat_assign`
--

CREATE TABLE IF NOT EXISTS `store_cat_assign` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=35 ;

--
-- Dumping data for table `store_cat_assign`
--

INSERT INTO `store_cat_assign` (`id`, `cat_id`, `item_id`) VALUES
(4, 9, 15),
(5, 8, 18),
(6, 10, 19),
(12, 17, 20),
(13, 13, 21),
(14, 18, 22),
(15, 18, 23),
(16, 18, 24),
(17, 18, 25),
(18, 18, 26),
(19, 18, 27),
(20, 18, 28),
(21, 18, 29),
(22, 18, 30),
(24, 18, 31),
(25, 18, 32),
(26, 18, 33),
(27, 18, 34),
(28, 18, 35),
(29, 18, 36),
(30, 18, 37),
(31, 18, 38),
(32, 18, 39),
(33, 18, 40),
(34, 18, 41);

-- --------------------------------------------------------

--
-- Table structure for table `store_items`
--

CREATE TABLE IF NOT EXISTS `store_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_title` varchar(255) NOT NULL,
  `item_url` varchar(255) NOT NULL,
  `item_price` decimal(7,2) NOT NULL,
  `item_description` text NOT NULL,
  `big_pic` varchar(255) NOT NULL,
  `small_pic` varchar(255) NOT NULL,
  `was_price` decimal(7,2) NOT NULL,
  `status` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=42 ;

--
-- Dumping data for table `store_items`
--

INSERT INTO `store_items` (`id`, `item_title`, `item_url`, `item_price`, `item_description`, `big_pic`, `small_pic`, `was_price`, `status`) VALUES
(15, 'iPhone 6 plus', 'iPhone-6-plus', '780.00', '         <b xss="removed"><font size="5">The Next generation of Multi-Touch</font></b><div xss="removed"><span xss="removed">The original iPhone introduced the world to Multi-Touch, forever changing the way people experience technology. With 3D Touch, you can do things that were never possible before. It senses how deeply you press the display, letting you do all kinds of essential things more quickly and simply. And it gives you real-time feedback in the form of subtle taps from the all-new Taptic Engine.</span></div><div xss="removed"><h2 class="overview-headline" xss="removed"><font size="5">Smile for the world’s most popular camera</font></h2><div><span xss="removed">The 12-megapixel iSight camera captures sharp, detailed photos. It takes brilliant 4K video, up to four times the resolution of 1080p HD video. iPhone 6s also takes selfies worthy of a self-portrait with the new 5-megapixel FaceTime HD camera. And it introduces Live Photos, a new way to relive your favorite memories. It captures the moments just before and after your picture and sets it in motion with just the press of a finger.</span></div></div>        ', 'iphone_6plusdfjopwe.jpg', 'iphone_6plusdfjopwe.jpg', '790.00', 1),
(18, 'iPhone 6', 'iPhone-6', '450.00', '         <b xss="removed"><font size="5">The Next generation of Multi-Touch</font></b><div xss="removed"><span xss="removed">The original iPhone introduced the world to Multi-Touch, forever changing the way people experience technology. With 3D Touch, you can do things that were never possible before. It senses how deeply you press the display, letting you do all kinds of essential things more quickly and simply. And it gives you real-time feedback in the form of subtle taps from the all-new Taptic Engine.</span></div><div xss="removed"><h2 class="overview-headline" xss="removed"><font size="5">Smile for the world’s most popular camera</font></h2><div xss="removed"><span xss="removed">The 12-megapixel iSight camera captures sharp, detailed photos. It takes brilliant 4K video, up to four times the resolution of 1080p HD video. iPhone 6s also takes selfies worthy of a self-portrait with the new 5-megapixel FaceTime HD camera. And it introduces Live Photos, a new way to relive your favorite memories. It captures the moments just before and after your picture and sets it in motion with just the press of a finger.</span></div></div>        ', 'iphone_6sadas0w-.jpg', 'iphone_6sadas0w-.jpg', '440.00', 0),
(19, 'iPhone 6S', 'iPhone-6S', '450.00', '         <b xss="removed"><font size="5">The Next generation of Multi-Touch</font></b><div xss="removed"><span xss="removed">The original iPhone introduced the world to Multi-Touch, forever changing the way people experience technology. With 3D Touch, you can do things that were never possible before. It senses how deeply you press the display, letting you do all kinds of essential things more quickly and simply. And it gives you real-time feedback in the form of subtle taps from the all-new Taptic Engine.</span></div><div xss="removed"><h2 class="overview-headline" xss="removed"><font size="5">Smile for the world’s most popular camera</font></h2><div><span xss="removed">The 12-megapixel iSight camera captures sharp, detailed photos. It takes brilliant 4K video, up to four times the resolution of 1080p HD video. iPhone 6s also takes selfies worthy of a self-portrait with the new 5-megapixel FaceTime HD camera. And it introduces Live Photos, a new way to relive your favorite memories. It captures the moments just before and after your picture and sets it in motion with just the press of a finger.</span></div></div>        ', 'iphone_6slkdlkjflkzK.jpg', 'iphone_6slkdlkjflkzK.jpg', '440.00', 1),
(20, 'iPhone SE', 'iPhone-SE', '500.00', '         <b><font size="5">The Next generation of Multi-Touch</font></b><div xss="removed"><span xss="removed">The original iPhone introduced the world to Multi-Touch, forever changing the way people experience technology. With 3D Touch, you can do things that were never possible before. It senses how deeply you press the display, letting you do all kinds of essential things more quickly and simply. And it gives you real-time feedback in the form of subtle taps from the all-new Taptic Engine.</span></div><div><h2 class="overview-headline" xss="removed"><font size="5">Smile for the world’s most popular camera</font></h2><div><span xss="removed">The 12-megapixel iSight camera captures sharp, detailed photos. It takes brilliant 4K video, up to four times the resolution of 1080p HD video. iPhone 6s also takes selfies worthy of a self-portrait with the new 5-megapixel FaceTime HD camera. And it introduces Live Photos, a new way to relive your favorite memories. It captures the moments just before and after your picture and sets it in motion with just the press of a finger.</span></div></div>        ', 'iphonese-rsgld-3angles-lockscreen-pr_us-en-print.jpg', 'iphonese-rsgld-3angles-lockscreen-pr_us-en-print.jpg', '0.00', 1),
(21, 'iPhone 6S Plus', 'iPhone-6S-Plus', '600.00', '<b xss=removed><font size="5">The Next generation of Multi-Touch</font></b><div xss="removed" xss=removed><span xss="removed">The original iPhone introduced the world to Multi-Touch, forever changing the way people experience technology. With 3D Touch, you can do things that were never possible before. It senses how deeply you press the display, letting you do all kinds of essential things more quickly and simply. And it gives you real-time feedback in the form of subtle taps from the all-new Taptic Engine.</span></div><div xss=removed><h2 class="overview-headline" xss="removed"><font size="5">Smile for the world’s most popular camera</font></h2><div><span xss="removed">The 12-megapixel iSight camera captures sharp, detailed photos. It takes brilliant 4K video, up to four times the resolution of 1080p HD video. iPhone 6s also takes selfies worthy of a self-portrait with the new 5-megapixel FaceTime HD camera. And it introduces Live Photos, a new way to relive your favorite memories. It captures the moments just before and after your picture and sets it in motion with just the press of a finger.</span></div></div>                 ', 'iphone6s_plusasdoiaisdj.jpg', 'iphone6s_plusasdoiaisdj.jpg', '0.00', 1),
(22, 'JBL Charge 3', 'JBL-Charge-3', '149.95', '<b xss=removed><font size="6">JBL</font></b>                 <div><span xss=removed>JBL</span><span xss=removed> is an </span><a href="https://en.wikipedia.org/wiki/United_States" title="United States" xss=removed>American</a><span xss=removed> audio electronics company founded in 1946 by </span><a href="https://en.wikipedia.org/wiki/James_Bullough_Lansing" title="James Bullough Lansing" xss=removed>James Bullough Lansing</a><span xss=removed>. Their primary products are </span><a href="https://en.wikipedia.org/wiki/Loudspeaker" title="Loudspeaker" xss=removed>loudspeakers</a><span xss=removed> and associated </span><a href="https://en.wikipedia.org/wiki/Electronics" title="Electronics" xss=removed>electronics</a><span xss=removed>. There are two independent divisions within the company — JBL Consumer and JBL Professional. The former produces audio equipment for the consumer home market while the latter produces professional equipment for the studio, installed sound, tour sound, portable sound (production and DJ), and cinema markets.</span></div>', 'JBL-Charge-3-watersplash-Black_dvHAMaster.jpg', 'JBL-Charge-3-watersplash-Black_dvHAMaster.jpg', '0.00', 1),
(23, 'JBL Clip 2', 'JBL-Clip-2', '49.95', '<b xss="removed" xss=removed><font size="6">JBL</font></b><span xss=removed></span><div xss=removed><span xss="removed">JBL</span><span xss="removed"> is an </span><a href="https://en.wikipedia.org/wiki/United_States" title="United States" xss="removed">American</a><span xss="removed"> audio electronics company founded in 1946 by </span><a href="https://en.wikipedia.org/wiki/James_Bullough_Lansing" title="James Bullough Lansing" xss="removed">James Bullough Lansing</a><span xss="removed">. Their primary products are </span><a href="https://en.wikipedia.org/wiki/Loudspeaker" title="Loudspeaker" xss="removed">loudspeakers</a><span xss="removed"> and associated </span><a href="https://en.wikipedia.org/wiki/Electronics" title="Electronics" xss="removed">electronics</a><span xss="removed">. There are two independent divisions within the company — JBL Consumer and JBL Professional. The former produces audio equipment for the consumer home market while the latter produces professional equipment for the studio, installed sound, tour sound, portable sound (production and DJ), and cinema markets.</span></div>                 ', 'JBL_Clip2_Black_Hero_x1-1606x1606px_dvHAMaster.jpg', 'JBL_Clip2_Black_Hero_x1-1606x1606px_dvHAMaster.jpg', '0.00', 1),
(24, 'JBL Xtreme', 'JBL-Xtreme', '299.95', '<b xss="removed" xss=removed><font size="6">JBL</font></b><span xss=removed></span><div xss=removed><span xss="removed">JBL</span><span xss="removed"> is an </span><a href="https://en.wikipedia.org/wiki/United_States" title="United States" xss="removed">American</a><span xss="removed"> audio electronics company founded in 1946 by </span><a href="https://en.wikipedia.org/wiki/James_Bullough_Lansing" title="James Bullough Lansing" xss="removed">James Bullough Lansing</a><span xss="removed">. Their primary products are </span><a href="https://en.wikipedia.org/wiki/Loudspeaker" title="Loudspeaker" xss="removed">loudspeakers</a><span xss="removed"> and associated </span><a href="https://en.wikipedia.org/wiki/Electronics" title="Electronics" xss="removed">electronics</a><span xss="removed">. There are two independent divisions within the company — JBL Consumer and JBL Professional. The former produces audio equipment for the consumer home market while the latter produces professional equipment for the studio, installed sound, tour sound, portable sound (production and DJ), and cinema markets.</span></div>                 ', 'JBL-Charge-3-watersplash-Black_dvHAMaster1.jpg', 'JBL-Charge-3-watersplash-Black_dvHAMaster1.jpg', '0.00', 1),
(25, 'JBL Flip 3', 'JBL-Flip-3', '99.95', '<b xss="removed" xss=removed><font size="6">JBL</font></b><span xss=removed></span><div xss=removed><span xss="removed">JBL</span><span xss="removed"> is an </span><a href="https://en.wikipedia.org/wiki/United_States" title="United States" xss="removed">American</a><span xss="removed"> audio electronics company founded in 1946 by </span><a href="https://en.wikipedia.org/wiki/James_Bullough_Lansing" title="James Bullough Lansing" xss="removed">James Bullough Lansing</a><span xss="removed">. Their primary products are </span><a href="https://en.wikipedia.org/wiki/Loudspeaker" title="Loudspeaker" xss="removed">loudspeakers</a><span xss="removed"> and associated </span><a href="https://en.wikipedia.org/wiki/Electronics" title="Electronics" xss="removed">electronics</a><span xss="removed">. There are two independent divisions within the company — JBL Consumer and JBL Professional. The former produces audio equipment for the consumer home market while the latter produces professional equipment for the studio, installed sound, tour sound, portable sound (production and DJ), and cinema markets.</span></div>                 ', 'FLIP-3_FRONT_BLACK_splash-1606x1606px_dvHAMaster.jpg', 'FLIP-3_FRONT_BLACK_splash-1606x1606px_dvHAMaster.jpg', '0.00', 1),
(26, 'JBL Pulse 2', 'JBL-Pulse-2', '199.95', '<b xss="removed" xss=removed><font size="6">JBL</font></b><span xss=removed></span><div xss=removed><span xss="removed">JBL</span><span xss="removed"> is an </span><a href="https://en.wikipedia.org/wiki/United_States" title="United States" xss="removed">American</a><span xss="removed"> audio electronics company founded in 1946 by </span><a href="https://en.wikipedia.org/wiki/James_Bullough_Lansing" title="James Bullough Lansing" xss="removed">James Bullough Lansing</a><span xss="removed">. Their primary products are </span><a href="https://en.wikipedia.org/wiki/Loudspeaker" title="Loudspeaker" xss="removed">loudspeakers</a><span xss="removed"> and associated </span><a href="https://en.wikipedia.org/wiki/Electronics" title="Electronics" xss="removed">electronics</a><span xss="removed">. There are two independent divisions within the company — JBL Consumer and JBL Professional. The former produces audio equipment for the consumer home market while the latter produces professional equipment for the studio, installed sound, tour sound, portable sound (production and DJ), and cinema markets.</span></div>                 ', 'JBL_Pulse2_Black_001_dvHAMaster.jpg', 'JBL_Pulse2_Black_001_dvHAMaster.jpg', '0.00', 1),
(27, 'JBL Clip+', 'JBL-Clip', '39.95', '<b xss="removed" xss=removed><font size="6">JBL</font></b><span xss=removed></span><div xss=removed><span xss="removed">JBL</span><span xss="removed"> is an </span><a href="https://en.wikipedia.org/wiki/United_States" title="United States" xss="removed">American</a><span xss="removed"> audio electronics company founded in 1946 by </span><a href="https://en.wikipedia.org/wiki/James_Bullough_Lansing" title="James Bullough Lansing" xss="removed">James Bullough Lansing</a><span xss="removed">. Their primary products are </span><a href="https://en.wikipedia.org/wiki/Loudspeaker" title="Loudspeaker" xss="removed">loudspeakers</a><span xss="removed"> and associated </span><a href="https://en.wikipedia.org/wiki/Electronics" title="Electronics" xss="removed">electronics</a><span xss="removed">. There are two independent divisions within the company — JBL Consumer and JBL Professional. The former produces audio equipment for the consumer home market while the latter produces professional equipment for the studio, installed sound, tour sound, portable sound (production and DJ), and cinema markets.</span></div>                 ', 'JBL_CLIP_PLUS_Grey_002_dvHAMaster.jpg', 'JBL_CLIP_PLUS_Grey_002_dvHAMaster.jpg', '0.00', 1),
(28, 'JBL Charge 2+', 'JBL-Charge-2', '99.95', '<b xss="removed" xss=removed><font size="6">JBL</font></b><span xss=removed></span><div xss=removed><span xss="removed">JBL</span><span xss="removed"> is an </span><a href="https://en.wikipedia.org/wiki/United_States" title="United States" xss="removed">American</a><span xss="removed"> audio electronics company founded in 1946 by </span><a href="https://en.wikipedia.org/wiki/James_Bullough_Lansing" title="James Bullough Lansing" xss="removed">James Bullough Lansing</a><span xss="removed">. Their primary products are </span><a href="https://en.wikipedia.org/wiki/Loudspeaker" title="Loudspeaker" xss="removed">loudspeakers</a><span xss="removed"> and associated </span><a href="https://en.wikipedia.org/wiki/Electronics" title="Electronics" xss="removed">electronics</a><span xss="removed">. There are two independent divisions within the company — JBL Consumer and JBL Professional. The former produces audio equipment for the consumer home market while the latter produces professional equipment for the studio, installed sound, tour sound, portable sound (production and DJ), and cinema markets.</span></div>                 ', 'CHARGE2PLUSPINK_HERO_dvHAMaster.jpg', 'CHARGE2PLUSPINK_HERO_dvHAMaster.jpg', '0.00', 1),
(29, 'JBL GO', 'JBL-GO', '39.95', '<b xss="removed" xss=removed><font size="6">JBL</font></b><span xss=removed></span><div xss=removed><span xss="removed">JBL</span><span xss="removed"> is an </span><a href="https://en.wikipedia.org/wiki/United_States" title="United States" xss="removed">American</a><span xss="removed"> audio electronics company founded in 1946 by </span><a href="https://en.wikipedia.org/wiki/James_Bullough_Lansing" title="James Bullough Lansing" xss="removed">James Bullough Lansing</a><span xss="removed">. Their primary products are </span><a href="https://en.wikipedia.org/wiki/Loudspeaker" title="Loudspeaker" xss="removed">loudspeakers</a><span xss="removed"> and associated </span><a href="https://en.wikipedia.org/wiki/Electronics" title="Electronics" xss="removed">electronics</a><span xss="removed">. There are two independent divisions within the company — JBL Consumer and JBL Professional. The former produces audio equipment for the consumer home market while the latter produces professional equipment for the studio, installed sound, tour sound, portable sound (production and DJ), and cinema markets.</span></div>                 ', 'Go-Black-Hero_dvHAMaster.jpg', 'Go-Black-Hero_dvHAMaster.jpg', '0.00', 1),
(30, 'JBL Flip 2', 'JBL-Flip-2', '79.95', '<b xss="removed" xss=removed><font size="6">JBL</font></b><span xss=removed></span><div xss=removed><span xss="removed">JBL</span><span xss="removed"> is an </span><a href="https://en.wikipedia.org/wiki/United_States" title="United States" xss="removed">American</a><span xss="removed"> audio electronics company founded in 1946 by </span><a href="https://en.wikipedia.org/wiki/James_Bullough_Lansing" title="James Bullough Lansing" xss="removed">James Bullough Lansing</a><span xss="removed">. Their primary products are </span><a href="https://en.wikipedia.org/wiki/Loudspeaker" title="Loudspeaker" xss="removed">loudspeakers</a><span xss="removed"> and associated </span><a href="https://en.wikipedia.org/wiki/Electronics" title="Electronics" xss="removed">electronics</a><span xss="removed">. There are two independent divisions within the company — JBL Consumer and JBL Professional. The former produces audio equipment for the consumer home market while the latter produces professional equipment for the studio, installed sound, tour sound, portable sound (production and DJ), and cinema markets.</span></div>                 ', 'FLIPIIBLK_hero_dvHAMaster.jpg', 'FLIPIIBLK_hero_dvHAMaster.jpg', '0.00', 1),
(31, 'JBL Charge ', 'JBL-Charge', '79.00', '<b xss="removed" xss=removed><font size="6">JBL</font></b><span xss=removed></span><div xss=removed><span xss="removed">JBL</span><span xss="removed"> is an </span><a href="https://en.wikipedia.org/wiki/United_States" title="United States" xss="removed">American</a><span xss="removed"> audio electronics company founded in 1946 by </span><a href="https://en.wikipedia.org/wiki/James_Bullough_Lansing" title="James Bullough Lansing" xss="removed">James Bullough Lansing</a><span xss="removed">. Their primary products are </span><a href="https://en.wikipedia.org/wiki/Loudspeaker" title="Loudspeaker" xss="removed">loudspeakers</a><span xss="removed"> and associated </span><a href="https://en.wikipedia.org/wiki/Electronics" title="Electronics" xss="removed">electronics</a><span xss="removed">. There are two independent divisions within the company — JBL Consumer and JBL Professional. The former produces audio equipment for the consumer home market while the latter produces professional equipment for the studio, installed sound, tour sound, portable sound (production and DJ), and cinema markets.</span></div>                 ', 'ChargeBlu_sq_001_wht_indxV2_dvHAMaster.jpg', 'ChargeBlu_sq_001_wht_indxV2_dvHAMaster.jpg', '0.00', 1),
(33, 'JBL Flip 2 NBA Edition - Knicks', 'JBL-Flip-2-NBA-Edition-Knicks', '99.95', '<b xss="removed" xss=removed><font size="6">JBL</font></b><span xss=removed></span><div xss=removed><span xss="removed">JBL</span><span xss="removed"> is an </span><a href="https://en.wikipedia.org/wiki/United_States" title="United States" xss="removed">American</a><span xss="removed"> audio electronics company founded in 1946 by </span><a href="https://en.wikipedia.org/wiki/James_Bullough_Lansing" title="James Bullough Lansing" xss="removed">James Bullough Lansing</a><span xss="removed">. Their primary products are </span><a href="https://en.wikipedia.org/wiki/Loudspeaker" title="Loudspeaker" xss="removed">loudspeakers</a><span xss="removed"> and associated </span><a href="https://en.wikipedia.org/wiki/Electronics" title="Electronics" xss="removed">electronics</a><span xss="removed">. There are two independent divisions within the company — JBL Consumer and JBL Professional. The former produces audio equipment for the consumer home market while the latter produces professional equipment for the studio, installed sound, tour sound, portable sound (production and DJ), and cinema markets.</span></div>                 ', 'JBLFlip2_Knicks_001_dvHAMaster.jpg', 'JBLFlip2_Knicks_001_dvHAMaster.jpg', '0.00', 1),
(34, 'JBL Flip 2 NBA Edition - Spurs', 'JBL-Flip-2-NBA-Edition-Spurs', '99.95', '<b xss="removed" xss=removed><font size="6">JBL</font></b><span xss=removed></span><div xss=removed><span xss="removed">JBL</span><span xss="removed"> is an </span><a href="https://en.wikipedia.org/wiki/United_States" title="United States" xss="removed">American</a><span xss="removed"> audio electronics company founded in 1946 by </span><a href="https://en.wikipedia.org/wiki/James_Bullough_Lansing" title="James Bullough Lansing" xss="removed">James Bullough Lansing</a><span xss="removed">. Their primary products are </span><a href="https://en.wikipedia.org/wiki/Loudspeaker" title="Loudspeaker" xss="removed">loudspeakers</a><span xss="removed"> and associated </span><a href="https://en.wikipedia.org/wiki/Electronics" title="Electronics" xss="removed">electronics</a><span xss="removed">. There are two independent divisions within the company — JBL Consumer and JBL Professional. The former produces audio equipment for the consumer home market while the latter produces professional equipment for the studio, installed sound, tour sound, portable sound (production and DJ), and cinema markets.</span></div>                 ', 'JBLFlip2_Spurs_001_dvHAMaster.jpg', 'JBLFlip2_Spurs_001_dvHAMaster.jpg', '0.00', 1),
(35, 'JBL Flip 2 NBA Edition - Bulls', 'JBL-Flip-2-NBA-Edition-Bulls', '99.95', '<b xss="removed" xss=removed><font size="6">JBL</font></b><span xss=removed></span><div xss=removed><span xss="removed">JBL</span><span xss="removed"> is an </span><a href="https://en.wikipedia.org/wiki/United_States" title="United States" xss="removed">American</a><span xss="removed"> audio electronics company founded in 1946 by </span><a href="https://en.wikipedia.org/wiki/James_Bullough_Lansing" title="James Bullough Lansing" xss="removed">James Bullough Lansing</a><span xss="removed">. Their primary products are </span><a href="https://en.wikipedia.org/wiki/Loudspeaker" title="Loudspeaker" xss="removed">loudspeakers</a><span xss="removed"> and associated </span><a href="https://en.wikipedia.org/wiki/Electronics" title="Electronics" xss="removed">electronics</a><span xss="removed">. There are two independent divisions within the company — JBL Consumer and JBL Professional. The former produces audio equipment for the consumer home market while the latter produces professional equipment for the studio, installed sound, tour sound, portable sound (production and DJ), and cinema markets.</span></div>                 ', 'JBLFlip2_Bulls_001_dvHAMaster.jpg', 'JBLFlip2_Bulls_001_dvHAMaster.jpg', '0.00', 1),
(36, 'JBL Flip 2 NBA Edition - Celtics', 'JBL-Flip-2-NBA-Edition-Celtics', '99.95', '<b xss="removed" xss=removed><font size="6">JBL</font></b><span xss=removed></span><div xss=removed><span xss="removed">JBL</span><span xss="removed"> is an </span><a href="https://en.wikipedia.org/wiki/United_States" title="United States" xss="removed">American</a><span xss="removed"> audio electronics company founded in 1946 by </span><a href="https://en.wikipedia.org/wiki/James_Bullough_Lansing" title="James Bullough Lansing" xss="removed">James Bullough Lansing</a><span xss="removed">. Their primary products are </span><a href="https://en.wikipedia.org/wiki/Loudspeaker" title="Loudspeaker" xss="removed">loudspeakers</a><span xss="removed"> and associated </span><a href="https://en.wikipedia.org/wiki/Electronics" title="Electronics" xss="removed">electronics</a><span xss="removed">. There are two independent divisions within the company — JBL Consumer and JBL Professional. The former produces audio equipment for the consumer home market while the latter produces professional equipment for the studio, installed sound, tour sound, portable sound (production and DJ), and cinema markets.</span></div>                 ', 'JBLFlip2_Celtics_001_dvHAMaster.jpg', 'JBLFlip2_Celtics_001_dvHAMaster.jpg', '0.00', 1),
(37, 'JBL Flip 2 NBA Edition - Thunder', 'JBL-Flip-2-NBA-Edition-Thunder', '99.95', '                  <b xss="removed"><font size="6">JBL</font></b><span xss="removed"></span><div xss="removed"><span xss="removed">JBL</span><span xss="removed"> is an </span><a href="https://en.wikipedia.org/wiki/United_States" title="United States" xss="removed">American</a><span xss="removed"> audio electronics company founded in 1946 by </span><a href="https://en.wikipedia.org/wiki/James_Bullough_Lansing" title="James Bullough Lansing" xss="removed">James Bullough Lansing</a><span xss="removed">. Their primary products are </span><a href="https://en.wikipedia.org/wiki/Loudspeaker" title="Loudspeaker" xss="removed">loudspeakers</a><span xss="removed"> and associated </span><a href="https://en.wikipedia.org/wiki/Electronics" title="Electronics" xss="removed">electronics</a><span xss="removed">. There are two independent divisions within the company — JBL Consumer and JBL Professional. The former produces audio equipment for the consumer home market while the latter produces professional equipment for the studio, installed sound, tour sound, portable sound (production and DJ), and cinema markets.</span></div>                                 ', 'JBLFlip2_Thunder_001_dvHAMaster.jpg', 'JBLFlip2_Thunder_001_dvHAMaster.jpg', '0.00', 1),
(38, 'JBL Flip 2 NBA Edition - Lakers', 'JBL-Flip-2-NBA-Edition-Lakers', '99.95', '<b xss="removed" xss=removed><font size="6">JBL</font></b><span xss=removed></span><div xss=removed><span xss="removed">JBL</span><span xss="removed"> is an </span><a href="https://en.wikipedia.org/wiki/United_States" title="United States" xss="removed">American</a><span xss="removed"> audio electronics company founded in 1946 by </span><a href="https://en.wikipedia.org/wiki/James_Bullough_Lansing" title="James Bullough Lansing" xss="removed">James Bullough Lansing</a><span xss="removed">. Their primary products are </span><a href="https://en.wikipedia.org/wiki/Loudspeaker" title="Loudspeaker" xss="removed">loudspeakers</a><span xss="removed"> and associated </span><a href="https://en.wikipedia.org/wiki/Electronics" title="Electronics" xss="removed">electronics</a><span xss="removed">. There are two independent divisions within the company — JBL Consumer and JBL Professional. The former produces audio equipment for the consumer home market while the latter produces professional equipment for the studio, installed sound, tour sound, portable sound (production and DJ), and cinema markets.</span></div>                 ', 'JBLFlip2_Lakers_002_dvHAMaster.jpg', 'JBLFlip2_Lakers_002_dvHAMaster.jpg', '0.00', 1),
(39, 'JBL Clip NBA Edition - Spurs', 'JBL-Clip-NBA-Edition-Spurs', '49.95', '<b xss="removed" xss=removed><font size="6">JBL</font></b><span xss=removed></span><div xss=removed><span xss="removed">JBL</span><span xss="removed"> is an </span><a href="https://en.wikipedia.org/wiki/United_States" title="United States" xss="removed">American</a><span xss="removed"> audio electronics company founded in 1946 by </span><a href="https://en.wikipedia.org/wiki/James_Bullough_Lansing" title="James Bullough Lansing" xss="removed">James Bullough Lansing</a><span xss="removed">. Their primary products are </span><a href="https://en.wikipedia.org/wiki/Loudspeaker" title="Loudspeaker" xss="removed">loudspeakers</a><span xss="removed"> and associated </span><a href="https://en.wikipedia.org/wiki/Electronics" title="Electronics" xss="removed">electronics</a><span xss="removed">. There are two independent divisions within the company — JBL Consumer and JBL Professional. The former produces audio equipment for the consumer home market while the latter produces professional equipment for the studio, installed sound, tour sound, portable sound (production and DJ), and cinema markets.</span></div>                 ', 'JBLClip_Spurs_001_dvHAMaster.jpg', 'JBLClip_Spurs_001_dvHAMaster.jpg', '0.00', 1),
(40, 'JBL Clip NBA Edition - Celtics', 'JBL-Clip-NBA-Edition-Celtics', '49.95', '<b xss="removed" xss=removed><font size="6">JBL</font></b><span xss=removed></span><div xss=removed><span xss="removed">JBL</span><span xss="removed"> is an </span><a href="https://en.wikipedia.org/wiki/United_States" title="United States" xss="removed">American</a><span xss="removed"> audio electronics company founded in 1946 by </span><a href="https://en.wikipedia.org/wiki/James_Bullough_Lansing" title="James Bullough Lansing" xss="removed">James Bullough Lansing</a><span xss="removed">. Their primary products are </span><a href="https://en.wikipedia.org/wiki/Loudspeaker" title="Loudspeaker" xss="removed">loudspeakers</a><span xss="removed"> and associated </span><a href="https://en.wikipedia.org/wiki/Electronics" title="Electronics" xss="removed">electronics</a><span xss="removed">. There are two independent divisions within the company — JBL Consumer and JBL Professional. The former produces audio equipment for the consumer home market while the latter produces professional equipment for the studio, installed sound, tour sound, portable sound (production and DJ), and cinema markets.</span></div>                 ', 'JBLClip_Celtics_001_dvHAMaster.jpg', 'JBLClip_Celtics_001_dvHAMaster.jpg', '0.00', 1),
(41, 'JBL Clip NBA Edition - Bulls', 'JBL-Clip-NBA-Edition-Bulls', '49.95', '<b xss="removed" xss=removed><font size="6">JBL</font></b><span xss=removed></span><div xss=removed><span xss="removed">JBL</span><span xss="removed"> is an </span><a href="https://en.wikipedia.org/wiki/United_States" title="United States" xss="removed">American</a><span xss="removed"> audio electronics company founded in 1946 by </span><a href="https://en.wikipedia.org/wiki/James_Bullough_Lansing" title="James Bullough Lansing" xss="removed">James Bullough Lansing</a><span xss="removed">. Their primary products are </span><a href="https://en.wikipedia.org/wiki/Loudspeaker" title="Loudspeaker" xss="removed">loudspeakers</a><span xss="removed"> and associated </span><a href="https://en.wikipedia.org/wiki/Electronics" title="Electronics" xss="removed">electronics</a><span xss="removed">. There are two independent divisions within the company — JBL Consumer and JBL Professional. The former produces audio equipment for the consumer home market while the latter produces professional equipment for the studio, installed sound, tour sound, portable sound (production and DJ), and cinema markets.</span></div>                 ', 'JBLClip_Bulls_001_dvHAMaster.jpg', 'JBLClip_Bulls_001_dvHAMaster.jpg', '0.00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `store_item_colours`
--

CREATE TABLE IF NOT EXISTS `store_item_colours` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL,
  `colour` varchar(120) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `store_item_colours`
--

INSERT INTO `store_item_colours` (`id`, `item_id`, `colour`) VALUES
(1, 12, 'red'),
(3, 3, 'black'),
(4, 3, 'blue'),
(8, 19, 'red'),
(9, 19, 'white'),
(10, 20, 'gold'),
(11, 20, 'rosegold'),
(12, 20, 'Siliver'),
(13, 20, 'Black'),
(14, 21, 'Gold'),
(15, 21, 'Siliver'),
(16, 21, 'RoseGold'),
(17, 21, 'Rose'),
(18, 18, 'blue'),
(19, 18, 'black');

-- --------------------------------------------------------

--
-- Table structure for table `store_item_sizes`
--

CREATE TABLE IF NOT EXISTS `store_item_sizes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL,
  `size` varchar(120) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `store_item_sizes`
--

INSERT INTO `store_item_sizes` (`id`, `item_id`, `size`) VALUES
(7, 19, '64'),
(8, 19, '32'),
(9, 20, '16'),
(10, 20, '32'),
(11, 20, '64'),
(12, 21, '16'),
(13, 21, '32'),
(14, 21, '64'),
(15, 21, '128');

-- --------------------------------------------------------

--
-- Table structure for table `webpages`
--

CREATE TABLE IF NOT EXISTS `webpages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_url` varchar(255) NOT NULL,
  `page_title` varchar(255) NOT NULL,
  `page_keywords` text NOT NULL,
  `page_description` text NOT NULL,
  `page_content` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `webpages`
--

INSERT INTO `webpages` (`id`, `page_url`, `page_title`, `page_keywords`, `page_description`, `page_content`) VALUES
(1, '', 'The Homepage', '        sdasddsad  dasdasd                        ', '        adddd   dsadasdadas                       ', 'Heading\r\nDonec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui.'),
(3, 'title1', 'title1', 'asdasd                ', 'khngfsfc                 ', 'zaddslkvleuoiquic,xn suhheiuakzx'),
(4, 'dpoasdp', 'dpoasdp', '  dsadsadasd               ', '  asdasdsad               ', '<h1><span xss=removed>asdasdasdada</span></h1><div><span xss=removed>asjdlasdkjalksd</span></div>'),
(5, 'contactus', 'Contact US', 'Here is some keywords', 'Here is some description', 'This is the content us content.');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
