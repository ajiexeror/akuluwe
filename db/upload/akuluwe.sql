-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jul 16, 2021 at 07:01 PM
-- Server version: 5.7.32
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `akuluwe`
--

-- --------------------------------------------------------

--
-- Table structure for table `vfs_active_status`
--

CREATE TABLE `vfs_active_status` (
  `status_id` int(10) NOT NULL DEFAULT '0',
  `active_status` varchar(30) DEFAULT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `vfs_active_status`
--

INSERT INTO `vfs_active_status` (`status_id`, `active_status`, `description`) VALUES
(0, 'INACTIVE', 'Suspended / Not Active'),
(1, 'ACTIVE', 'Active'),
(2, 'PENDING', 'Waiting for Activation'),
(3, 'TERMINATE', 'User / Group Terminated');

-- --------------------------------------------------------

--
-- Table structure for table `vfs_groups`
--

CREATE TABLE `vfs_groups` (
  `group_id` int(10) NOT NULL,
  `group_name` varchar(100) DEFAULT NULL,
  `group_sub_status` int(1) DEFAULT NULL,
  `group_status` varchar(30) DEFAULT NULL,
  `sys_create_date` datetime DEFAULT NULL,
  `sys_update_date` datetime DEFAULT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `vfs_groups`
--

INSERT INTO `vfs_groups` (`group_id`, `group_name`, `group_sub_status`, `group_status`, `sys_create_date`, `sys_update_date`, `description`) VALUES
(1000, 'SYS_ADMIN', 1, 'ACTIVE', '2020-05-15 16:04:39', NULL, 'Administrator'),
(1001, 'SYS_USER', 0, 'INACTIVE', '2020-05-15 16:20:56', NULL, 'Admin User'),
(1002, 'APP_USER', 0, 'INACTIVE', '2021-01-17 20:56:00', NULL, 'Application User');

-- --------------------------------------------------------

--
-- Table structure for table `vfs_package`
--

CREATE TABLE `vfs_package` (
  `package_id` int(10) NOT NULL,
  `package_type_key` int(10) DEFAULT NULL,
  `package_name` varchar(50) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `package_status` varchar(255) DEFAULT NULL,
  `sys_create_date` datetime DEFAULT NULL,
  `sys_update_date` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `vfs_package`
--

INSERT INTO `vfs_package` (`package_id`, `package_type_key`, `package_name`, `description`, `package_status`, `sys_create_date`, `sys_update_date`) VALUES
(1, 0, 'SysAdmin', 'System & Admin Configuration', 'ACTIVE', '2020-06-05 13:54:03', '2020-06-05 13:54:03'),
(2, 0, 'UserAdmin', 'User & Admin Configuration', 'ACTIVE', '2020-06-05 13:56:00', '2020-06-05 13:56:00'),
(3, 0, 'UserApp', 'Application Users', 'ACTIVE', '2021-01-17 20:56:00', '2021-01-17 20:56:00');

-- --------------------------------------------------------

--
-- Table structure for table `vfs_package_class`
--

CREATE TABLE `vfs_package_class` (
  `package_id` int(10) NOT NULL,
  `package_type_key` int(10) NOT NULL,
  `package_class_id` int(10) NOT NULL,
  `class_name` varchar(100) NOT NULL,
  `class_alias` varchar(100) NOT NULL,
  `class_status` varchar(1) NOT NULL,
  `sys_create_date` datetime DEFAULT NULL,
  `sys_update_date` datetime DEFAULT NULL,
  `package_node` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vfs_package_class`
--

INSERT INTO `vfs_package_class` (`package_id`, `package_type_key`, `package_class_id`, `class_name`, `class_alias`, `class_status`, `sys_create_date`, `sys_update_date`, `package_node`) VALUES
(1, 0, 90000, 'System', 'System', '1', '2020-05-27 02:41:54', '2020-05-27 02:41:54', NULL),
(1, 90000, 90001, 'Homepage', 'Homepage', '1', '2020-06-03 11:46:40', '2020-06-03 11:46:40', NULL),
(1, 90000, 90002, 'Settings', 'Settings', '1', '2020-06-04 00:39:31', '2020-06-04 00:39:31', NULL),
(1, 90000, 90003, 'User', 'User', '1', '2020-06-04 10:07:55', '2020-06-04 10:07:55', NULL),
(2, 0, 91000, 'Administrator', 'Admin', '1', '2020-06-04 10:07:55', '2020-06-04 10:07:55', NULL),
(2, 91000, 91001, 'Homepage', 'Homepage', '1', '2020-06-04 10:07:55', '2020-06-04 10:07:55', NULL),
(2, 91000, 91002, 'Profile Setting', 'Profile Setting', '1', '2020-06-04 10:07:55', '2020-06-04 10:07:55', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vfs_users`
--

CREATE TABLE `vfs_users` (
  `uid` int(10) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_sub_status` int(1) DEFAULT NULL,
  `user_status` varchar(30) DEFAULT NULL,
  `verified_date` datetime DEFAULT NULL,
  `sys_create_date` datetime DEFAULT NULL,
  `sys_update_date` datetime DEFAULT NULL,
  `user_group_class` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `vfs_active_status`
--
ALTER TABLE `vfs_active_status`
  ADD PRIMARY KEY (`status_id`);

--
-- Indexes for table `vfs_groups`
--
ALTER TABLE `vfs_groups`
  ADD PRIMARY KEY (`group_id`);

--
-- Indexes for table `vfs_package`
--
ALTER TABLE `vfs_package`
  ADD PRIMARY KEY (`package_id`);

--
-- Indexes for table `vfs_users`
--
ALTER TABLE `vfs_users`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `vfs_groups`
--
ALTER TABLE `vfs_groups`
  MODIFY `group_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1003;

--
-- AUTO_INCREMENT for table `vfs_package`
--
ALTER TABLE `vfs_package`
  MODIFY `package_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `vfs_users`
--
ALTER TABLE `vfs_users`
  MODIFY `uid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1003;
