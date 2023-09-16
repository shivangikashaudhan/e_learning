-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 29, 2023 at 08:58 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eclasse`
--

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Description` varchar(255) NOT NULL,
  `Prix` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `finee`
--

CREATE TABLE `finee` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` int(11) NOT NULL,
  `link` varchar(255) NOT NULL,
  `password` int(34) NOT NULL,
  `image` varchar(255) NOT NULL,
  `DateOfRegister` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `finee`
--

INSERT INTO `finee` (`id`, `name`, `email`, `mobile`, `link`, `password`, `image`, `DateOfRegister`) VALUES
(1, 'soni', 'shiavngi@gmail.com', 2147483647, 'www.com', 827, 'download/code.png', '2023-07-28 09:52:19'),
(2, 'sonam', 'sonam@gmail.com', 2147483647, 'www.com', 827, 'download/background.jpg', '2023-07-28 09:57:25'),
(3, 'romi', 'romi@gmail.com', 2147483647, 'www.era.com', 827, 'download/apna.jpg', '2023-07-29 17:16:52'),
(4, 'romi', 'romi@gmail.com', 2147483647, 'www.era.com', 827, 'download/d.jpg', '2023-07-29 17:26:26'),
(5, 'rani', 'romi@gmail.com', 2147483647, 'www.era.com', 827, 'download/code.png', '2023-07-29 17:40:24'),
(6, 'rani', 'romi@gmail.com', 2147483647, 'www.era.com', 827, 'download/background.jpg', '2023-07-29 17:49:42'),
(7, 'rani', 'romi@gmail.com', 2147483647, 'www.era.com', 81, 'download/background.jpg', '2023-07-29 17:52:26'),
(8, 'rupa', 'rupa@gmail.com', 2147483647, 'ww.com', 81, 'download/apna.jpg', '2023-07-29 18:03:16'),
(9, 'rupa', 'rupa@gmail.com', 2147483647, 'ww.com', 81, 'download/apna.jpg', '2023-07-29 18:04:20'),
(10, 'rupa', 'rupa@gmail.com', 2147483647, 'ww.com', 81, 'download/apna.jpg', '2023-07-29 18:07:46'),
(11, 'erka', 'rupa@gmail.com', 2147483647, 'ww.com', 99, 'download/code.png', '2023-07-29 18:13:26');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `Email`, `Password`) VALUES
(1, 'sabir', 'sabir@gmail.com', 'Sabir123'),
(2, 'shivangi', 'shiavngi@gmail.com', 'shivangi14'),
(3, 'riya', 'riya@gmail.com', 'shivangi12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `finee`
--
ALTER TABLE `finee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `finee`
--
ALTER TABLE `finee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
