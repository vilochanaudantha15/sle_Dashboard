-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 05, 2025 at 04:48 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `slenew`
--

-- --------------------------------------------------------

--
-- Table structure for table `alumindaily_images`
--

CREATE TABLE `alumindaily_images` (
  `id` int(11) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `alumindaily_images`
--

INSERT INTO `alumindaily_images` (`id`, `image_url`, `date`) VALUES
(1, '/uploads/1740461829269.jpeg', '2025-02-21'),
(2, '/uploads/1740458961720.jpeg', '2025-02-25'),
(3, '/uploads/1740458973379.jpeg', '2025-02-25'),
(4, '/uploads/1740458981154.jpeg', '2025-02-25');

-- --------------------------------------------------------

--
-- Table structure for table `aluminum_data`
--

CREATE TABLE `aluminum_data` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `name` varchar(255) NOT NULL,
  `task` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `aluminum_data`
--

INSERT INTO `aluminum_data` (`id`, `date`, `name`, `task`) VALUES
(1, '2025-02-06', 'vilochana', 'System Maintaince');

-- --------------------------------------------------------

--
-- Table structure for table `aluminum_labour_data`
--

CREATE TABLE `aluminum_labour_data` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `SkilledLabour` int(11) NOT NULL,
  `SemiSkilledLabour` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `aluminum_labour_data`
--

INSERT INTO `aluminum_labour_data` (`id`, `date`, `SkilledLabour`, `SemiSkilledLabour`, `created_at`, `updated_at`) VALUES
(1, '2025-02-13', 2, 3, '2025-02-13 08:51:59', '2025-02-13 08:51:59');

-- --------------------------------------------------------

--
-- Table structure for table `aluminum_status`
--

CREATE TABLE `aluminum_status` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `start` time NOT NULL,
  `end` time NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `aluminum_status`
--

INSERT INTO `aluminum_status` (`id`, `date`, `start`, `end`, `status`, `created_at`, `updated_at`) VALUES
(1, '2025-02-13', '04:42:00', '16:43:00', 'active', '2025-02-13 09:11:36', '2025-02-13 09:11:36');

-- --------------------------------------------------------

--
-- Table structure for table `biomed_data`
--

CREATE TABLE `biomed_data` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `units` int(11) NOT NULL,
  `tarif` decimal(10,2) NOT NULL DEFAULT 10.00,
  `revenue` decimal(10,2) NOT NULL,
  `plant_factor` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `biomed_data`
--

INSERT INTO `biomed_data` (`id`, `date`, `units`, `tarif`, `revenue`, `plant_factor`) VALUES
(2, '2025-02-13', 11464, '18.57', '212886.48', NULL),
(3, '2025-02-12', 10700, '18.57', '198699.00', NULL),
(4, '2025-02-11', 15700, '18.57', '291549.00', NULL),
(6, '2025-02-14', 11464, '18.57', '212886.48', NULL),
(9, '2025-02-17', 21000, '18.57', '389970.00', NULL),
(12, '2025-02-23', 8006, '18.57', '148671.42', '25.66'),
(13, '2025-02-23', 5207, '18.57', '96693.99', '16.69'),
(14, '2025-02-24', 5027, '18.57', '93351.39', '16.11'),
(15, '2025-03-03', 18000, '18.57', '334260.00', '57.69');

-- --------------------------------------------------------

--
-- Table structure for table `biomed_image`
--

CREATE TABLE `biomed_image` (
  `id` int(11) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `biomed_image`
--

INSERT INTO `biomed_image` (`id`, `image_url`, `date`) VALUES
(1, '/uploads/1740456085839.webp', '2025-02-25'),
(2, '/uploads/1740456107322.webp', '2025-02-25'),
(3, '/uploads/1740456120647.webp', '2025-02-25'),
(4, '/uploads/1740456133103.jpg', '2025-02-25');

-- --------------------------------------------------------

--
-- Table structure for table `bmachines`
--

CREATE TABLE `bmachines` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` enum('Running','Average','Shut Down') NOT NULL DEFAULT 'Running',
  `details` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bmachines`
--

INSERT INTO `bmachines` (`id`, `name`, `status`, `details`) VALUES
(1, 'Turbine 1', 'Running', 'Operational turbine with full capacity.'),
(2, 'Turbine 2', 'Average', 'Operational turbine with full capacity.'),
(3, 'Generator 1', 'Running', 'Generator is in service, powering the facility.'),
(4, 'Generator 2', 'Running', 'Generator is in service, powering the facility.'),
(5, 'Hydraulic Unit', 'Running', 'Hydraulic unit is fully functional and working efficiently.'),
(6, 'Lubrication System', 'Running', 'Lubrication system is operational, maintaining necessary levels.'),
(7, 'Dewatering System', 'Running', 'Dewatering system running smoothly with minor checks.'),
(8, 'Medium Voltage Panel', 'Running', 'Medium voltage panel is functioning without issues.'),
(9, 'Low Voltage Panel', 'Running', 'Low voltage panel is working as expected.'),
(10, 'Battery Pack', 'Running', 'Battery pack is fully charged and operational.'),
(11, 'Control Panel', 'Shut Down', 'Control panel is in normal operation mode.'),
(12, 'Station Service Panel', 'Running', 'Station service panel in optimal working condition.'),
(13, 'Motor Control Panel', 'Shut Down', 'Motor control panel is online and working as expected.'),
(14, 'Decentralized Control Common', 'Running', 'Decentralized control system is active and efficient.'),
(15, 'Inlet Valve and Control System', 'Running', 'Inlet valve system in service and functioning well.'),
(16, 'Bypass Valve and Control System (Water Bypass)', 'Running', 'Bypass valve is in operational mode.'),
(17, 'Auxiliary Generator (Outside)', 'Running', 'Auxiliary generator is ready and operational.'),
(18, 'Transformer', 'Running', 'Transformer is online and providing necessary power.'),
(19, 'CT PT Transformer', 'Running', 'CT PT transformer is working without malfunctions.'),
(20, 'Auto Re-closer', 'Running', 'Auto re-closer in active mode, ensuring safety.'),
(21, 'Mechanical Bypass Unit (33,000)', 'Running', 'Mechanical bypass unit is fully operational.'),
(22, 'Overhead Crane', 'Running', 'Overhead crane is functioning properly for material handling.');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `plant_id` int(11) NOT NULL,
  `timestamp` datetime DEFAULT current_timestamp(),
  `parent_comment_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `user_name`, `text`, `plant_id`, `timestamp`, `parent_comment_id`) VALUES
(49, 2, 'vilochana', 'whats your name', 2, '2025-03-04 06:45:03', NULL),
(50, 8, 'nimal', 'nimal', 2, '2025-03-04 06:45:44', 49),
(51, 8, 'nimal', 'how many units biomed produced yesterday', 2, '2025-03-04 06:49:23', NULL),
(52, 2, 'vilochana', '23000', 2, '2025-03-04 06:49:59', 51);

-- --------------------------------------------------------

--
-- Table structure for table `deduruoya_data`
--

CREATE TABLE `deduruoya_data` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `units` int(11) NOT NULL,
  `tarif` decimal(10,2) NOT NULL DEFAULT 10.00,
  `revenue` decimal(10,2) NOT NULL,
  `plant_factor` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `deduruoya_data`
--

INSERT INTO `deduruoya_data` (`id`, `date`, `units`, `tarif`, `revenue`, `plant_factor`) VALUES
(4, '2025-02-12', 21000, '18.16', '381360.00', NULL),
(5, '2025-02-11', 21000, '18.16', '381360.00', NULL),
(13, '2025-02-17', 23000, '18.16', '417680.00', NULL),
(23, '2025-02-22', 23000, '18.16', '417680.00', '73.72'),
(26, '2025-03-02', 24000, '18.16', '617440.00', '108.97'),
(28, '2025-03-03', 24500, '18.16', '444920.00', '78.53');

-- --------------------------------------------------------

--
-- Table structure for table `deduru_daily_images`
--

CREATE TABLE `deduru_daily_images` (
  `id` int(11) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `deduru_daily_images`
--

INSERT INTO `deduru_daily_images` (`id`, `image_url`, `date`) VALUES
(4, '/uploads/1740461629815.jpg', '2025-01-29'),
(5, '/uploads/1740388197986.jpg', '2025-02-23'),
(6, '/uploads/1740052320498.png', '2025-02-20'),
(7, '/uploads/1740052329657.jpg', '2025-02-19');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `start` datetime NOT NULL,
  `end` datetime NOT NULL,
  `color` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `title`, `description`, `start`, `end`, `color`) VALUES
(21, 'Board Meeting', 'Board Meeting at Head Office', '2025-03-03 18:30:00', '2025-03-05 18:30:00', '#4A90E2'),
(22, 'Tender Opening', 'At Head Office', '2025-03-18 18:30:00', '2025-03-20 18:30:00', '#6F7C99'),
(23, 'Manager Meeting', 'Manager Meeting', '2025-03-27 18:30:00', '2025-03-29 18:30:00', '#7ED321'),
(24, 'Anniversary ', 'anniversary ', '2025-03-29 18:30:00', '2025-03-30 18:30:00', '#9E9E9E');

-- --------------------------------------------------------

--
-- Table structure for table `expenditure`
--

CREATE TABLE `expenditure` (
  `id` int(11) NOT NULL,
  `plant_name` varchar(255) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `expenditure`
--

INSERT INTO `expenditure` (`id`, `plant_name`, `amount`, `date`) VALUES
(1, 'Deduru Oya', '9800000.00', '2025-02-19 11:14:44'),
(2, 'Kumbalgamuwa', '32.00', '2025-02-19 11:14:44'),
(3, 'Biomed', '350000.00', '2025-02-19 11:14:44'),
(4, 'Memp', '4000000.00', '2025-02-19 11:14:44'),
(5, 'Solor', '180000.00', '2025-02-19 11:14:44');

-- --------------------------------------------------------

--
-- Table structure for table `kmachines`
--

CREATE TABLE `kmachines` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` enum('Running','Average','Shut Down') NOT NULL,
  `details` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kmachines`
--

INSERT INTO `kmachines` (`id`, `name`, `status`, `details`) VALUES
(1, 'Francis Turbine', 'Running', 'Main turbine unit, currently operating at optimal performance.'),
(2, 'Hydraulic Unit', 'Average', 'Hydraulic unit with periodic maintenance due.'),
(3, 'Lubrication System', 'Shut Down', 'Lubrication system shut down for annual inspection.'),
(4, 'Power Generator', 'Running', 'Generator is working efficiently, supporting the power grid.'),
(5, 'Dewatering System', 'Average', 'Dewatering system needs filter replacement.'),
(6, 'MV Panel', 'Running', 'Medium voltage panel functioning normally with no issues.'),
(7, 'LV Panel', 'Shut Down', 'Low voltage panel under repair due to technical malfunction.'),
(8, 'UPS System', 'Running', 'Battery pack is fully charged and operating as expected.'),
(9, 'Main Control Panel', 'Average', 'Control panel with minor issues requiring attention.'),
(10, 'Station Service Panel', 'Running', 'Station service panel is in full operation.'),
(13, 'Main Inlet Valve', 'Running', 'Inlet valve and control system is functioning normally.'),
(14, 'Bypass Valve ', 'Shut Down', 'Bypass valve is shut down for maintenance.'),
(15, 'Diesel Generator', 'Running', 'Auxiliary generator is fully functional, ready for use.'),
(16, 'Power Transformer', 'Average', 'Transformer operating with minor issues, under observation.'),
(17, 'CT PT Unit', 'Running', 'CT PT Transformer is operating at full capacity.'),
(20, 'Overhead Crane', 'Running', 'Overhead crane is in operation for material handling.');

-- --------------------------------------------------------

--
-- Table structure for table `kumbaldaily_images`
--

CREATE TABLE `kumbaldaily_images` (
  `id` int(11) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kumbaldaily_images`
--

INSERT INTO `kumbaldaily_images` (`id`, `image_url`, `date`) VALUES
(1, '/uploads/1740459463931.jpg', '2025-02-25'),
(2, '/uploads/1740459496074.jpg', '2025-02-25'),
(3, '/uploads/1740459508746.jpg', '2025-02-25'),
(4, '/uploads/1740459517529.jpg', '2025-02-25');

-- --------------------------------------------------------

--
-- Table structure for table `kumbalgamuwa_data`
--

CREATE TABLE `kumbalgamuwa_data` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `units` int(11) NOT NULL,
  `tarif` decimal(10,2) NOT NULL DEFAULT 10.00,
  `revenue` decimal(10,2) NOT NULL,
  `plant_factor` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kumbalgamuwa_data`
--

INSERT INTO `kumbalgamuwa_data` (`id`, `date`, `units`, `tarif`, `revenue`, `plant_factor`) VALUES
(13, '2025-02-22', 21294, '9.27', '197395.38', '68.25'),
(15, '2025-02-24', 21000, '9.27', '194670.00', '67.31'),
(16, '2025-02-25', 18000, '9.27', '166860.00', '57.69');

-- --------------------------------------------------------

--
-- Table structure for table `machines`
--

CREATE TABLE `machines` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` enum('Running','Average','Shut Down') NOT NULL,
  `details` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `machines`
--

INSERT INTO `machines` (`id`, `name`, `status`, `details`) VALUES
(32, 'Decentralized Control Common', 'Running', 'Decentralized control system experiencing low performance.'),
(33, 'Inlet Valve and Control System', 'Running', 'Inlet valve and control system is functioning normally.'),
(34, 'By pass Valve and Control System', 'Shut Down', 'Bypass valve is shut down for maintenance.'),
(35, 'Auxiliary Generator (outside)', 'Running', 'Auxiliary generator is fully functional, ready for use.'),
(36, 'Transformer', 'Average', 'Transformer operating with minor issues, under observation.'),
(37, 'CT PT Transformer', 'Running', 'CT PT Transformer is operating at full capacity.'),
(38, 'Auto Re-closer', 'Shut Down', 'Auto re-closer temporarily shut down for system testing.'),
(39, 'Mechanical Bypass unit (33,000)', 'Average', 'Mechanical bypass unit performing at average efficiency.'),
(40, 'Overhead Crane', 'Running', 'Overhead crane is in operation for material handling.'),
(41, 'Turbine', 'Running', 'Operational turbine with full capacity.'),
(42, 'Hydraulic Unit', 'Running', 'Hydraulic unit is fully functional and working efficiently.'),
(43, 'Lubrication System', 'Running', 'Lubrication system is operational, maintaining necessary levels.'),
(44, 'Generator', 'Running', 'Generator is in service, powering the facility.'),
(45, 'Dewatering System', 'Running', 'Dewatering system running smoothly with minor checks.'),
(46, 'Medium Voltage Panel', 'Running', 'Medium voltage panel is functioning without issues.'),
(47, 'Low Voltage Panel', 'Running', 'Low voltage panel is working as expected.'),
(48, 'Battery Pack', 'Running', 'Battery pack is fully charged and operational.'),
(49, 'Control Panel', 'Running', 'Control panel is in normal operation mode.'),
(50, 'Station Service Panel', 'Running', 'Station service panel in optimal working condition.'),
(51, 'Motor Control Panel', 'Running', 'Motor control panel is online and working as expected.'),
(52, 'Decentralized Control Common', 'Running', 'Decentralized control system is active and efficient.'),
(53, 'Inlet Valve and Control System', 'Running', 'Inlet valve system in service and functioning well.'),
(54, 'By pass Valve and Control System', 'Running', 'Bypass valve is in operational mode.'),
(55, 'Auxiliary Generator (outside)', 'Running', 'Auxiliary generator is ready and operational.'),
(56, 'Transformer', 'Running', 'Transformer is online and providing necessary power.'),
(57, 'CT PT Transformer', 'Running', 'CT PT transformer is working without malfunctions.'),
(58, 'Auto Re-closer', 'Running', 'Auto re-closer in active mode, ensuring safety.'),
(59, 'Mechanical Bypass unit (33,000)', 'Running', 'Mechanical bypass unit is fully operational.'),
(60, 'Overhead Crane', 'Running', 'Overhead crane is functioning properly for material handling.');

-- --------------------------------------------------------

--
-- Table structure for table `manpower_data`
--

CREATE TABLE `manpower_data` (
  `id` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `month` varchar(10) NOT NULL,
  `workers` int(11) NOT NULL,
  `income` decimal(10,2) NOT NULL,
  `profit` decimal(10,2) NOT NULL,
  `salary` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `manpower_data`
--

INSERT INTO `manpower_data` (`id`, `year`, `month`, `workers`, `income`, `profit`, `salary`) VALUES
(9, 2025, 'Jan', 180, '3500000.00', '1500000.00', '2000000.00'),
(10, 2025, 'Feb', 180, '2000000.00', '500000.00', '1500000.00'),
(11, 2025, 'Mar', 180, '3800000.00', '2500000.00', '1300000.00'),
(12, 2025, 'Apr', 180, '4800000.00', '3500000.00', '2300000.00');

-- --------------------------------------------------------

--
-- Table structure for table `mempdaily_images`
--

CREATE TABLE `mempdaily_images` (
  `id` int(11) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mempdaily_images`
--

INSERT INTO `mempdaily_images` (`id`, `image_url`, `date`) VALUES
(1, '/uploads/1740457630246.jpg', '2025-02-25');

-- --------------------------------------------------------

--
-- Table structure for table `mempmachines`
--

CREATE TABLE `mempmachines` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` enum('Running','Average','Shut Down') NOT NULL DEFAULT 'Running',
  `details` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mempmachines`
--

INSERT INTO `mempmachines` (`id`, `name`, `status`, `details`) VALUES
(1, 'IMM I', 'Shut Down', 'Injection Molding Machine 1 is operational.'),
(2, 'IMM II', 'Running', 'Injection Molding Machine 2 is operational.'),
(3, 'IMM III', 'Running', 'Injection Molding Machine 3 is operational.'),
(4, 'Hopper I', 'Running', 'Hopper 1 is in working condition.'),
(5, 'Hopper II', 'Running', 'Hopper 2 is in working condition.'),
(6, 'Hopper III', 'Running', 'Hopper 3 is in working condition.'),
(7, 'Auto Loader I', 'Running', 'Auto Loader 1 is functioning properly.'),
(8, 'Auto Loader II', 'Running', 'Auto Loader 2 is functioning properly.'),
(9, 'Auto Loader III', 'Running', 'Auto Loader 3 is functioning properly.'),
(10, 'Chiller I', 'Running', 'Chiller 1 is cooling efficiently.'),
(11, 'Chiller II', 'Running', 'Chiller 2 is cooling efficiently.'),
(12, 'Chiller III', 'Running', 'Chiller 3 is cooling efficiently.'),
(13, 'Colour Doser', 'Running', 'Colour dosing system is operational.'),
(14, 'Compressor I', 'Running', 'Compressor 1 is supplying air properly.'),
(15, 'Compressor II', 'Running', 'Compressor 2 is supplying air properly.'),
(16, 'Compressor III', 'Running', 'Compressor 3 is supplying air properly.'),
(17, 'Crusher', 'Running', 'Crusher is in operation without any issues.'),
(18, 'Gantry Crane', 'Running', 'Gantry crane is operational and in use.'),
(19, 'Diesel Generator', 'Running', 'Diesel generator is providing backup power.');

-- --------------------------------------------------------

--
-- Table structure for table `memp_data`
--

CREATE TABLE `memp_data` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `dispatch` int(11) NOT NULL,
  `manufactured` int(11) NOT NULL,
  `good_covers` int(11) NOT NULL,
  `good_bases` int(11) NOT NULL,
  `good_shutters` int(11) NOT NULL,
  `defect_covers` int(11) NOT NULL,
  `defect_bases` int(11) NOT NULL,
  `defect_shutters` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `memp_data`
--

INSERT INTO `memp_data` (`id`, `date`, `dispatch`, `manufactured`, `good_covers`, `good_bases`, `good_shutters`, `defect_covers`, `defect_bases`, `defect_shutters`) VALUES
(1, '2025-02-13', 32, 321, 2, 1, 45, 6, 49, 76),
(2, '2025-02-12', 65, 3, 23, 54, 65, 65, 65, 43),
(3, '2025-02-09', 32, 55, 77, 66, 44, 4, 6, 8);

-- --------------------------------------------------------

--
-- Table structure for table `plants`
--

CREATE TABLE `plants` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `efficiency` int(11) NOT NULL,
  `category` varchar(255) DEFAULT NULL,
  `img` varchar(255) NOT NULL,
  `manager_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `plants`
--

INSERT INTO `plants` (`id`, `name`, `efficiency`, `category`, `img`, `manager_id`) VALUES
(2, 'Deduruoya', 73, 'PowerStation', '1738579168113.jpg', 2),
(3, 'Kumbalgamuwa', 78, 'PowerStation', '1738579203277.png', NULL),
(4, 'Biomed', 73, 'PowerStation', '1738579224236.jpeg', 4),
(5, 'Meter Manufacturing', 0, 'Production Plant', '1738579243142.png', 5),
(6, 'Aluminum Recycling', 0, 'Production Plant', '1738579260314.png', NULL),
(7, 'Solar Department', 0, 'Production Plant', '1738579302101.png', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `plant_daily_images`
--

CREATE TABLE `plant_daily_images` (
  `id` int(11) NOT NULL,
  `plant_id` int(11) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `caption` text DEFAULT NULL,
  `upload_date` date NOT NULL,
  `uploaded_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `project_summary`
--

CREATE TABLE `project_summary` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` varchar(50) NOT NULL,
  `completion_percentage` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `last_updated` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `project_summary`
--

INSERT INTO `project_summary` (`id`, `name`, `status`, `completion_percentage`, `type`, `last_updated`) VALUES
(1, 'Dik Ella', 'pre-feasibility', 50, 'Dik Ella', '2025-02-23'),
(2, 'Wekanthale', 'feasibility', 90, 'Wekanthale', '2025-02-27'),
(3, 'Algoda', 'On-Hold', 40, 'Algoda', '2023-10-13'),
(4, 'Broadland', 'pre-feasibility', 75, 'Broadland', '2025-02-28'),
(5, 'Victoria', 'ten', 60, 'Victoria', '2025-03-01'),
(6, 'Upper Samanalawewa', 'Pre-Feasibility', 100, 'Upper Samanalawewa', '2023-09-01');

-- --------------------------------------------------------

--
-- Table structure for table `receivables`
--

CREATE TABLE `receivables` (
  `id` int(11) NOT NULL,
  `plant_name` varchar(255) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `receivables`
--

INSERT INTO `receivables` (`id`, `plant_name`, `amount`, `date`) VALUES
(1, 'Deduru Oya', '1200000.00', '2025-02-19 12:11:25'),
(2, 'Kumbalgamuwa', '12000.50', '2025-02-19 12:11:25'),
(3, 'Biomed', '7500.75', '2025-02-19 12:11:25'),
(4, 'Memp', '8000.00', '2025-02-19 12:11:25'),
(5, 'Solor', '9500.25', '2025-02-19 12:11:25');

-- --------------------------------------------------------

--
-- Table structure for table `solor_image`
--

CREATE TABLE `solor_image` (
  `id` int(11) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `solor_image`
--

INSERT INTO `solor_image` (`id`, `image_url`, `date`) VALUES
(1, '/uploads/1740461015904.jpeg', '2024-12-29'),
(2, '/uploads/1740461033937.jpeg', '2024-12-29'),
(3, '/uploads/1740461047358.jpeg', '2024-12-29'),
(4, '/uploads/1740461060147.jpeg', '2024-12-29');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(15) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `userType` enum('user','admin') DEFAULT 'user',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `isManager` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `mobile`, `password`, `userType`, `created_at`, `isManager`) VALUES
(2, 'vilochana', 'vilochanaudanthaa@gmail.com', '0724875256', '$2a$10$s6DhDoQY/Ph/Bzb1Ofd4n.G0gLqgRsf/KiInPSL7WDiz4RyKK3ruW', 'admin', '2025-01-30 09:19:30', 1),
(3, 'indrachapa', 'indrachapa@gmail.com', '1234567890', '$2a$10$p4X4G352/.Q9g.qVV624iOA.uA2sfpmEiqAItKrxhrE75a2.uQ.kK', 'user', '2025-01-30 11:14:48', 1),
(4, 'gayantha', 'gayantha@gmail.com', '1234567890', '$2a$10$be.NQZdBL1WDE0Wbup4h6.Hm/okaqgGEAt89EgpUP9nilNw6S0tdG', 'admin', '2025-01-31 03:05:31', 1),
(5, 'udantha', 'udantha@gmail.com', '0763268224', '$2a$10$uK0uBY5WbNDoL0.8YkIfkOpI.i5eydMLEFHA3n84kIy30qE1NoDqq', 'admin', '2025-01-31 03:50:13', 1),
(6, 'vilochanaIndra', 'viludap@gmail.com', '0723911426', '$2a$10$XYMzArVEen4SXFO93sL6O.WtvfxAwlfdek1Q28Rm1aBnTKwEWrOgG', 'admin', '2025-02-03 05:42:36', 0),
(7, 'udan', 'projectmobile240@gmail.com', '0746875553', '$2a$10$BZbuTtohw.Vjqm..fVdABuqRquvNjy2uzZa68H2HxdvnmDijktUcW', 'admin', '2025-02-17 09:11:06', 0),
(8, 'nimal', 'nimal@gmail.com', '1234567892', '$2a$10$ffVs5DUtVRrfz1P/avAmO.n1Ozc96GMAuqY7Ub5oK2e3IHSZGiw7a', 'user', '2025-02-25 10:37:11', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alumindaily_images`
--
ALTER TABLE `alumindaily_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aluminum_data`
--
ALTER TABLE `aluminum_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aluminum_labour_data`
--
ALTER TABLE `aluminum_labour_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aluminum_status`
--
ALTER TABLE `aluminum_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `biomed_data`
--
ALTER TABLE `biomed_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `biomed_image`
--
ALTER TABLE `biomed_image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bmachines`
--
ALTER TABLE `bmachines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `deduruoya_data`
--
ALTER TABLE `deduruoya_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deduru_daily_images`
--
ALTER TABLE `deduru_daily_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expenditure`
--
ALTER TABLE `expenditure`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kmachines`
--
ALTER TABLE `kmachines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kumbaldaily_images`
--
ALTER TABLE `kumbaldaily_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kumbalgamuwa_data`
--
ALTER TABLE `kumbalgamuwa_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `machines`
--
ALTER TABLE `machines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manpower_data`
--
ALTER TABLE `manpower_data`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_year_month` (`year`,`month`);

--
-- Indexes for table `mempdaily_images`
--
ALTER TABLE `mempdaily_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mempmachines`
--
ALTER TABLE `mempmachines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `memp_data`
--
ALTER TABLE `memp_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plants`
--
ALTER TABLE `plants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plant_daily_images`
--
ALTER TABLE `plant_daily_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_summary`
--
ALTER TABLE `project_summary`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `receivables`
--
ALTER TABLE `receivables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `solor_image`
--
ALTER TABLE `solor_image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alumindaily_images`
--
ALTER TABLE `alumindaily_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `aluminum_data`
--
ALTER TABLE `aluminum_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `aluminum_labour_data`
--
ALTER TABLE `aluminum_labour_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `aluminum_status`
--
ALTER TABLE `aluminum_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `biomed_data`
--
ALTER TABLE `biomed_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `biomed_image`
--
ALTER TABLE `biomed_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `bmachines`
--
ALTER TABLE `bmachines`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `deduruoya_data`
--
ALTER TABLE `deduruoya_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `deduru_daily_images`
--
ALTER TABLE `deduru_daily_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `expenditure`
--
ALTER TABLE `expenditure`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `kmachines`
--
ALTER TABLE `kmachines`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `kumbaldaily_images`
--
ALTER TABLE `kumbaldaily_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `kumbalgamuwa_data`
--
ALTER TABLE `kumbalgamuwa_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `machines`
--
ALTER TABLE `machines`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `manpower_data`
--
ALTER TABLE `manpower_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `mempdaily_images`
--
ALTER TABLE `mempdaily_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mempmachines`
--
ALTER TABLE `mempmachines`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `memp_data`
--
ALTER TABLE `memp_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `plants`
--
ALTER TABLE `plants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `plant_daily_images`
--
ALTER TABLE `plant_daily_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `project_summary`
--
ALTER TABLE `project_summary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `receivables`
--
ALTER TABLE `receivables`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `solor_image`
--
ALTER TABLE `solor_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
