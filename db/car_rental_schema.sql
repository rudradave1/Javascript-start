-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 05, 2021 at 12:32 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `car_rental_schema`
--

-- --------------------------------------------------------

--
-- Table structure for table `credit_cards`
--

CREATE TABLE `credit_cards` (
  `id` int(11) NOT NULL,
  `passenger_id` varchar(255) NOT NULL,
  `cc_number` varchar(255) NOT NULL,
  `status` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `credit_cards`
--

INSERT INTO `credit_cards` (`id`, `passenger_id`, `cc_number`, `status`) VALUES
(1, 'PID1', 'ABCD64646465', 1);

-- --------------------------------------------------------

--
-- Table structure for table `d_wallet`
--

CREATE TABLE `d_wallet` (
  `id` int(11) NOT NULL,
  `transaction_id` varchar(255) NOT NULL,
  `d_amount` int(255) NOT NULL,
  `status` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `d_wallet`
--

INSERT INTO `d_wallet` (`id`, `transaction_id`, `d_amount`, `status`) VALUES
(1, 'TID1', 82, 1),
(2, 'TID2', 174, 1);

-- --------------------------------------------------------

--
-- Table structure for table `netbanking`
--

CREATE TABLE `netbanking` (
  `id` int(11) NOT NULL,
  `passenger_id` varchar(255) NOT NULL,
  `acc_number` varchar(255) NOT NULL,
  `status` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `netbanking`
--

INSERT INTO `netbanking` (`id`, `passenger_id`, `acc_number`, `status`) VALUES
(1, 'PID1', 'ABCD11223', 1);

-- --------------------------------------------------------

--
-- Table structure for table `transaction_data`
--

CREATE TABLE `transaction_data` (
  `id` int(11) NOT NULL,
  `passenger_id` varchar(255) NOT NULL,
  `driver_id` varchar(255) NOT NULL,
  `total_amount` int(50) NOT NULL,
  `transaction_id` varchar(255) NOT NULL,
  `wallet_id` varchar(255) NOT NULL,
  `timestamp` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction_data`
--

INSERT INTO `transaction_data` (`id`, `passenger_id`, `driver_id`, `total_amount`, `transaction_id`, `wallet_id`, `timestamp`) VALUES
(1, 'PID1', 'DID1', 100, 'TID1', 'WID1', '2020-02-25'),
(2, 'PID1', 'DID1', 200, 'TID2', 'WID2', '2020-02-28');

-- --------------------------------------------------------

--
-- Table structure for table `u_wallet`
--

CREATE TABLE `u_wallet` (
  `id` int(11) NOT NULL,
  `transaction_id` varchar(255) NOT NULL,
  `wallet_id` varchar(255) NOT NULL,
  `payment_type` varchar(255) NOT NULL,
  `u_amount` int(255) NOT NULL,
  `status` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `u_wallet`
--

INSERT INTO `u_wallet` (`id`, `transaction_id`, `wallet_id`, `payment_type`, `u_amount`, `status`) VALUES
(1, 'TID1', 'WID1', 'Credit Card', 118, 1),
(2, 'TID2', 'WID2', 'Credit Card', 236, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wallet_details`
--

CREATE TABLE `wallet_details` (
  `id` int(11) NOT NULL,
  `passenger_id` varchar(255) NOT NULL,
  `wallet_number` varchar(255) NOT NULL,
  `status` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wallet_details`
--

INSERT INTO `wallet_details` (`id`, `passenger_id`, `wallet_number`, `status`) VALUES
(1, 'PID1', 'WAINDIOSN123', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wallet_types`
--

CREATE TABLE `wallet_types` (
  `id` int(11) NOT NULL,
  `wallet_id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wallet_types`
--

INSERT INTO `wallet_types` (`id`, `wallet_id`, `name`) VALUES
(1, 'WID1', 'Credit Card'),
(2, 'WID2', 'Netbanking');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `credit_cards`
--
ALTER TABLE `credit_cards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `d_wallet`
--
ALTER TABLE `d_wallet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `netbanking`
--
ALTER TABLE `netbanking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction_data`
--
ALTER TABLE `transaction_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `u_wallet`
--
ALTER TABLE `u_wallet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wallet_details`
--
ALTER TABLE `wallet_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wallet_types`
--
ALTER TABLE `wallet_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `wallet_id` (`wallet_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `credit_cards`
--
ALTER TABLE `credit_cards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `d_wallet`
--
ALTER TABLE `d_wallet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `netbanking`
--
ALTER TABLE `netbanking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `transaction_data`
--
ALTER TABLE `transaction_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `u_wallet`
--
ALTER TABLE `u_wallet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wallet_details`
--
ALTER TABLE `wallet_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wallet_types`
--
ALTER TABLE `wallet_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
