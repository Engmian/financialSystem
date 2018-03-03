/*
SQLyog Ultimate v11.27 (32 bit)
MySQL - 5.7.17-log : Database - financial_system
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`financial_system` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `financial_system`;

/*Table structure for table `action` */

DROP TABLE IF EXISTS `action`;

CREATE TABLE `action` (
  `act_name` varchar(50) DEFAULT NULL COMMENT '活动名字',
  `act_time_start` date DEFAULT NULL COMMENT '活动开始时间',
  `act_time_end` date DEFAULT NULL COMMENT '活动结束时间',
  `act_pic` varchar(50) DEFAULT NULL COMMENT '活动配图名称'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='活动表';

/*Data for the table `action` */

/*Table structure for table `extra` */

DROP TABLE IF EXISTS `extra`;

CREATE TABLE `extra` (
  `e_id` int(10) NOT NULL AUTO_INCREMENT,
  `e_money` int(10) DEFAULT NULL COMMENT '倦面价值',
  `get_time` date DEFAULT NULL COMMENT '获得时间',
  `limit_time` date DEFAULT NULL COMMENT '到期时间',
  PRIMARY KEY (`e_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='优惠卷表';

/*Data for the table `extra` */

insert  into `extra`(`e_id`,`e_money`,`get_time`,`limit_time`) values (1,100,'2010-10-10','2010-11-10'),(2,50,'2010-09-01','2010-09-16');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `nid` int(11) NOT NULL AUTO_INCREMENT,
  `ntype` char(2) NOT NULL COMMENT '新闻类型',
  `ntitle` varchar(255) NOT NULL COMMENT '新闻标题',
  `ncontent` varchar(255) DEFAULT NULL COMMENT '新闻内容',
  `ndate` date NOT NULL COMMENT '新闻日期',
  PRIMARY KEY (`nid`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

/*Data for the table `news` */

insert  into `news`(`nid`,`ntype`,`ntitle`,`ncontent`,`ndate`) values (1,'0','港股公司与沪深理财达成战略合作 致力普惠金融','2018年2月1日，沪深理财在上海静安香格里拉酒店举办了新闻发布会，宣布香港上市公司扬州泰和农村小额贷款股份有限公司(泰和小贷：08252.HK)与沪深理财正式达成战略合作，进入新的发展阶段。沪深理财是由深圳前海云轩互联网金融服务有限公司成立并运营的互联网金融产品服务信息平台。','2018-02-01'),(2,'0','强化风控体系 沪深理财助力行业合规发展','回顾2017年，国家对互联网金融开始了严厉的专项整治工作，各类重磅监管文件密集出台，带来了网贷行业的“合规规范年”，也是众多平台的新起点。','2018-02-01'),(3,'0','坚持合规发展 沪深理财打造安全高效的投资平台','新的一年，新的起点。进入2018年以来，互联网金融的发展态势依旧蓬勃向上，并且整个产业向着更加创新和综合化的新阶段发展。','2018-02-01'),(6,'0','2018年，为什么供应链金融受到追捧','2018年1月8日，网贷之家发布《2017年中国网络借贷行业年报(完整版)》。作为国内投资理财的权威研究中心，网贷之家在年报的“网络借贷行业前瞻”部分，提出了网贷行业在备案之年的2018年的十大趋势，其中一大趋势为：资产端角逐激烈，供应链金融受捧。','2018-02-06'),(7,'0','沪深理财告诉你：2018年互联网金融的关键词该怎么预测','2018年伊始，朋友圈的人们正在忙着预测自己新一年的关键词。经过了一年的整改，互联网金融行业终于走过了号称监管严冬的2017年。新的一年，正好赶上了 2017年政府众多金融改革政策的开展落实阶段，所以互联网金融行业还是无法平静。','2018-02-03'),(8,'1','关于2018年3月1日公司统一活动的公告','尊敬的投资人，\r\n\r\n      您好，\r\n\r\n      应公司统一活动，故2018年3月1日平台客服热线服务时间调整为9:00-15:00，3月2日恢复正常。\r\n           给您带来的不便敬请谅解！感谢您一直以来对沪深理财的关注和支持。\r\n\r\n \r\n\r\n\r\n沪深理财运营中心\r\n\r\n2018年2月28日','2018-02-07'),(9,'1','关于2018年2月9日公司举办新年年会的公告','尊敬的投资人，\r\n\r\n您好，\r\n\r\n    沪深理财于2018年2月9日举办公司新年年会，客服热线服务时间调整为9:00-16:00，2月10日恢复正常。\r\n\r\n    给您带来的不便敬请谅解！感谢您一直以来对沪深理财的关注和支持。\r\n\r\n \r\n\r\n沪深理财运营中心\r\n\r\n2018年2月8日','2018-02-02'),(10,'1','“大吉大利 组队夺金”获奖排行榜公告','尊敬的投资用户，\r\n\r\n您好，\r\n\r\n截止到2018年2月5日，“大吉大利 组队夺金” 活动第一期已经正式结束了，经过1个月的角逐，终于出现了10支超级战队，成为本期活动的优胜队伍！\r\n\r\n\r\n三人可省力，四人更轻松；\r\n\r\n众人团结紧，万事能成功！\r\n\r\n现金大奖属于他们，无限荣誉属于他们！\r\n\r\n恭喜以下团结致胜的队伍获得本期现金大奖！','2018-02-04'),(11,'1','关于2018年春节放假安排公告','尊敬的投资人，','2018-02-08'),(12,'1','2018.1.26银行维护通知','尊敬的投资人，\r\n\r\n您好，\r\n\r\n接银行通知，部分银行进行\r\n于2018年1月28日03:30—2018年1月28日05:30；进行系统升级维护；\r\n\r\n \r\n\r\n感谢大家的支持！其他银行不受此次维护影响。给您带来的不便敬请谅解！\r\n\r\n\r\n\r\n沪深理财运营中心\r\n\r\n2018年1月26日','2018-02-01'),(13,'0','哦成都分开说赶快结婚的风格','vehjrgviojreojgv','2018-03-01'),(14,'0','eiurhguierg','rthtyhtyju','2018-04-02');

/*Table structure for table `platform_data` */

DROP TABLE IF EXISTS `platform_data`;

CREATE TABLE `platform_data` (
  `pid` int(10) NOT NULL AUTO_INCREMENT,
  `cumulative_investment` int(24) NOT NULL DEFAULT '0' COMMENT '累计投资金额',
  `profit` int(24) NOT NULL DEFAULT '0' COMMENT '已为用户赚取收益',
  `platform_use` int(24) NOT NULL DEFAULT '0' COMMENT '平台用户人数',
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='平台数据表';

/*Data for the table `platform_data` */

insert  into `platform_data`(`pid`,`cumulative_investment`,`profit`,`platform_use`) values (1,32,20,5);

/*Table structure for table `product` */

DROP TABLE IF EXISTS `product`;

CREATE TABLE `product` (
  `pro_id` int(10) NOT NULL AUTO_INCREMENT,
  `pro_type` varchar(24) DEFAULT NULL COMMENT '类型',
  `pro_name` varchar(34) DEFAULT NULL COMMENT '产品名字',
  `pro_pro` varchar(10) DEFAULT NULL COMMENT '收益率',
  `pro_day` int(10) DEFAULT NULL COMMENT '投资期限',
  `pro_total` int(24) DEFAULT NULL COMMENT '总额',
  `back_type` varchar(24) DEFAULT NULL COMMENT '还款方式',
  `pro_build` date DEFAULT NULL COMMENT '成立时间',
  `pro_surplus_time` int(10) DEFAULT NULL COMMENT '剩余时间',
  `pro_can_investment_money` int(24) DEFAULT NULL COMMENT '可投资金额',
  `pro_start_time` date DEFAULT NULL COMMENT '起息时间',
  `pro_desc` varchar(200) DEFAULT NULL COMMENT '项目介绍',
  `pro_use` varchar(80) DEFAULT NULL COMMENT '借款用途',
  `pro_source` varchar(40) DEFAULT NULL COMMENT '还款来源',
  `pro_protect` varchar(30) DEFAULT NULL COMMENT '还款保障',
  `pro_fi` varchar(30) DEFAULT NULL COMMENT '投资条件',
  `pro_canUser` int(4) DEFAULT NULL COMMENT '是否可以投资?0/1',
  `stage` int(11) DEFAULT NULL,
  `platform_discount` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`pro_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='产品信息表';

/*Data for the table `product` */

insert  into `product`(`pro_id`,`pro_type`,`pro_name`,`pro_pro`,`pro_day`,`pro_total`,`back_type`,`pro_build`,`pro_surplus_time`,`pro_can_investment_money`,`pro_start_time`,`pro_desc`,`pro_use`,`pro_source`,`pro_protect`,`pro_fi`,`pro_canUser`,`stage`,`platform_discount`) values (1,'新手专享标',NULL,'12.88%',5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'限投两次',NULL,279,NULL),(2,'沪深活动标',NULL,'8%',180,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'限投一次',NULL,NULL,NULL),(3,'沪深',NULL,'7',30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,488,'3.8'),(4,'沪深',NULL,'8',60,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,222,'3.8'),(5,'沪深',NULL,'8.5',90,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,81,'3.8');

/*Table structure for table `roll_pic` */

DROP TABLE IF EXISTS `roll_pic`;

CREATE TABLE `roll_pic` (
  `pid` int(10) NOT NULL AUTO_INCREMENT,
  `rp_name` varchar(34) DEFAULT NULL COMMENT '图片名字',
  `rp_desc` varchar(50) DEFAULT NULL COMMENT '图片描述',
  `rp_url` varchar(100) DEFAULT NULL COMMENT '图片上传地址',
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='轮播图表';

/*Data for the table `roll_pic` */

insert  into `roll_pic`(`pid`,`rp_name`,`rp_desc`,`rp_url`) values (1,'juhua.jpg','菊花','/static/image');

/*Table structure for table `temporary_account` */

DROP TABLE IF EXISTS `temporary_account`;

CREATE TABLE `temporary_account` (
  `taid` int(11) NOT NULL AUTO_INCREMENT,
  `total_account` int(20) DEFAULT NULL COMMENT '账户总额',
  `monetary` int(20) DEFAULT NULL COMMENT '消费金额',
  `incomes` int(20) DEFAULT NULL COMMENT '待收益数',
  `uPhone` varchar(24) NOT NULL,
  PRIMARY KEY (`taid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `temporary_account` */

insert  into `temporary_account`(`taid`,`total_account`,`monetary`,`incomes`,`uPhone`) values (1,100000,5000,3,'18588450732'),(3,1000000,50000,4,''),(4,5780000,432000,2,'15971627982');

/*Table structure for table `user_info` */

DROP TABLE IF EXISTS `user_info`;

CREATE TABLE `user_info` (
  `uinfo_id` int(10) NOT NULL AUTO_INCREMENT,
  `uinfo_phone` varchar(24) DEFAULT NULL COMMENT '个人手机号码',
  `uinfo_canuseMoneny` int(20) NOT NULL DEFAULT '0' COMMENT '可用余额',
  `uinfo_cumulativeInvestment` int(20) NOT NULL DEFAULT '0' COMMENT '累积投资',
  `uinfo_cumulativeInvestmentProfit` int(20) NOT NULL DEFAULT '0' COMMENT '累积投资收益',
  `uinfo_waitPrincipal` int(20) NOT NULL DEFAULT '0' COMMENT '待收本金',
  `uinfo_frozenMoney` int(20) NOT NULL DEFAULT '0' COMMENT '冻结金额',
  `uinfo_waitProfit` int(20) NOT NULL DEFAULT '0' COMMENT '待收收益',
  PRIMARY KEY (`uinfo_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='个人信息表';

/*Data for the table `user_info` */

insert  into `user_info`(`uinfo_id`,`uinfo_phone`,`uinfo_canuseMoneny`,`uinfo_cumulativeInvestment`,`uinfo_cumulativeInvestmentProfit`,`uinfo_waitPrincipal`,`uinfo_frozenMoney`,`uinfo_waitProfit`) values (1,'13580430667',0,0,0,0,0,0);

/*Table structure for table `user_login` */

DROP TABLE IF EXISTS `user_login`;

CREATE TABLE `user_login` (
  `uId` int(10) NOT NULL AUTO_INCREMENT,
  `uPhone` varchar(24) DEFAULT NULL COMMENT '手机号',
  `uPwd` varchar(34) DEFAULT NULL COMMENT '密码',
  PRIMARY KEY (`uId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `user_login` */

insert  into `user_login`(`uId`,`uPhone`,`uPwd`) values (2,'18588450732','827CCB0EEA8A706C4C34A16891F84E7B'),(3,'123456','123456'),(4,'15971627982','E10ADC3949BA59ABBE56E057F20F883E');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
