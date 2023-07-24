-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 04, 2022 at 05:16 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `form`
--

-- --------------------------------------------------------

--
-- Table structure for table `barbers`
--

CREATE TABLE `barbers` (
  `barber_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `mobile_number` bigint(15) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `user_type` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barbers`
--

INSERT INTO `barbers` (`barber_id`, `name`, `email`, `password`, `mobile_number`, `gender`, `user_type`) VALUES
(1, 'Raju Gurjar', 'rjgurjar8461@gmail.com', '123', 9461943228, 'male', 'barber'),
(2, 'Dipesh Sen', 'dipesh781@gmail.com', '123', 8461943298, 'male', 'barber'),
(3, 'Rina Kumari', 'Kumari321@gmail.com', '123', 7895559861, 'Female', 'barber'),
(4, 'Shayam kumar ', 'shayam23@gmail.com', '1122', 9826348231, 'male', 'barber'),
(5, 'Rohini Kumari', 'rohini123@gmail.com', '123', 987654321, 'Female', 'barber'),
(6, 'Jayanta Srivastava', 'jyntashre8461@gmail.com', '123', 8461945236, 'male', 'barber'),
(14, 'anil kumar', 'anilkumar12@gmail.com', '123', 9179086564, 'male', 'barber');

-- --------------------------------------------------------

--
-- Table structure for table `barbers_customers`
--

CREATE TABLE `barbers_customers` (
  `id` int(10) NOT NULL,
  `barber_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `package_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barbers_customers`
--

INSERT INTO `barbers_customers` (`id`, `barber_id`, `customer_id`, `package_id`) VALUES
(1, 1, 9, 6),
(2, 6, 2, 5),
(3, 1, 2, 9),
(4, 7, 6, 6),
(5, 3, 6, 1),
(6, 8, 7, 6),
(7, 9, 8, 5),
(8, 6, 2, 9),
(9, 7, 2, 8),
(10, 1, 7, 2),
(11, 1, 6, 8),
(12, 9, 2, 8),
(13, 10, 9, 3),
(14, 10, 2, 5),
(15, 11, 10, 8),
(16, 7, 2, 8),
(17, 2, 2, 3),
(18, 6, 2, 9),
(19, 6, 2, 1),
(20, 14, 11, 6);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Mobile` bigint(10) NOT NULL,
  `Email` varchar(30) DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `Service` varchar(50) NOT NULL,
  `Date` date NOT NULL,
  `Time` time NOT NULL,
  `Address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `Name`, `Mobile`, `Email`, `Gender`, `Service`, `Date`, `Time`, `Address`) VALUES
(1, 'Arjun Patidar', 8461943228, 'a8461943228@gmail.com', 'male', 'Kids: Boys', '2022-11-03', '00:12:00', 'Makan No.-25, Gram - kaglyakhedi, Post - Dhabla Madhosingh, Tah- Bhanpura, Dist. - Mandsaur, Madhya '),
(2, 'Nimish Lomhumi', 7898987876, 'nimish@gmail.com', 'male', ' Partial Highlights', '2022-11-06', '13:44:00', 'ryjsgdyjahgsuhschiduchsc'),
(3, 'Arjun Patidar', 8461943228, 'apatidar8461@gmail.com', 'male', 'Double Process', '2022-11-03', '11:28:00', 'Makan No.-25, Gram - kaglyakhedi, Post - Dhabla Madhosingh, Tah- Bhanpura, Dist. - Mandsaur, Madhya Pradesh,458775'),
(13, 'Arjun Patidar', 8461943228, 'apatidar8461@gmail.com', 'male', 'Single Process (Regular)', '2022-11-02', '20:12:00', 'Makan No.-25, Gram - kaglyakhedi, Post - Dhabla Madhosingh, Tah- Bhanpura, Dist. - Mandsaur, Madhya Pradesh,458775'),
(14, 'Arjun Patidar', 8461943228, 'apatidar8461@gmail.com', 'male', 'Spa Pedicure', '2022-11-23', '20:14:00', 'Makan No.-25, Gram - kaglyakhedi, Post - Dhabla Madhosingh, Tah- Bhanpura, Dist. - Mandsaur, Madhya Pradesh,458775'),
(15, 'Nimish Lomhumi', 7898987876, 'nimish@gmail.com', 'male', '     Straightening', '2022-11-08', '06:58:00', 'dinbhandhu nagar ramlal ji'),
(16, 'dipi', 8521234567, 'dipi23@gmail.com', 'Female', 'Spa Pedicure', '2022-11-09', '15:10:00', 'gargi hostel nita'),
(17, 'new', 4568524568, 'new@gmail.com', 'male', '     Straightening', '2022-11-16', '04:42:00', 'mandsaur'),
(18, 'Arjun Patidar', 8461943228, 'apatidar8461@gmail.com', 'male', ' Express Pedicure', '2022-11-02', '08:45:00', 'Makan No.-25, Gram - kaglyakhedi, Post - Dhabla Madhosingh, Tah- Bhanpura, Dist. - Mandsaur, Madhya Pradesh,458775'),
(19, 'humpty', 9754461443, 'humpty34@gmail.com', 'male', 'Spa Pedicure', '2022-12-09', '02:24:00', 'indore'),
(20, 'wow', 2856231496, '', 'male', 'Kids: Boys 12 & Under', '0000-00-00', '04:52:00', 'mumbai');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` bigint(15) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `user_type` varchar(10) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `name`, `email`, `mobile`, `gender`, `user_type`, `password`) VALUES
(1, 'Arjun Patidar', 'apatidar8461@gmail.com', 8461943228, 'male', 'customer', 'a'),
(2, 'ram kumR', 'rnt8461@gmail.com', 8461943228, 'male', 'customer', 'rnt1'),
(3, 'seeta bai', 'seetaram54@gmail.com', 6564852596, 'male', 'customer', '2211'),
(4, 'fake', 'fake22@gmail.com', 8461943228, 'Female', 'customer', '5'),
(5, 'taday chill', 'todaychill123@gmail.com', 1234567890, 'male', 'customer', '123'),
(6, 'Parveen', 'parveen@gmail.com', 7898989878, 'male', 'customer', '12345'),
(7, 'Anuj Mishra', 'annuj@gmail.com', 8989878787, 'male', 'customer', '12345'),
(8, 'Agent pai', 'agentpai55@gmail.com', 8956231478, 'Female', 'customer', '12'),
(9, 'depi ruja', 'dipi23@gmail.com', 8521234567, 'Female', 'customer', '123'),
(10, 'new customer', 'new@gmail.com', 4568524568, 'male', 'customer', '123'),
(11, 'Humpty sharma', 'humpty34@gmail.com', 9754461443, 'male', 'customer', '123');

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `package_id` int(10) NOT NULL,
  `package_name` varchar(50) NOT NULL,
  `price` int(10) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`package_id`, `package_name`, `price`, `description`) VALUES
(1, 'Facial ', 2500, 'This training is complete within 30 days,\r\nthe speciality of this thing a family of skin care treatments for the face, including steam, exfoliation, extraction, creams, lotions, facial masks, peels, and massage.'),
(2, 'Face Massage', 1800, 'This training is complete within 45 days,\r\nthe speciality of this thing the manipulation of the body\'s soft tissues, such as muscles, tendons, ligaments and skin, by using various degrees of pressure and movement.'),
(3, 'Hair Spa', 3500, 'This training is complete within 5 months,\r\nthe speciality of this thing It Strengthens Hair Roots & Follicles, Controls Oil Production in the Scalp and Stimulates Blood Circulation in the Scalp.'),
(4, 'Hair Styles', 4000, 'This training is complete within 6 months,\r\nthe speciality of this thing is the first and foremost reason to select a good hairstyle is because they can enhance their look and personality by using the right hairstyles.'),
(5, 'Beard Styles', 1500, 'This training is complete within 40 days,\r\nthe speciality of this thing is in countries with colder climates, beards help protect the wearer\'s face from the elements and also provide sun protection.'),
(6, 'Body Massage', 6500, 'This training is complete within 10 months,\r\nthe speciality of this thing is Reducing stress and increasing relaxation, Reducing pain and muscle soreness and tension, Improving circulation, energy and alertness. '),
(7, 'VIP Blowouts', 3000, 'This training is complete within 30 days,\r\nthe speciality of this thing is can actually improve the condition of your hair and your style can last for days. '),
(8, 'Straightening', 4000, 'This training is complete within 2 months,\r\nOne of the main benefits of straightening your hair with a hair straightener is its ability to distribute heat equally.'),
(9, 'Head Massage', 1500, 'This training is complete within 30 days,\r\nA head massage may help relieve stress, may also ease migraine or headache pain  and lower blood pressure, improve circulation to your head and neck.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barbers`
--
ALTER TABLE `barbers`
  ADD PRIMARY KEY (`barber_id`);

--
-- Indexes for table `barbers_customers`
--
ALTER TABLE `barbers_customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`package_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barbers`
--
ALTER TABLE `barbers`
  MODIFY `barber_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `barbers_customers`
--
ALTER TABLE `barbers_customers`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `package_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
