-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 17, 2017 at 10:12 AM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `realestate`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_dealers`
--

CREATE TABLE `add_dealers` (
  `id` int(255) NOT NULL,
  `dname` varchar(255) NOT NULL,
  `cnumber` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `cntctperson` varchar(255) NOT NULL,
  `pno` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `add_dealers`
--

INSERT INTO `add_dealers` (`id`, `dname`, `cnumber`, `email`, `address`, `cntctperson`, `pno`, `image`) VALUES
(10, 'RR Construction', '9876543210', 'rrconstruction@gmail.com', 'B-4151,Main Road, Green Field\r\n\r\nFaridabad', 'Ravi Gupta', '9843400000', '10949256O-1379922068-DEALER_400063_LOGO.jpeg'),
(11, ' Fortune International Realty', '7894561232', 'fir@gmail.com', '\r\nOffice Wakad Pune Behind Datta Mandir, Wakad Villa\r\nGe, Wakad\r\nPune', 'Davesh Mehta', '7056489321', '40072065O-1439898023-DEALER_423712_LOGO.jpeg'),
(12, '  STA SOLUTIONS', '894561237', 'sta@gmail.com', '\r\nD Bolck Sectoe 2 Noida D Block Sta Tower Sector-18\r\nNoida\r\nNoida', 'Alam', '7056421368', '36147387O-1434434719-DEALER_811898_LOGO.jpeg'),
(13, 'Kalra Builders', '789456304', 'kalra123@gmail.com', 'Z-75, Dayalsar Road, Near Uttam Nagar west metro station, Pillar no 691, Uttam Nagar, New Delhi-110059\r\nDelhi West', 'Anil Kalra', '7546981230', '85980031O-1491484853-DEALER_12011941_LOGO.jpeg'),
(14, 'Shri sai consultancy', '7412583695', 'ssc@gmail.com', '\r\nL 114, Megacenter, Magarpatta City, Hadapsar Pune\r\n13near Noble Hospit\r\nPune\r\n', 'Ashok ', '8965741230', '27799554O-1420542782-DEALER_1188019_LOGO.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `add_property`
--

CREATE TABLE `add_property` (
  `id` int(255) NOT NULL,
  `dealer` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `floor` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `specification` varchar(255) NOT NULL,
  `space` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `add_property`
--

INSERT INTO `add_property` (`id`, `dealer`, `category`, `type`, `city`, `floor`, `location`, `specification`, `space`, `price`, `image`) VALUES
(4, 'RR Construction', 'Buy', 'Commercial', 'Ambala', '10', 'Ambala', 'Hospital,BusStand', '4BHK,2baths', 'Rs.200000', 'commercial.jpg'),
(5, ' Fortune International Realty', 'Buy', 'Villa', 'Chandigarh', '2', ' Total Environment The Meadow Dance\r\nRajendra Nagar,\r\nChandigarh', 'Hospital', '3BHK', '4 crs.', '54.jpg'),
(6, ' Fortune International Realty', 'Buy', 'Villa', 'Delhi', '2', '   Godrej Golf Links Villas\r\nPI,\r\nGreater Noida', 'Hospital,Railway station', '4BHK', '1.1crs', 'main-slideshow-tres-1-1450x650_c.jpg'),
(7, 'Kalra Builders', 'Sale', 'Apartment', 'Delhi', '12', 'Sarvodaya Enclave , Delhi', 'Hospital,BusStand', '3BHK independent', '5.6crs', 'apartments-18.jpg'),
(8, 'Shri sai consultancy', 'Rent', 'Farm house', 'Ambala', '3', 'Shyam Enclave , Delhi', 'BusStand,Railway station', '5BHK', 'Rs.10000', 'gallery-1452633805-white-farmhouse-mn-0216.jpg'),
(9, '  STA SOLUTIONS', 'Rent', 'Villa', 'Delhi', '4', 'Sara Devi Enclave , Delhi', 'School,College', '5BHK', 'Rs.15000', 'villa-d-nightb.jpg'),
(10, 'Kalra Builders', 'Sale', 'Villa', 'Chandigarh', '4', 'Sector-43,Chandigarh', 'School,Park', '5BHK', '6crs', 'the-regent-villas-in-jigani-dcq.jpg'),
(11, 'RR Construction', 'Sale', 'Residential', 'Ambala', '0', 'Near S D college,Ambala', 'School,Hospital,College', '99sqyrd', '8 crs', '12580284.jpeg'),
(12, 'Shri sai consultancy', 'Sale', 'Residential', 'Ambala', '0', 'Anand Nagar near Boh ,Ambala Cantt', 'School,BusStand', '50sqyrd', '2.5crs', 'resimain.jpeg'),
(14, '  STA SOLUTIONS', 'Buy', 'Residential', 'Delhi', '0', '   Royal City Society , New Delhi, Delhi N', 'BusStand', '70 Sqyrd', '6.0 Lacs', 'resi1.jpeg'),
(15, 'RR Construction', 'Buy', 'Farm house', 'Delhi', '2', 'Uttam Nagar,near metro station,Delhi', 'School,College,Railway station', '4BHK', '20Lacs', '54eb9a09d2c0f_-_9-raphine-va-18905343.jpg'),
(16, ' Fortune International Realty', 'Sale', 'Farm house', 'Chandigarh', '3', 'Jaipuria Sunrise Greens Zirakpur,Chandigarh', 'Hospital,BusStand', '2BHK,3baths', '25Lakhs', '013D-0039-farmhouse.jpg'),
(17, ' Fortune International Realty', 'Buy', 'Commercial', 'Chandigarh', '14', 'Maya Garden Magnesia,Zirkhpur,Chandigarh', 'Park,BusStand', '3BHK,2baths', '50Lakhs', '01.jpg'),
(18, 'Kalra Builders', 'Sale', 'Commercial', 'Delhi', '15', 'About elan miracle, Sector 84, Dwarka expressway,Delhi', 'Railway station', '3500 sq.yards', '1.5 crs', 'planet-plaza-lucknow-1.jpg'),
(19, 'Kalra Builders', 'Buy', 'Apartment', 'Delhi', '16', 'Uttam Nagar, New Delhi - West, Delhi', 'Hospital', '3Bhk', '14.0 Lac', 'image.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `add_type`
--

CREATE TABLE `add_type` (
  `id` int(255) NOT NULL,
  `typename` varchar(255) NOT NULL,
  `detail` longtext NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `add_type`
--

INSERT INTO `add_type` (`id`, `typename`, `detail`, `image`) VALUES
(4, 'Commercial', 'Availble for rent 50000 sqft shed in greater noida ecotech ii.All amenties is nearby location.Suitable for mnc ,Logistics,Storage,Warehouse.Walking from main road.', '11614130T-1383296583-Industrial_Building_-_Ecotech_II.jpeg'),
(5, 'Apartment', 'Sri Aurobindo Marg, Near Government Boys Senior Secondary School, Block-c,3BHK,1400spft', 'index.jpg'),
(6, 'Villa', 'Located 5 minutes away from Vagator Beach and within walking distance of the well known restaurants in the area, is Vianaarâ€™s latest property, La Sierra Estate. These 14 luxury villas offer an expansive living area and feature the very best in premium housing. A serene and tranquil world awaits one at this property in Goa where no stone has been left unturned to ensure that it is an excellent second home destination.\r\n\r\nA delightful combination of ultra modern specifications, amenities and luxurious living, these 3 BHK villas for sale in North Goa are a retreat for those who appreciate the finer things in life and value their privacy too. This can be seen in the private pathways that lead up to each of the 14 villas, giving one a sense of oneâ€™s own private house, yet still a part of a gated community.\r\n\r\nSurrounded by a well maintained and landscaped garden, these plush villas also boast of a private pool. Add to this the services post construction which include grocery shopping, a chef on call, 24*7 security, a Concierge desk and so on, and one has a villa that is complete in all respects.\r\nTruly, a marvel masterpiece which carries the Vianaar trademarks of quality construction, luxury and beautiful design. ', 'index1.jpg'),
(16, 'Farm house', 'Indian estates are a fruit of our aspiration to create an iconic community with quality and prestige. Coffee estates for sale, Farm house for sale, Agricultural land for sale â€“ Every development is accomplished through the implementation of eco-friendly systems. Hence an Indian estate is a picturesque fusion of lush nature and plush structures. The community that emerges as a result is a dream comes true.', 'rich-coffee-estate-with-farm-house-Copy-600x400.jpg'),
(30, 'Residential', 'Residential plots in one of the most Porsche localty of the town magnificent project in greater Mohali west right and near by to proposed metro station. Our passion is to provide residential plots within smiling range of your pocket. We have created a project that has well equipped roads network , sewage system , electricity , gated society and is connected via all means of transport.', 'resi1.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `manage_admin`
--

CREATE TABLE `manage_admin` (
  `Id` int(255) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Uname` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manage_admin`
--

INSERT INTO `manage_admin` (`Id`, `Name`, `Uname`, `Password`, `Email`) VALUES
(1, 'ravi', 'ravi123', '1234', 'ravi123@example.com');

-- --------------------------------------------------------

--
-- Table structure for table `manage_contact`
--

CREATE TABLE `manage_contact` (
  `id` int(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `cnum` varchar(255) NOT NULL,
  `message` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manage_contact`
--

INSERT INTO `manage_contact` (`id`, `fname`, `email`, `cnum`, `message`) VALUES
(1, 'rajnesh', 'rajneshsaini193@gmail.com', '7082848804', 'kuch ni oye'),
(2, 'hxsxgj', 'xnsxgacg jcgjs mcnsdk', '343534564643', 'defkgkjv,rhkb,jdsfkgjlsejg,l\r\nkjg.lkhk.rgk.sgjl.rtjgkhk.trg.k\r\n.kvfnfjkvhr,kfbhjrk,'),
(3, 'qwe', 'rajneshsaini193@gmail.com', '987654325678', 'hfu dshu dhusbnfv\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `property_enquiry`
--

CREATE TABLE `property_enquiry` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `num` varchar(255) NOT NULL,
  `message` longtext NOT NULL,
  `pro_id` int(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `space` varchar(255) NOT NULL,
  `dname` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `property_enquiry`
--

INSERT INTO `property_enquiry` (`id`, `name`, `email`, `num`, `message`, `pro_id`, `price`, `space`, `dname`) VALUES
(1, 'hfhjgf', 'ghfhgf@hgjh.gfdgd', '34678908654', 'hgfghfghfh', 4, 'Rs.200000', '4BHK,2baths', 'RR Construction'),
(2, 'ghfghfhg', 'gdfbfvffb', '7082848804', 'sfvdsfgdfbfsdgfsb', 4, 'Rs.200000', '4BHK,2baths', 'RR Construction'),
(3, 'kk', 'csxvsdcx v34354534', '435435435', '4435345gfegfg', 18, '1.5 crs', '3500 sq.yards', 'Kalra Builders'),
(4, 'Rajnesh', 'rajneshsaini193@gmail.com', '7082848804', 'property h koi ya nhi ?', 18, '1.5 crs', '3500 sq.yards', 'Kalra Builders');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_dealers`
--
ALTER TABLE `add_dealers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `add_property`
--
ALTER TABLE `add_property`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `add_type`
--
ALTER TABLE `add_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manage_admin`
--
ALTER TABLE `manage_admin`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `manage_contact`
--
ALTER TABLE `manage_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `property_enquiry`
--
ALTER TABLE `property_enquiry`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_dealers`
--
ALTER TABLE `add_dealers`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `add_property`
--
ALTER TABLE `add_property`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `add_type`
--
ALTER TABLE `add_type`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `manage_admin`
--
ALTER TABLE `manage_admin`
  MODIFY `Id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `manage_contact`
--
ALTER TABLE `manage_contact`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `property_enquiry`
--
ALTER TABLE `property_enquiry`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
