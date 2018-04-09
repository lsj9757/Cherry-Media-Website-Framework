-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2018-04-08 14:52:04
-- 服务器版本： 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cherry`
--

-- --------------------------------------------------------

--
-- 表的结构 `personal_info`
--

CREATE TABLE `personal_info` (
  `user_id` char(10) NOT NULL COMMENT '用户id',
  `user_avatar` varchar(255) DEFAULT NULL COMMENT '用户头像',
  `user_account` varchar(255) DEFAULT NULL COMMENT '账号',
  `user_password` varchar(255) DEFAULT NULL COMMENT '密码',
  `user_sex` varchar(255) DEFAULT NULL COMMENT '性别',
  `user_phone_number` varchar(255) DEFAULT NULL COMMENT '手机号',
  `user_email` varchar(255) DEFAULT NULL COMMENT '电子邮箱',
  `user_introduction` varchar(255) DEFAULT NULL COMMENT '个人签名',
  `user_others` varchar(255) DEFAULT NULL COMMENT '预留'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='存储用户个人信息';

-- --------------------------------------------------------

--
-- 表的结构 `vedio_class`
--

CREATE TABLE `vedio_class` (
  `class_id` char(10) NOT NULL COMMENT '类别id',
  `class_name` varchar(255) DEFAULT NULL COMMENT '类别名'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='视频大类';

-- --------------------------------------------------------

--
-- 表的结构 `vedio_class_side`
--

CREATE TABLE `vedio_class_side` (
  `class_id` char(10) DEFAULT NULL COMMENT '大类id',
  `class_side_id` char(10) NOT NULL COMMENT '小类id',
  `class_side_name` varchar(255) DEFAULT NULL COMMENT '小类名'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='视频小类';

-- --------------------------------------------------------

--
-- 表的结构 `vedio_scroll_tab`
--

CREATE TABLE `vedio_scroll_tab` (
  `tab_id` char(10) NOT NULL COMMENT '滚动元素id',
  `tab_image` varchar(255) DEFAULT NULL COMMENT '图片链接',
  `tab_is_scrolling` tinyint(1) DEFAULT NULL COMMENT '是否加入滚动',
  `tab_link_url` varchar(255) DEFAULT NULL COMMENT '链接地址'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='主页滚动栏';

-- --------------------------------------------------------

--
-- 表的结构 `vedio_tags`
--

CREATE TABLE `vedio_tags` (
  `tag_id` char(10) NOT NULL COMMENT '标签id',
  `tag_name` varchar(255) DEFAULT NULL COMMENT '标签名'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='视频标签';

-- --------------------------------------------------------

--
-- 表的结构 `vedio_template`
--

CREATE TABLE `vedio_template` (
  `vedio_id` char(9) NOT NULL COMMENT '视频id',
  `vedio_collections` int(11) DEFAULT NULL COMMENT '视频收藏数',
  `vedio_play_times` int(11) DEFAULT NULL COMMENT '播放次数',
  `vedio_play_duration` varchar(255) DEFAULT NULL COMMENT '总时长',
  `vedio_title` varchar(255) DEFAULT NULL COMMENT '视频标题',
  `vedio_price` float DEFAULT NULL COMMENT '模板价格',
  `vedio_tags_id` varchar(255) DEFAULT NULL COMMENT '所有标签id',
  `vedio_image` varchar(255) DEFAULT NULL COMMENT '预览图片',
  `vedio_order` int(11) DEFAULT NULL COMMENT '优先级',
  `vedio_author` varchar(255) DEFAULT NULL COMMENT '上传者（作者）',
  `vedio_introduce` varchar(255) DEFAULT NULL COMMENT '简介',
  `vedio_activity` varchar(255) DEFAULT NULL COMMENT '活动',
  `vedio_class` char(10) DEFAULT NULL COMMENT '归属大类',
  `vedio_class_side` char(10) DEFAULT NULL COMMENT '归属小类'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='模板视频信息';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `personal_info`
--
ALTER TABLE `personal_info`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `vedio_class`
--
ALTER TABLE `vedio_class`
  ADD PRIMARY KEY (`class_id`);

--
-- Indexes for table `vedio_class_side`
--
ALTER TABLE `vedio_class_side`
  ADD PRIMARY KEY (`class_side_id`),
  ADD KEY `class_id` (`class_id`);

--
-- Indexes for table `vedio_scroll_tab`
--
ALTER TABLE `vedio_scroll_tab`
  ADD PRIMARY KEY (`tab_id`);

--
-- Indexes for table `vedio_tags`
--
ALTER TABLE `vedio_tags`
  ADD PRIMARY KEY (`tag_id`);

--
-- Indexes for table `vedio_template`
--
ALTER TABLE `vedio_template`
  ADD PRIMARY KEY (`vedio_id`);

--
-- 限制导出的表
--

--
-- 限制表 `vedio_class_side`
--
ALTER TABLE `vedio_class_side`
  ADD CONSTRAINT `vedio_class_side_ibfk_1` FOREIGN KEY (`class_id`) REFERENCES `vedio_class` (`class_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
