-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2015 年 11 月 02 日 21:45
-- 服务器版本: 5.6.12-log
-- PHP 版本: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `bookstore`
--
CREATE DATABASE IF NOT EXISTS `bookstore` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `bookstore`;

-- --------------------------------------------------------

--
-- 表的结构 `tb_bigtype`
--

CREATE TABLE IF NOT EXISTS `tb_bigtype` (
  `b_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '大类别ID',
  `b_name` varchar(50) DEFAULT NULL COMMENT '类型名',
  PRIMARY KEY (`b_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- 转存表中的数据 `tb_bigtype`
--

INSERT INTO `tb_bigtype` (`b_id`, `b_name`) VALUES
(1, '计算机理论'),
(2, '硬件'),
(3, '操作系统'),
(4, '程序设计'),
(5, '网络与数据通信'),
(6, '图形图像'),
(7, '软件工程'),
(8, '人工智能'),
(9, '数据库');

-- --------------------------------------------------------

--
-- 表的结构 `tb_book`
--

CREATE TABLE IF NOT EXISTS `tb_book` (
  `book_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '书ID',
  `book_name` varchar(50) DEFAULT NULL COMMENT '书名',
  `book_author` varchar(50) DEFAULT NULL COMMENT '作者',
  `book_isbn` varchar(10) DEFAULT NULL COMMENT '图书isbn码',
  `book_pubid` int(11) DEFAULT NULL COMMENT '出版社ID',
  `book_pubtime` datetime DEFAULT NULL COMMENT '出版时间',
  `s_id` int(11) DEFAULT NULL COMMENT '书小类型ID',
  `book_addtime` datetime DEFAULT NULL COMMENT '添加时间',
  `book_oldprice` float DEFAULT NULL COMMENT '书原价',
  `book_newprice` float DEFAULT NULL COMMENT '本站的价格',
  `book_img` varchar(100) DEFAULT NULL COMMENT '书图片路径',
  `book_zs` int(11) DEFAULT NULL COMMENT '图书字数',
  `book_bc` varchar(50) DEFAULT NULL COMMENT '版权',
  `book_about` text COMMENT '图书介绍',
  `book_directory` text COMMENT '图书目录',
  `book_idnew` bit(1) DEFAULT NULL COMMENT '是否为新书',
  `book_issepprice` bit(1) DEFAULT NULL COMMENT '是否特价',
  `book_ishost` bit(1) DEFAULT NULL COMMENT '是否热卖',
  `book_ishave` bit(1) DEFAULT NULL COMMENT '是否有货',
  `book_bookcc` int(11) DEFAULT NULL COMMENT '书的层次',
  `book_browsertime` int(11) DEFAULT NULL COMMENT '浏览次数',
  `book_sell` int(11) DEFAULT '0' COMMENT '售量销',
  PRIMARY KEY (`book_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `tb_book`
--

INSERT INTO `tb_book` (`book_id`, `book_name`, `book_author`, `book_isbn`, `book_pubid`, `book_pubtime`, `s_id`, `book_addtime`, `book_oldprice`, `book_newprice`, `book_img`, `book_zs`, `book_bc`, `book_about`, `book_directory`, `book_idnew`, `book_issepprice`, `book_ishost`, `book_ishave`, `book_bookcc`, `book_browsertime`, `book_sell`) VALUES
(1, 'ASP.NET 4高级程序设计：第4版', ' 麦克唐纳(MacDonald,M.)', '9787115253', 1, '2011-06-01 00:00:00', 2, '2011-06-01 00:00:00', 148, 111, 'asp1.jpg', NULL, NULL, '《ASP.NET 4高级程序设计(第4版)》是ASP.NET领域的鸿篇巨制，全面讲解了ASP.NET4的各种特性及其背后的工作原理，并给出了许多针对如何构建复杂、可扩展的网站从实践中得出的建议。书中还深入讲述了其他ASP.NET图书遗漏的高级主题，如自定义控件的创建、图像处理、加密等。此外，《ASP.NET 4高级程序设计(第4版)》专门提供了两章的内容来教你如何用Ajax 技术制作快速响应的页面，以及如何使用微软的ASP.NETAJAX平台。另外，还专门介绍了ASP.NET4 新增的功能，如MVC 和动态数据等。\r\n　　《ASP.NET 4高级程序设计(第4版)》适合各层次的ASP.NET程序员阅读。', '第一部分　核心概念<br/>\r\n第1章　ASP.NET简介　2<br/>\r\n1.1　ASP.NET的7大要点　2<br/>\r\n1.1.1　要点1：ASP.NET是同.NETFramework集成在一起的　2<br/>\r\n1.1.2　要点2：ASP.NET是编译执行的，而不是解释执行的　3<br/>\r\n1.1.3　要点3：ASP.NET支持多语言　4<br/>\r\n1.1.4　要点4：ASP.NET运行在公共语言运行库内　6<br/>\r\n1.1.5　要点5：ASP.NET是面向对象的　7<br/>\r\n1.1.6　要点6：ASP.NET支持所有的浏览器　8<br/>\r\n1.1.7　要点7：ASP.NET易于部署和配置　8<br/>\r\n1.2　ASP.NET的演变　9<br/>\r\n1.2.1　ASP.NET1.0和ASP.NET1.1　9<br/>\r\n1.2.2　 ASP.NET2.0　9<br/>\r\n1.2.3　ASP.NET3.5　10<br/>\r\n1.2.4　ASP.NET4　12<br/>', NULL, b'1', NULL, b'1', NULL, NULL, 0),
(2, '实战突击：ASP.NET项目开发案例整合(含DVD光盘1张)', '明日科技', '9787121141', 1, '2011-09-01 00:00:00', 2, NULL, 89.8, 61.9, 'asp2.jpg', NULL, NULL, '《实战突击：asp.net项目开发案例整合(含dvd光盘1张)》以在线播客视频网、电子商务平台、ajax校内数码相册、博客管理系统、网上在线论坛、企业门户网站、城市小区物业内部管理网、无纸化在线考试网、图书馆管理系统、新闻发布系统、企业内部办公系统、物流信息管理平台、个人空间类web网站、互动媒体学习社区、征婚交友网站、校友录数码相册网、供求信息网、龙行天下搜索引擎、明日网络硬盘、仿百度知道之明日知道、企业级通用进销存软件开发web版等21个实际项目开发程序为案例，从软件工程的角度出发，按照项目的开发顺序，系统、全面地介绍了程序的开发流程。从开发背景、需求分析、系统功能分析、数据库分析、数据库结构、系统开发到系统的编译发行，每一过程都进行了详细的介绍。\r\n　　《实战突击：asp.net项目开发案例整合(含dvd光盘1张)》所附配套光盘提供了书中所有案例的全部源代码，所有源代码都经过精心调试，在windows 2000、windows xp、windows 2003和windows 7下全部通过，保证能够正常运行。', '第1篇 小型项目篇<br/>\r\n　第1章 在线播客视频网<br/>\r\n　第2章 电子商务平台<br/>\r\n　第3章 ajax校内数码相册<br/>\r\n　第4章 博客管理系统<br/>\r\n　第5章 网上在线论坛<br/>\r\n　第6章 企业门户网站<br/>\r\n　第7章 城市小区物业内部管理网<br/>\r\n第2篇 中型项目篇<br/>\r\n　第8章 无纸化在线考试网<br/>\r\n　第9章 图书馆管理系统<br/>\r\n　第10章 新闻发布系统<br/>\r\n　第11章 企业内部办公系统<br/>\r\n　第12章 物流信息管理平台<br/>\r\n　第13章 个人空间类web网站<br/>', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(3, '名师讲坛——PHP开发实战权威指南', '张恩民', '9787302282', 1, '2012-03-01 00:00:00', 1, NULL, 59.8, 49.9, 'php1.jpg', NULL, NULL, '《PHP开发实战权威指南》主要介绍了PHP 5编程的相关知识。主要内容包括PHP基础知识与XHTML、PHP环境搭建与工具、PHP的基本语法、PHP中的数组、PHP面向对象编程、字符串处理与正则表达式、PHP文件系统处理、MySQL数据库、数据库抽象层——PDO和ADOdb、Cookie和Session、PHP的模板技术Smarty、PHP图形处理及应用、PHP与XML、PHP与cURL、PHP功能模块的开发、项目开发与设计以及OA管理系统开发等。\r\n　　《PHP开发实战权威指南》既适合作为PHP初中级学者的参考书，也适合作为高等院校相关专业、软件学院的教材。\r\n　　《PHP开发实战权威指南》光盘提供如下内容：\r\n　　专业教学视频100集：PHP100中文网提供的专业教学视频100集。\r\n　　精致教学PPT 100讲：专业级教学PPT文件100讲。\r\n　　精选源码90套：含近年PHP100论坛资源和下载区精品源码90套。\r\n　　PHP开发必备手册14本：含PHP开发过程中常用手册14本，包括最新的PHP5.3手册等。', '第1章  PHP基础知识与XHTML<br/>\r\n　（教学视频、PPT、必备手册、开发工具、精选源码、相关素材）<br/>\r\n　1.1  PHP的发展与特点<br/>\r\n　　1.1.1  PHP语言的发展和特点<br/>\r\n　　1.1.2  PHP 5.3之后的新特性<br/>\r\n　　1.1.3  PHP程序员应具备的知识<br/>\r\n　　1.1.4  B/S结构软件开发特点<br/>\r\n　　1.1.5  PHP与其他脚本语言的比较<br/>\r\n　1.2  XHTML基础知识<br/>\r\n　　1.2.1  XHTML基础介绍<br/>\r\n　　1.2.2  XHTML语言的语法<br/>\r\n　　1.2.3  文件的主体结构<br/>\r\n　　1.2.4  XHTML文字、图像、视频、动画的处理<br/>\r\n　　1.2.5  XHTML中表单的处理<br/>\r\n　　1.2.6  XHTML中框架的处理<br/>', NULL, b'1', NULL, NULL, NULL, NULL, 3);

-- --------------------------------------------------------

--
-- 表的结构 `tb_order`
--

CREATE TABLE IF NOT EXISTS `tb_order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '订单ID',
  `b_id` int(11) DEFAULT NULL COMMENT '打类型Id',
  `user_name` varchar(50) DEFAULT NULL COMMENT '订购人的昵称',
  `user_truename` varchar(50) DEFAULT NULL COMMENT '订购人的真实名字',
  `user_address` varchar(100) DEFAULT NULL COMMENT '订购人地址',
  `user_sex` char(2) DEFAULT NULL COMMENT '订购人的性别',
  `user_yb` char(10) DEFAULT NULL COMMENT '订购人的邮政编码',
  `user_tel` char(20) DEFAULT NULL COMMENT '订购人电话',
  `book_newprice` float DEFAULT NULL COMMENT '订购价格',
  `order_yjprice` float DEFAULT NULL COMMENT '邮寄价格',
  `order_num` int(11) DEFAULT NULL COMMENT '定数量',
  `order_totalprice` float DEFAULT NULL COMMENT '总价格',
  `order_rectype` varchar(20) DEFAULT NULL COMMENT '收货方式',
  `order_paytype` varchar(20) DEFAULT NULL COMMENT '支付方式',
  `order_addtIme` datetime DEFAULT NULL COMMENT '订单时间',
  `order_isfk` bit(1) DEFAULT b'0' COMMENT '是否付款',
  `order_idfh` bit(1) DEFAULT b'0' COMMENT '是否发货',
  `order_issh` bit(1) DEFAULT b'0' COMMENT '是否收获',
  `order_idqx` bit(1) DEFAULT b'0' COMMENT '是否取消',
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tb_smalltype`
--

CREATE TABLE IF NOT EXISTS `tb_smalltype` (
  `s_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '小类型Id',
  `s_name` varchar(50) DEFAULT NULL COMMENT '小类型名',
  `b_id` varchar(50) DEFAULT NULL COMMENT '大类型Id',
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- 转存表中的数据 `tb_smalltype`
--

INSERT INTO `tb_smalltype` (`s_id`, `s_name`, `b_id`) VALUES
(1, 'PHP', '4'),
(2, 'asp.net', '4'),
(3, 'javaScript', '4'),
(4, 'falsh', '4'),
(5, 'java', '4'),
(6, 'Oracle', '9'),
(7, 'sql', '9'),
(8, 'Foxpro', '9'),
(9, 'Access', '9'),
(10, 'CorelDRAW', '6'),
(11, 'Photoshop', '6'),
(12, 'Illustrator', '6'),
(13, 'falsh', '6');

-- --------------------------------------------------------

--
-- 表的结构 `tb_user`
--

CREATE TABLE IF NOT EXISTS `tb_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户Id',
  `user_name` varchar(50) DEFAULT NULL COMMENT '用户昵称',
  `user_truename` varchar(50) DEFAULT NULL COMMENT '真实名字',
  `user_pwd` char(50) DEFAULT NULL COMMENT '用户密码',
  `user_email` varchar(50) DEFAULT NULL COMMENT 'email',
  `user_sex` char(2) DEFAULT NULL COMMENT '性别',
  `user_tel` char(20) DEFAULT NULL COMMENT '联系电话',
  `user_qq` char(20) DEFAULT NULL COMMENT 'QQ',
  `user_address` varchar(100) DEFAULT NULL COMMENT '地址',
  `user_logintimes` int(11) DEFAULT NULL COMMENT '登陆次数',
  `user_ip` char(20) DEFAULT NULL COMMENT 'ip',
  `user_yb` char(20) DEFAULT NULL COMMENT '邮政编码',
  `user_type` tinyint(4) DEFAULT NULL COMMENT '用户类别标识',
  `user_question` varchar(200) DEFAULT NULL COMMENT '要回密码问题',
  `user_answer` varchar(200) DEFAULT NULL COMMENT '要回密码问题',
  `user_photo` varchar(50) DEFAULT NULL COMMENT '照片地址',
  `user_truepwd` char(50) DEFAULT NULL COMMENT '真实密码',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `tb_user`
--

INSERT INTO `tb_user` (`user_id`, `user_name`, `user_truename`, `user_pwd`, `user_email`, `user_sex`, `user_tel`, `user_qq`, `user_address`, `user_logintimes`, `user_ip`, `user_yb`, `user_type`, `user_question`, `user_answer`, `user_photo`, `user_truepwd`) VALUES
(1, 'a', NULL, '187ef4436122d1cc2f40dc2b92f0eba0', 'a@aa.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'aa', NULL, '187ef4436122d1cc2f40dc2b92f0eba0', 'a@aa.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'aaa', NULL, '187ef4436122d1cc2f40dc2b92f0eba0', 'a@aa.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'aaaa', NULL, '187ef4436122d1cc2f40dc2b92f0eba0', 'a@aa.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
