/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - wuliuguanlixitong
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`wuliuguanlixitong` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `wuliuguanlixitong`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(20) NOT NULL COMMENT '创建用户',
  `address_name` varchar(200) NOT NULL COMMENT '收货人 ',
  `address_phone` varchar(200) NOT NULL COMMENT '电话 ',
  `address_dizhi` varchar(200) NOT NULL COMMENT '地址 ',
  `isdefault_types` int(11) NOT NULL COMMENT '是否默认地址 ',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='收货地址';

/*Data for the table `address` */

insert  into `address`(`id`,`yonghu_id`,`address_name`,`address_phone`,`address_dizhi`,`isdefault_types`,`insert_time`,`update_time`,`create_time`) values (1,1,'收货人1','17703786901','地址1',1,'2023-05-09 15:54:29','2023-05-09 15:54:29','2023-05-09 15:54:29'),(2,2,'收货人2','17703786902','地址2',1,'2023-05-09 15:54:29','2023-05-09 15:54:29','2023-05-09 15:54:29'),(3,2,'收货人3','17703786903','地址3',1,'2023-05-09 15:54:29','2023-05-09 15:54:29','2023-05-09 15:54:29'),(4,2,'收货人4','17703786904','地址4',1,'2023-05-09 15:54:29','2023-05-09 15:54:29','2023-05-09 15:54:29'),(5,2,'收货人5','17703786905','地址5',1,'2023-05-09 15:54:29','2023-05-09 15:54:29','2023-05-09 15:54:29'),(6,3,'收货人6','17703786906','地址6',1,'2023-05-09 15:54:29','2023-05-09 15:54:29','2023-05-09 15:54:29'),(7,2,'收货人7','17703786907','地址7',1,'2023-05-09 15:54:29','2023-05-09 15:54:29','2023-05-09 15:54:29'),(8,3,'收货人8','17703786908','地址8',1,'2023-05-09 15:54:29','2023-05-09 15:54:29','2023-05-09 15:54:29'),(9,3,'收货人9','17703786909','地址9',1,'2023-05-09 15:54:29','2023-05-09 15:54:29','2023-05-09 15:54:29'),(10,2,'收货人10','17703786910','地址10',1,'2023-05-09 15:54:29','2023-05-09 15:54:29','2023-05-09 15:54:29'),(11,3,'收货人11','17703786911','地址11',1,'2023-05-09 15:54:29','2023-05-09 15:54:29','2023-05-09 15:54:29'),(12,1,'收货人12','17703786912','地址12',1,'2023-05-09 15:54:29','2023-05-09 15:54:29','2023-05-09 15:54:29'),(13,3,'收货人13','17703786913','地址13',1,'2023-05-09 15:54:29','2023-05-09 15:54:29','2023-05-09 15:54:29'),(14,3,'收货人14','17703786914','地址14',1,'2023-05-09 15:54:29','2023-05-09 15:54:29','2023-05-09 15:54:29');

/*Table structure for table `cangku` */

DROP TABLE IF EXISTS `cangku`;

CREATE TABLE `cangku` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `cangku_name` varchar(200) DEFAULT NULL COMMENT '仓库名称  Search111 ',
  `cangku_uuid_number` varchar(200) DEFAULT NULL COMMENT '仓库编号',
  `cangku_photo` varchar(200) DEFAULT NULL COMMENT '仓库照片',
  `cangku_address` varchar(200) DEFAULT NULL COMMENT '仓库地点',
  `cangku_types` int(11) DEFAULT NULL COMMENT '仓库类型 Search111',
  `cangku_content` longtext COMMENT '仓库介绍 ',
  `cangku_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='仓库';

/*Data for the table `cangku` */

insert  into `cangku`(`id`,`cangku_name`,`cangku_uuid_number`,`cangku_photo`,`cangku_address`,`cangku_types`,`cangku_content`,`cangku_delete`,`insert_time`,`create_time`) values (1,'仓库名称1','1683618869456','upload/cangku1.jpg','仓库地点1',1,'仓库介绍1',1,'2023-05-09 15:54:29','2023-05-09 15:54:29'),(2,'仓库名称2','1683618869457','upload/cangku2.jpg','仓库地点2',2,'仓库介绍2',1,'2023-05-09 15:54:29','2023-05-09 15:54:29'),(3,'仓库名称3','1683618869371','upload/cangku3.jpg','仓库地点3',2,'仓库介绍3',1,'2023-05-09 15:54:29','2023-05-09 15:54:29'),(4,'仓库名称4','1683618869372','upload/cangku4.jpg','仓库地点4',4,'仓库介绍4',1,'2023-05-09 15:54:29','2023-05-09 15:54:29'),(5,'仓库名称5','1683618869457','upload/cangku5.jpg','仓库地点5',4,'仓库介绍5',1,'2023-05-09 15:54:29','2023-05-09 15:54:29'),(6,'仓库名称6','1683618869373','upload/cangku6.jpg','仓库地点6',2,'仓库介绍6',1,'2023-05-09 15:54:29','2023-05-09 15:54:29'),(7,'仓库名称7','1683618869410','upload/cangku7.jpg','仓库地点7',2,'仓库介绍7',1,'2023-05-09 15:54:29','2023-05-09 15:54:29'),(8,'仓库名称8','1683618869429','upload/cangku8.jpg','仓库地点8',3,'仓库介绍8',1,'2023-05-09 15:54:29','2023-05-09 15:54:29'),(9,'仓库名称9','1683618869393','upload/cangku9.jpg','仓库地点9',4,'仓库介绍9',1,'2023-05-09 15:54:29','2023-05-09 15:54:29'),(10,'仓库名称10','1683618869426','upload/cangku10.jpg','仓库地点10',2,'仓库介绍10',1,'2023-05-09 15:54:29','2023-05-09 15:54:29'),(11,'仓库名称11','1683618869457','upload/cangku11.jpg','仓库地点11',1,'仓库介绍11',1,'2023-05-09 15:54:29','2023-05-09 15:54:29'),(12,'仓库名称12','1683618869375','upload/cangku12.jpg','仓库地点12',2,'仓库介绍12',1,'2023-05-09 15:54:29','2023-05-09 15:54:29'),(13,'仓库名称13','1683618869398','upload/cangku13.jpg','仓库地点13',4,'仓库介绍13',1,'2023-05-09 15:54:29','2023-05-09 15:54:29'),(14,'仓库名称14','1683618869414','upload/cangku14.jpg','仓库地点14',4,'<p>仓库介绍1454234523</p>',1,'2023-05-09 15:54:29','2023-05-09 15:54:29');

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '提问用户',
  `chat_issue` varchar(200) DEFAULT NULL COMMENT '问题',
  `issue_time` timestamp NULL DEFAULT NULL COMMENT '问题时间 Search111',
  `chat_reply` varchar(200) DEFAULT NULL COMMENT '回复',
  `reply_time` timestamp NULL DEFAULT NULL COMMENT '回复时间 Search111',
  `zhuangtai_types` int(255) DEFAULT NULL COMMENT '状态',
  `chat_types` int(11) DEFAULT NULL COMMENT '数据类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='反馈信息';

/*Data for the table `chat` */

insert  into `chat`(`id`,`yonghu_id`,`chat_issue`,`issue_time`,`chat_reply`,`reply_time`,`zhuangtai_types`,`chat_types`,`insert_time`) values (1,1,'丫丫','2023-05-09 17:42:59',NULL,NULL,2,1,'2023-05-09 17:43:00'),(2,1,NULL,NULL,'阿萨德','2023-05-09 17:45:32',NULL,2,'2023-05-09 17:45:33');

/*Table structure for table `cheliang` */

DROP TABLE IF EXISTS `cheliang`;

CREATE TABLE `cheliang` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `cheliang_name` varchar(200) DEFAULT NULL COMMENT '车辆名称  Search111 ',
  `cheliang_uuid_number` varchar(200) DEFAULT NULL COMMENT '车辆编号',
  `cheliang_photo` varchar(200) DEFAULT NULL COMMENT '车辆照片',
  `cheliang_paizhao` varchar(200) DEFAULT NULL COMMENT '车辆牌照',
  `cheliang_types` int(11) DEFAULT NULL COMMENT '车辆类型 Search111',
  `cheliang_content` longtext COMMENT '车辆介绍 ',
  `cheliang_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='车辆';

/*Data for the table `cheliang` */

insert  into `cheliang`(`id`,`cheliang_name`,`cheliang_uuid_number`,`cheliang_photo`,`cheliang_paizhao`,`cheliang_types`,`cheliang_content`,`cheliang_delete`,`insert_time`,`create_time`) values (1,'车辆名称1','1683618869445','upload/cheliang1.jpg','车辆牌照1',4,'车辆介绍1',1,'2023-05-09 15:54:29','2023-05-09 15:54:29'),(2,'车辆名称2','1683618869450','upload/cheliang2.jpg','车辆牌照2',1,'车辆介绍2',1,'2023-05-09 15:54:29','2023-05-09 15:54:29'),(3,'车辆名称3','1683618869382','upload/cheliang3.jpg','车辆牌照3',2,'车辆介绍3',1,'2023-05-09 15:54:29','2023-05-09 15:54:29'),(4,'车辆名称4','1683618869421','upload/cheliang4.jpg','车辆牌照4',1,'车辆介绍4',1,'2023-05-09 15:54:29','2023-05-09 15:54:29'),(5,'车辆名称5','1683618869443','upload/cheliang5.jpg','车辆牌照5',4,'车辆介绍5',1,'2023-05-09 15:54:29','2023-05-09 15:54:29'),(6,'车辆名称6','1683618869373','upload/cheliang6.jpg','车辆牌照6',3,'车辆介绍6',1,'2023-05-09 15:54:29','2023-05-09 15:54:29'),(7,'车辆名称7','1683618869427','upload/cheliang7.jpg','车辆牌照7',2,'车辆介绍7',1,'2023-05-09 15:54:29','2023-05-09 15:54:29'),(8,'车辆名称8','1683618869387','upload/cheliang8.jpg','车辆牌照8',2,'车辆介绍8',1,'2023-05-09 15:54:29','2023-05-09 15:54:29'),(9,'车辆名称9','1683618869445','upload/cheliang9.jpg','车辆牌照9',4,'车辆介绍9',1,'2023-05-09 15:54:29','2023-05-09 15:54:29'),(10,'车辆名称10','1683618869400','upload/cheliang10.jpg','车辆牌照10',1,'车辆介绍10',1,'2023-05-09 15:54:29','2023-05-09 15:54:29'),(11,'车辆名称11','1683618869404','upload/cheliang11.jpg','车辆牌照11',1,'车辆介绍11',1,'2023-05-09 15:54:29','2023-05-09 15:54:29'),(12,'车辆名称12','1683618869440','upload/cheliang12.jpg','车辆牌照12',3,'车辆介绍12',1,'2023-05-09 15:54:29','2023-05-09 15:54:29'),(13,'车辆名称13','1683618869412','upload/cheliang13.jpg','车辆牌照13',2,'车辆介绍13',1,'2023-05-09 15:54:29','2023-05-09 15:54:29'),(14,'车辆名称14','1683618869391','upload/cheliang14.jpg','车辆牌照14',2,'车辆介绍14',1,'2023-05-09 15:54:29','2023-05-09 15:54:29');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','upload/config1.jpg'),(2,'轮播图2','upload/config2.jpg'),(3,'轮播图3','upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'sex_types','性别类型',1,'男',NULL,NULL,'2023-05-09 15:54:09'),(2,'sex_types','性别类型',2,'女',NULL,NULL,'2023-05-09 15:54:09'),(3,'gonggao_types','公告类型',1,'公告类型1',NULL,NULL,'2023-05-09 15:54:09'),(4,'gonggao_types','公告类型',2,'公告类型2',NULL,NULL,'2023-05-09 15:54:09'),(5,'chat_types','数据类型',1,'问题',NULL,NULL,'2023-05-09 15:54:09'),(6,'chat_types','数据类型',2,'回复',NULL,NULL,'2023-05-09 15:54:09'),(7,'zhuangtai_types','状态',1,'未回复',NULL,NULL,'2023-05-09 15:54:09'),(8,'zhuangtai_types','状态',2,'已回复',NULL,NULL,'2023-05-09 15:54:09'),(9,'cangku_types','仓库类型',1,'仓库类型1',NULL,NULL,'2023-05-09 15:54:09'),(10,'cangku_types','仓库类型',2,'仓库类型2',NULL,NULL,'2023-05-09 15:54:09'),(11,'cangku_types','仓库类型',3,'仓库类型3',NULL,NULL,'2023-05-09 15:54:09'),(12,'cangku_types','仓库类型',4,'仓库类型4',NULL,NULL,'2023-05-09 15:54:09'),(13,'shangxia_types','上下架',1,'上架',NULL,NULL,'2023-05-09 15:54:09'),(14,'shangxia_types','上下架',2,'下架',NULL,NULL,'2023-05-09 15:54:10'),(15,'shangpin_types','商品类型',1,'商品类型1',NULL,NULL,'2023-05-09 15:54:10'),(16,'shangpin_types','商品类型',2,'商品类型2',NULL,NULL,'2023-05-09 15:54:10'),(17,'shangpin_types','商品类型',3,'商品类型3',NULL,NULL,'2023-05-09 15:54:10'),(18,'shangpin_types','商品类型',4,'商品类型4',NULL,NULL,'2023-05-09 15:54:10'),(19,'shangpin_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2023-05-09 15:54:10'),(20,'shangpin_churu_inout_types','出入库类型',1,'出库',NULL,NULL,'2023-05-09 15:54:10'),(21,'shangpin_churu_inout_types','出入库类型',2,'入库',NULL,NULL,'2023-05-09 15:54:10'),(22,'cheliang_types','车辆类型',1,'车辆类型1',NULL,NULL,'2023-05-09 15:54:10'),(23,'cheliang_types','车辆类型',2,'车辆类型2',NULL,NULL,'2023-05-09 15:54:10'),(24,'cheliang_types','车辆类型',3,'车辆类型3',NULL,NULL,'2023-05-09 15:54:10'),(25,'cheliang_types','车辆类型',4,'车辆类型4',NULL,NULL,'2023-05-09 15:54:10'),(26,'isdefault_types','是否默认地址',1,'否',NULL,NULL,'2023-05-09 15:54:10'),(27,'isdefault_types','是否默认地址',2,'是',NULL,NULL,'2023-05-09 15:54:10'),(28,'shangpin_order_types','订单类型',101,'已支付',NULL,NULL,'2023-05-09 15:54:10'),(29,'shangpin_order_types','订单类型',102,'已退款',NULL,NULL,'2023-05-09 15:54:10'),(30,'shangpin_order_types','订单类型',103,'已发出',NULL,NULL,'2023-05-09 15:54:10'),(31,'shangpin_order_types','订单类型',104,'已验收',NULL,NULL,'2023-05-09 15:54:10'),(32,'shangpin_order_types','订单类型',106,'已送达',NULL,NULL,'2023-05-09 15:54:10'),(33,'huowu_types','货物类型',1,'运输中',NULL,NULL,'2023-05-09 15:54:10'),(34,'huowu_types','货物类型',2,'货物送达',NULL,NULL,'2023-05-09 15:54:10'),(35,'huowu_types','货物类型',3,'货物验收',NULL,NULL,'2023-05-09 15:54:10');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int(11) NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发布时间',
  `gonggao_content` longtext COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_photo`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (1,'公告名称1','upload/gonggao1.jpg',2,'2023-05-09 15:54:29','公告详情1','2023-05-09 15:54:29'),(2,'公告名称2','upload/gonggao2.jpg',1,'2023-05-09 15:54:29','公告详情2','2023-05-09 15:54:29'),(3,'公告名称3','upload/gonggao3.jpg',1,'2023-05-09 15:54:29','公告详情3','2023-05-09 15:54:29'),(4,'公告名称4','upload/gonggao4.jpg',2,'2023-05-09 15:54:29','公告详情4','2023-05-09 15:54:29'),(5,'公告名称5','upload/gonggao5.jpg',1,'2023-05-09 15:54:29','公告详情5','2023-05-09 15:54:29'),(6,'公告名称6','upload/gonggao6.jpg',2,'2023-05-09 15:54:29','公告详情6','2023-05-09 15:54:29'),(7,'公告名称7','upload/gonggao7.jpg',1,'2023-05-09 15:54:29','公告详情7','2023-05-09 15:54:29'),(8,'公告名称8','upload/gonggao8.jpg',1,'2023-05-09 15:54:29','公告详情8','2023-05-09 15:54:29'),(9,'公告名称9','upload/gonggao9.jpg',1,'2023-05-09 15:54:29','公告详情9','2023-05-09 15:54:29'),(10,'公告名称10','upload/gonggao10.jpg',1,'2023-05-09 15:54:29','公告详情10','2023-05-09 15:54:29'),(11,'公告名称11','upload/gonggao11.jpg',1,'2023-05-09 15:54:29','公告详情11','2023-05-09 15:54:29'),(12,'公告名称12','upload/gonggao12.jpg',1,'2023-05-09 15:54:29','公告详情12','2023-05-09 15:54:29'),(13,'公告名称13','upload/gonggao13.jpg',1,'2023-05-09 15:54:29','公告详情13','2023-05-09 15:54:29'),(14,'公告名称14','upload/gonggao14.jpg',2,'2023-05-09 15:54:29','公告详情14','2023-05-09 15:54:29');

/*Table structure for table `huowu` */

DROP TABLE IF EXISTS `huowu`;

CREATE TABLE `huowu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `shangpin_order_id` int(11) DEFAULT NULL COMMENT '商家',
  `huowu_name` varchar(200) DEFAULT NULL COMMENT '货物名称  Search111 ',
  `huowu_uuid_number` varchar(200) DEFAULT NULL COMMENT '货物编号',
  `huowu_types` int(11) DEFAULT NULL COMMENT '货物类型 Search111',
  `huowu_content` longtext COMMENT '货物介绍 ',
  `huowu_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COMMENT='货物';

/*Data for the table `huowu` */

insert  into `huowu`(`id`,`shangpin_order_id`,`huowu_name`,`huowu_uuid_number`,`huowu_types`,`huowu_content`,`huowu_delete`,`insert_time`,`create_time`) values (17,2,'商品名称13','1683623628491',1,NULL,2,'2023-05-09 17:13:48','2023-05-09 17:13:48'),(18,2,'商品名称13','1683623784950',1,NULL,1,'2023-05-09 17:16:25','2023-05-09 17:16:25'),(19,2,'商品名称13','1683624522011',2,NULL,1,'2023-05-09 17:28:42','2023-05-09 17:28:42'),(20,2,'商品名称13','1683624595695',3,NULL,1,'2023-05-09 17:29:56','2023-05-09 17:29:56'),(21,3,'商品名称13','1683625506222',1,NULL,1,'2023-05-09 17:45:06','2023-05-09 17:45:06'),(22,3,'商品名称13','1683625575160',2,NULL,1,'2023-05-09 17:46:15','2023-05-09 17:46:15'),(23,3,'商品名称13','1683625590803',3,NULL,1,'2023-05-09 17:46:31','2023-05-09 17:46:31');

/*Table structure for table `shangpin` */

DROP TABLE IF EXISTS `shangpin`;

CREATE TABLE `shangpin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `cangku_id` int(11) DEFAULT NULL COMMENT '仓库',
  `shangpin_name` varchar(200) DEFAULT NULL COMMENT '商品名称  Search111 ',
  `shangpin_uuid_number` varchar(200) DEFAULT NULL COMMENT '商品编号',
  `shangpin_photo` varchar(200) DEFAULT NULL COMMENT '商品照片',
  `shangpin_types` int(11) DEFAULT NULL COMMENT '商品类型 Search111',
  `shangpin_kucun_number` int(11) DEFAULT NULL COMMENT '商品库存',
  `shangpin_new_money` decimal(10,2) DEFAULT NULL COMMENT '现价/积分 ',
  `shangpin_content` longtext COMMENT '商品介绍 ',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否上架 ',
  `shangpin_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='商品';

/*Data for the table `shangpin` */

insert  into `shangpin`(`id`,`cangku_id`,`shangpin_name`,`shangpin_uuid_number`,`shangpin_photo`,`shangpin_types`,`shangpin_kucun_number`,`shangpin_new_money`,`shangpin_content`,`shangxia_types`,`shangpin_delete`,`insert_time`,`create_time`) values (1,1,'商品名称1','1683618869476','upload/shangpin1.jpg',4,101,'157.69','商品介绍1',1,1,'2023-05-09 15:54:29','2023-05-09 15:54:29'),(2,2,'商品名称2','1683618869435','upload/shangpin2.jpg',4,102,'54.27','商品介绍2',1,1,'2023-05-09 15:54:29','2023-05-09 15:54:29'),(3,3,'商品名称3','1683618869432','upload/shangpin3.jpg',1,103,'385.52','商品介绍3',1,1,'2023-05-09 15:54:29','2023-05-09 15:54:29'),(4,4,'商品名称4','1683618869459','upload/shangpin4.jpg',2,104,'381.31','商品介绍4',1,1,'2023-05-09 15:54:29','2023-05-09 15:54:29'),(5,5,'商品名称5','1683618869402','upload/shangpin5.jpg',3,105,'284.32','商品介绍5',1,1,'2023-05-09 15:54:29','2023-05-09 15:54:29'),(6,6,'商品名称6','1683618869413','upload/shangpin6.jpg',4,106,'165.00','商品介绍6',1,1,'2023-05-09 15:54:29','2023-05-09 15:54:29'),(7,7,'商品名称7','1683618869412','upload/shangpin7.jpg',1,107,'253.93','商品介绍7',1,1,'2023-05-09 15:54:29','2023-05-09 15:54:29'),(8,8,'商品名称8','1683618869432','upload/shangpin8.jpg',3,108,'104.64','商品介绍8',1,1,'2023-05-09 15:54:29','2023-05-09 15:54:29'),(9,9,'商品名称9','1683618869409','upload/shangpin9.jpg',4,109,'304.42','商品介绍9',1,1,'2023-05-09 15:54:29','2023-05-09 15:54:29'),(10,10,'商品名称10','1683618869456','upload/shangpin10.jpg',4,1010,'311.65','商品介绍10',1,1,'2023-05-09 15:54:29','2023-05-09 15:54:29'),(11,11,'商品名称11','1683618869444','upload/shangpin11.jpg',1,1091,'488.50','商品介绍11',1,1,'2023-05-09 15:54:29','2023-05-09 15:54:29'),(12,12,'商品名称12','1683618869409','upload/shangpin12.jpg',4,1012,'321.66','商品介绍12',1,1,'2023-05-09 15:54:29','2023-05-09 15:54:29'),(13,13,'商品名称13','1683618869449','upload/shangpin13.jpg',4,972,'245.39','商品介绍13',1,1,'2023-05-09 15:54:29','2023-05-09 15:54:29'),(14,14,'商品名称14','1683618869473','upload/shangpin14.jpg',4,1013,'345.10','商品介绍14',1,1,'2023-05-09 15:54:29','2023-05-09 15:54:29');

/*Table structure for table `shangpin_churu_inout` */

DROP TABLE IF EXISTS `shangpin_churu_inout`;

CREATE TABLE `shangpin_churu_inout` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shangpin_churu_inout_uuid_number` varchar(200) DEFAULT NULL COMMENT '出入库流水号',
  `shangpin_churu_inout_name` varchar(200) DEFAULT NULL COMMENT '出入库名称  Search111 ',
  `shangpin_churu_inout_types` int(11) DEFAULT NULL COMMENT '出入库类型  Search111 ',
  `shangpin_churu_inout_content` longtext COMMENT '备注',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='出入库';

/*Data for the table `shangpin_churu_inout` */

insert  into `shangpin_churu_inout`(`id`,`shangpin_churu_inout_uuid_number`,`shangpin_churu_inout_name`,`shangpin_churu_inout_types`,`shangpin_churu_inout_content`,`insert_time`,`create_time`) values (1,'1683618869449','出入库名称1',2,'备注1','2023-05-09 15:54:29','2023-05-09 15:54:29'),(2,'1683618869382','出入库名称2',2,'备注2','2023-05-09 15:54:29','2023-05-09 15:54:29'),(3,'1683618869458','出入库名称3',1,'备注3','2023-05-09 15:54:29','2023-05-09 15:54:29'),(4,'1683618869443','出入库名称4',2,'备注4','2023-05-09 15:54:29','2023-05-09 15:54:29'),(5,'1683618869430','出入库名称5',2,'备注5','2023-05-09 15:54:29','2023-05-09 15:54:29'),(6,'1683618869443','出入库名称6',1,'备注6','2023-05-09 15:54:29','2023-05-09 15:54:29'),(7,'1683618869443','出入库名称7',2,'备注7','2023-05-09 15:54:29','2023-05-09 15:54:29'),(8,'1683618869448','出入库名称8',2,'备注8','2023-05-09 15:54:29','2023-05-09 15:54:29'),(9,'1683618869407','出入库名称9',1,'备注9','2023-05-09 15:54:29','2023-05-09 15:54:29'),(10,'1683618869386','出入库名称10',2,'备注10','2023-05-09 15:54:29','2023-05-09 15:54:29'),(11,'1683618869478','出入库名称11',2,'备注11','2023-05-09 15:54:29','2023-05-09 15:54:29'),(12,'1683618869422','出入库名称12',2,'备注12','2023-05-09 15:54:29','2023-05-09 15:54:29'),(13,'1683618869396','出入库名称13',1,'备注13','2023-05-09 15:54:29','2023-05-09 15:54:29'),(14,'1683618869423','出入库名称14',1,'备注14','2023-05-09 15:54:29','2023-05-09 15:54:29'),(15,'1683625074426','123',1,'','2023-05-09 17:37:54','2023-05-09 17:37:54'),(16,'1683625457556','阿萨德',2,'','2023-05-09 17:44:18','2023-05-09 17:44:18');

/*Table structure for table `shangpin_churu_inout_list` */

DROP TABLE IF EXISTS `shangpin_churu_inout_list`;

CREATE TABLE `shangpin_churu_inout_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shangpin_churu_inout_id` int(11) DEFAULT NULL COMMENT '出入库',
  `shangpin_id` int(11) DEFAULT NULL COMMENT '商品',
  `cangku_id` int(11) DEFAULT NULL COMMENT '仓库',
  `shangpin_churu_inout_list_number` int(11) DEFAULT NULL COMMENT '操作数量',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '操作时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='出入库详情';

/*Data for the table `shangpin_churu_inout_list` */

insert  into `shangpin_churu_inout_list`(`id`,`shangpin_churu_inout_id`,`shangpin_id`,`cangku_id`,`shangpin_churu_inout_list_number`,`insert_time`,`create_time`) values (1,1,1,1,132,'2023-05-09 15:54:29','2023-05-09 15:54:29'),(2,2,2,2,39,'2023-05-09 15:54:29','2023-05-09 15:54:29'),(3,3,3,3,343,'2023-05-09 15:54:29','2023-05-09 15:54:29'),(4,4,4,4,275,'2023-05-09 15:54:29','2023-05-09 15:54:29'),(5,5,5,5,71,'2023-05-09 15:54:29','2023-05-09 15:54:29'),(6,6,6,6,264,'2023-05-09 15:54:29','2023-05-09 15:54:29'),(7,7,7,7,85,'2023-05-09 15:54:29','2023-05-09 15:54:29'),(8,8,8,8,463,'2023-05-09 15:54:29','2023-05-09 15:54:29'),(9,9,9,9,126,'2023-05-09 15:54:29','2023-05-09 15:54:29'),(10,10,10,10,317,'2023-05-09 15:54:29','2023-05-09 15:54:29'),(11,11,11,11,254,'2023-05-09 15:54:29','2023-05-09 15:54:29'),(12,12,12,12,26,'2023-05-09 15:54:29','2023-05-09 15:54:29'),(13,13,13,13,438,'2023-05-09 15:54:29','2023-05-09 15:54:29'),(14,14,14,14,7,'2023-05-09 15:54:29','2023-05-09 15:54:29'),(15,15,13,NULL,20,'2023-05-09 17:37:54','2023-05-09 17:37:54'),(16,16,11,NULL,80,'2023-05-09 17:44:18','2023-05-09 17:44:18');

/*Table structure for table `shangpin_collection` */

DROP TABLE IF EXISTS `shangpin_collection`;

CREATE TABLE `shangpin_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shangpin_id` int(11) DEFAULT NULL COMMENT '商品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `shangpin_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='商品收藏';

/*Data for the table `shangpin_collection` */

insert  into `shangpin_collection`(`id`,`shangpin_id`,`yonghu_id`,`shangpin_collection_types`,`insert_time`,`create_time`) values (1,1,3,1,'2023-05-09 15:54:29','2023-05-09 15:54:29'),(2,2,2,1,'2023-05-09 15:54:29','2023-05-09 15:54:29'),(3,3,2,1,'2023-05-09 15:54:29','2023-05-09 15:54:29'),(4,4,3,1,'2023-05-09 15:54:29','2023-05-09 15:54:29'),(5,5,1,1,'2023-05-09 15:54:29','2023-05-09 15:54:29'),(6,6,2,1,'2023-05-09 15:54:29','2023-05-09 15:54:29'),(7,7,2,1,'2023-05-09 15:54:29','2023-05-09 15:54:29'),(8,8,2,1,'2023-05-09 15:54:29','2023-05-09 15:54:29'),(9,9,3,1,'2023-05-09 15:54:29','2023-05-09 15:54:29'),(10,10,3,1,'2023-05-09 15:54:29','2023-05-09 15:54:29'),(11,11,3,1,'2023-05-09 15:54:29','2023-05-09 15:54:29'),(12,12,3,1,'2023-05-09 15:54:29','2023-05-09 15:54:29'),(13,13,2,1,'2023-05-09 15:54:29','2023-05-09 15:54:29'),(14,14,3,1,'2023-05-09 15:54:29','2023-05-09 15:54:29');

/*Table structure for table `shangpin_order` */

DROP TABLE IF EXISTS `shangpin_order`;

CREATE TABLE `shangpin_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shangpin_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单编号 Search111 ',
  `address_id` int(11) DEFAULT NULL COMMENT '收货地址 ',
  `shangpin_id` int(11) DEFAULT NULL COMMENT '商品',
  `cheliang_id` int(11) DEFAULT NULL COMMENT '车辆',
  `siji_id` int(11) DEFAULT NULL COMMENT '司机',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `buy_number` int(11) DEFAULT NULL COMMENT '购买数量',
  `shangpin_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格',
  `shangpin_order_types` int(11) DEFAULT NULL COMMENT '订单类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='商品订单';

/*Data for the table `shangpin_order` */

insert  into `shangpin_order`(`id`,`shangpin_order_uuid_number`,`address_id`,`shangpin_id`,`cheliang_id`,`siji_id`,`yonghu_id`,`buy_number`,`shangpin_order_true_price`,`shangpin_order_types`,`insert_time`,`create_time`) values (1,'1683619952496',1,14,12,10,1,1,'345.10',101,'2023-05-09 16:12:32','2023-05-09 16:12:32'),(2,'1683622865267',1,13,13,12,1,1,'245.39',104,'2023-05-09 17:01:05','2023-05-09 17:01:05'),(3,'1683625371781',1,13,13,11,1,20,'4907.80',104,'2023-05-09 17:42:52','2023-05-09 17:42:52');

/*Table structure for table `siji` */

DROP TABLE IF EXISTS `siji`;

CREATE TABLE `siji` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `siji_uuid_number` varchar(200) DEFAULT NULL COMMENT '司机编号 Search111 ',
  `siji_name` varchar(200) DEFAULT NULL COMMENT '司机姓名 Search111 ',
  `siji_phone` varchar(200) DEFAULT NULL COMMENT '司机手机号',
  `siji_id_number` varchar(200) DEFAULT NULL COMMENT '司机身份证号',
  `siji_photo` varchar(200) DEFAULT NULL COMMENT '司机头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `siji_email` varchar(200) DEFAULT NULL COMMENT '司机邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='司机';

/*Data for the table `siji` */

insert  into `siji`(`id`,`siji_uuid_number`,`siji_name`,`siji_phone`,`siji_id_number`,`siji_photo`,`sex_types`,`siji_email`,`create_time`) values (1,'1683618869450','司机姓名1','17703786901','410224199010102001','upload/siji1.jpg',1,'1@qq.com','2023-05-09 15:54:29'),(2,'1683618869412','司机姓名2','17703786902','410224199010102002','upload/siji2.jpg',2,'2@qq.com','2023-05-09 15:54:29'),(3,'1683618869471','司机姓名3','17703786903','410224199010102003','upload/siji3.jpg',1,'3@qq.com','2023-05-09 15:54:29'),(4,'1683618869480','司机姓名4','17703786904','410224199010102004','upload/siji4.jpg',2,'4@qq.com','2023-05-09 15:54:29'),(5,'1683618869425','司机姓名5','17703786905','410224199010102005','upload/siji5.jpg',1,'5@qq.com','2023-05-09 15:54:29'),(6,'1683618869420','司机姓名6','17703786906','410224199010102006','upload/siji6.jpg',1,'6@qq.com','2023-05-09 15:54:29'),(7,'1683618869450','司机姓名7','17703786907','410224199010102007','upload/siji7.jpg',1,'7@qq.com','2023-05-09 15:54:29'),(8,'1683618869399','司机姓名8','17703786908','410224199010102008','upload/siji8.jpg',2,'8@qq.com','2023-05-09 15:54:29'),(9,'1683618869424','司机姓名9','17703786909','410224199010102009','upload/siji9.jpg',1,'9@qq.com','2023-05-09 15:54:29'),(10,'1683618869476','司机姓名10','17703786910','410224199010102010','upload/siji10.jpg',2,'10@qq.com','2023-05-09 15:54:29'),(11,'1683618869488','司机姓名11','17703786911','410224199010102011','upload/siji11.jpg',1,'11@qq.com','2023-05-09 15:54:29'),(12,'1683618869459','司机姓名12','17703786912','410224199010102012','upload/siji12.jpg',2,'12@qq.com','2023-05-09 15:54:29'),(13,'1683618869407','司机姓名13','17703786913','410224199010102013','upload/siji13.jpg',2,'13@qq.com','2023-05-09 15:54:29'),(14,'1683618869401','司机姓名14','17703786914','410224199010102014','upload/siji14.jpg',2,'14@qq.com','2023-05-09 15:54:29');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '儿童id',
  `username` varchar(100) NOT NULL COMMENT '儿童名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','d28iwxdjqg2mfkvt5ehxndobjkurvh35','2023-05-09 15:55:14','2023-05-09 18:50:02'),(2,1,'a1','yonghu','用户','x24lrrccd4j3023fatzn8y346tii1x47','2023-05-09 15:55:20','2023-05-09 18:42:13'),(3,1,'a1','yuangong','员工','tzvsjnnmspbbxzy1e23294hbil5kajjn','2023-05-09 17:27:27','2023-05-09 18:46:05');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '儿童名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-05-09 15:54:09');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_uuid_number` varchar(200) DEFAULT NULL COMMENT '用户编号 Search111 ',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '用户邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_uuid_number`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`new_money`,`yonghu_email`,`create_time`) values (1,'a1','123456','1683618869481','用户姓名1','17703786901','410224199010102001','upload/yonghu1.jpg',1,'5268.67','1@qq.com','2023-05-09 15:54:29'),(2,'a2','123456','1683618869431','用户姓名2','17703786902','410224199010102002','upload/yonghu2.jpg',1,'460.90','2@qq.com','2023-05-09 15:54:29'),(3,'a3','123456','1683618869414','用户姓名3','17703786903','410224199010102003','upload/yonghu3.jpg',2,'164.38','3@qq.com','2023-05-09 15:54:29');

/*Table structure for table `yuangong` */

DROP TABLE IF EXISTS `yuangong`;

CREATE TABLE `yuangong` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yuangong_uuid_number` varchar(200) DEFAULT NULL COMMENT '员工编号 Search111 ',
  `yuangong_name` varchar(200) DEFAULT NULL COMMENT '员工姓名 Search111 ',
  `yuangong_phone` varchar(200) DEFAULT NULL COMMENT '员工手机号',
  `yuangong_id_number` varchar(200) DEFAULT NULL COMMENT '员工身份证号',
  `yuangong_photo` varchar(200) DEFAULT NULL COMMENT '员工头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yuangong_email` varchar(200) DEFAULT NULL COMMENT '员工邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='员工';

/*Data for the table `yuangong` */

insert  into `yuangong`(`id`,`username`,`password`,`yuangong_uuid_number`,`yuangong_name`,`yuangong_phone`,`yuangong_id_number`,`yuangong_photo`,`sex_types`,`yuangong_email`,`create_time`) values (1,'a1','123456','1683618869414','员工姓名1','17703786901','410224199010102001','upload/yuangong1.jpg',1,'1@qq.com','2023-05-09 15:54:29'),(2,'a2','123456','1683618869444','员工姓名2','17703786902','410224199010102002','upload/yuangong2.jpg',2,'2@qq.com','2023-05-09 15:54:29'),(3,'a3','123456','1683618869436','员工姓名3','17703786903','410224199010102003','upload/yuangong3.jpg',1,'3@qq.com','2023-05-09 15:54:29');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
