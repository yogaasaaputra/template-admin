-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 09, 2020 at 05:16 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `template-admin`
--

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `image` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `image`, `password`, `role_id`, `is_active`, `date_created`) VALUES
(3, 'Yoga Saputra', 'yoga.saputra16@mhs.ubharajaya.ac.id', 'img11.jpg', '$2y$10$hLxmT3a8W6OGHt/fhTnLO.IZ8w9D5UJ8SO4Zkw9h8P1LtisbSVLUO', 1, 1, 1585643173);

-- --------------------------------------------------------

--
-- Table structure for table `user_access_menu`
--

CREATE TABLE `user_access_menu` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_access_menu`
--

INSERT INTO `user_access_menu` (`id`, `role_id`, `menu_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 2),
(6, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `user_menu`
--

CREATE TABLE `user_menu` (
  `id` int(11) NOT NULL,
  `menu` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_menu`
--

INSERT INTO `user_menu` (`id`, `menu`) VALUES
(1, 'Admin'),
(2, 'User'),
(3, 'Menu');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id`, `role`) VALUES
(1, 'Administrator'),
(2, 'Member');

-- --------------------------------------------------------

--
-- Table structure for table `user_sub_menu`
--

CREATE TABLE `user_sub_menu` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `url` varchar(128) NOT NULL,
  `icon` varchar(128) NOT NULL,
  `is_active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_sub_menu`
--

INSERT INTO `user_sub_menu` (`id`, `menu_id`, `title`, `url`, `icon`, `is_active`) VALUES
(1, 1, 'Dashboard', 'admin', 'fa fa-home', 1),
(2, 2, 'My Profile', 'user', 'fa fa-user', 1),
(3, 2, 'Edit Profile', 'user/edit', 'fa fa-pencil-square-o', 1),
(4, 3, 'Menu Management', 'menu', 'fa fa-folder', 1),
(5, 3, 'Submenu Management', 'menu/submenu', 'fa fa-folder-open', 1),
(6, 2, 'Change Password', 'user/changepassword', 'fa fa-key', 1),
(7, 1, 'Role', 'admin/role', 'fa fa-user-plus', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_token`
--

CREATE TABLE `user_token` (
  `id` int(11) NOT NULL,
  `email` varchar(128) NOT NULL,
  `token` varchar(128) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_token`
--

INSERT INTO `user_token` (`id`, `email`, `token`, `date_created`) VALUES
(1, 'yoga.saputra16@mhs.ubharajaya.ac.id', 'hdRyLdSFR2EyMTDsmKh5XFhzVeZhuFJ3OkonNVF1yCw=', 1594902830),
(2, 'yoga.saputra16@mhs.ubharajaya.ac.id', '96ysSZp5CtY0M5O7F/UoqMiTY3oKEoMf7QhDkCN6nbw=', 1594902897),
(3, 'yoga.saputra16@mhs.ubharajaya.ac.id', 'rU74kH2APPj64BWhjBkE5WY+JMQkwHe4/+MP8TZ6jvE=', 1594903390),
(4, 'yoga.saputra16@mhs.ubharajaya.ac.id', 'Vmd3Htc4YOmoa6m9UTmMDCbv4ygk6q7thqOIkFLDcfY=', 1594903766),
(5, 'yoga.saputra16@mhs.ubharajaya.ac.id', 'hSds47HfRcm9t0Ho7rtd4pWZ4RFC37v7rVZ+y7KVrN8=', 1594903833),
(6, 'yoga.saputra16@mhs.ubharajaya.ac.id', 'jhOEih6Z8JEPE5BLlAi9kjNa/fN2f7RKc4WM+GvzzuI=', 1594903927),
(7, 'yoga.saputra16@mhs.ubharajaya.ac.id', 'GTHhYqM5flOM4wQRf0lPZ6ZNdBoJrihUlOKBg3JdpuE=', 1594904113),
(8, 'yoga.saputra16@mhs.ubharajaya.ac.id', 'P7ymqHNjKok92Aoj7QiH3Pqh963mapw5MF5mCpvkQNk=', 1594904615),
(9, 'yoga.saputra16@mhs.ubharajaya.ac.id', 'KCUQfplJRt/5gA9W7qyhkfm6FqR0CddKBPBM60r+9rQ=', 1594904642),
(10, 'yoga.saputra16@mhs.ubharajaya.ac.id', 'et4nwr1ESo0CijJkW55xKdyTayUNk/o6Z4BJKCFz6VU=', 1594904684),
(11, 'yoga.saputra16@mhs.ubharajaya.ac.id', 'VnK4MstRU1As6dDiUJJTDaiiMTb3vWsAfLv2AVXM+pg=', 1594904708),
(12, 'yoga.saputra16@mhs.ubharajaya.ac.id', 'zMmW9OpjDWqHvaBruqmn6FIIDomlEPRf0ctSoTHxXdA=', 1594904746),
(13, 'yoga.saputra16@mhs.ubharajaya.ac.id', '7fitNrvodlnXPytbdHh/BhAuJej5ldUO6d8MD4Wnk08=', 1594904777),
(14, 'yoga.saputra16@mhs.ubharajaya.ac.id', 'xLj5BJJ413LVbg2PtnVbi6WxFIuqEOUaEIfgibJAiTY=', 1594904832),
(15, 'yoga.saputra16@mhs.ubharajaya.ac.id', 'n99msWZwmwkOOUcnsD/4nR56/4wuPunZBOaTENC2XwM=', 1594905013),
(16, 'yoga.saputra16@mhs.ubharajaya.ac.id', '1/dPkHp133CNIE5sxTLNexlAn8V5nnUb0MRdd95aeXA=', 1594905119),
(17, 'yoga.saputra16@mhs.ubharajaya.ac.id', 'eqd6nxw3KfkJTsKAij4UVPDu7oXwQFrF1cVKavJBkK4=', 1594905136),
(18, 'yoga.saputra16@mhs.ubharajaya.ac.id', '2u9OGJLbTJuOMcL7gx5t5osvx+LP3XDZ1nEl3kXZlLE=', 1594905216),
(19, 'yoga.saputra16@mhs.ubharajaya.ac.id', 'zc9R12LicTwtpx/KoT9e1wmmY7U4C4ZdlmKZvITx6xs=', 1594905228),
(20, 'yoga.saputra16@mhs.ubharajaya.ac.id', '7696cM4DT23Q+XPUQCSajG2XKEWUSe5pr6M5hEhQ7wc=', 1594905236),
(21, 'yoga.saputra16@mhs.ubharajaya.ac.id', '2O1j6o6j6o+CrZFEGmOcwGPruM6RInM2+ICSkrfXExI=', 1594905250),
(22, 'yoga.saputra16@mhs.ubharajaya.ac.id', 'lmr7xMdtpiXyDlqgyOvU9gsRGBgMfzQ4snu9/zOCJ3U=', 1594905397),
(23, 'yoga.saputra16@mhs.ubharajaya.ac.id', '8RyWIHSHTYqVyFdvxtvhH57pmrlZ0Y9Izq/CRGPil40=', 1594905438),
(24, 'yoga.saputra16@mhs.ubharajaya.ac.id', 'oiv6JS/daummlkgAuqhQLct8DLLyLU8pEkmr8qOPcLU=', 1594905604),
(25, 'rinblow69@gmail.com', 'KrFYpE/eWDGIqNpgxJLJdDY/fqaRD/qPfpGVcixmskU=', 1594905736),
(26, 'juna.karta98@gmail.com', 'bgbVvLWq0M+N8E4kUhU8Js3qZuWbWXVZWBCfOJD/lnw=', 1594905883),
(27, 'yoga.saputra16@mhs.ubharajaya.ac.id', 'r6GtspMiqSiNM+LOtHoHLN2JfIXTmxb42+ZP1qOvJBk=', 1595429219),
(28, 'yoga.saputra16@mhs.ubharajaya.ac.id', 'zLsZVWLo9LUTSwJa/V318c+AwhqxjniD50bYYtCF/QU=', 1595429424),
(29, 'yoga.saputra16@mhs.ubharajaya.ac.id', 'qNr/oqhQFAS946z2EqIdTlRecs0dhxlX8zCfkvfsbD4=', 1595429437),
(30, 'yoga.saputra16@mhs.ubharajaya.ac.id', 'Wm1CU9szwzyrCK/RJRTvA+VnPjSH+CMPWMddquR/aK8=', 1595429455),
(31, 'yoga.saputra16@mhs.ubharajaya.ac.id', 'asSlv/9GQpscpU9ZWVoAeYDrIA3b37WuCDd2UQvqmIc=', 1599661359),
(32, 'yoga.saputra16@mhs.ubharajaya.ac.id', 'L0+q58oHR86fFMZNyTa0YbdK8FnialsdJXPRnZX6DWE=', 1599661573),
(33, 'yoga.saputra16@mhs.ubharajaya.ac.id', 'MkURtUMDx2Cl4m7eRKVOfKy5myAArAGHpjO+f0q/bFY=', 1599661611),
(34, 'yoga.saputra16@mhs.ubharajaya.ac.id', 'oW6ktSv/2YcMOgY0Q4lGkTPUN2vnZUL66fdgGLmyjX8=', 1599662330),
(35, 'yoga.saputra16@mhs.ubharajaya.ac.id', 'Zv2yK1zSsBs8PTDiNBCo72SXocv7lSdATZ9JgU9zfzI=', 1599663294);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_menu`
--
ALTER TABLE `user_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_token`
--
ALTER TABLE `user_token`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `user_menu`
--
ALTER TABLE `user_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `user_token`
--
ALTER TABLE `user_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
