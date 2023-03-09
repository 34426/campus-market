-- MySQL dump 10.16  Distrib 10.1.32-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: db_boot_base
-- ------------------------------------------------------
-- Server version	10.1.32-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ylrc_database_bak`
--

DROP TABLE IF EXISTS `ylrc_database_bak`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ylrc_database_bak` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `filename` varchar(32) NOT NULL,
  `filepath` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ylrc_database_bak`
--

LOCK TABLES `ylrc_database_bak` WRITE;
/*!40000 ALTER TABLE `ylrc_database_bak` DISABLE KEYS */;
INSERT INTO `ylrc_database_bak` VALUES (10,'2020-03-22 19:36:47','2020-03-22 19:36:47','db_boot_base_20200322193647.sql','D:/workspace_devloper/baseproject/base/src/main/resources/backup/'),(11,'2020-03-22 19:37:54','2020-03-22 19:37:54','db_boot_base_20200322193754.sql','D:/workspace_devloper/baseproject/base/src/main/resources/backup/'),(12,'2020-03-22 19:40:04','2020-03-22 19:40:04','db_boot_base_20200322194004.sql','D:/workspace_devloper/baseproject/base/src/main/resources/backup/'),(13,'2020-03-22 19:40:09','2020-03-22 19:40:09','db_boot_base_20200322194009.sql','D:/workspace_devloper/baseproject/base/src/main/resources/backup/'),(14,'2020-03-22 19:40:14','2020-03-22 19:40:14','db_boot_base_20200322194014.sql','D:/workspace_devloper/baseproject/base/src/main/resources/backup/'),(15,'2020-03-22 19:40:19','2020-03-22 19:40:19','db_boot_base_20200322194019.sql','D:/workspace_devloper/baseproject/base/src/main/resources/backup/'),(16,'2020-03-22 19:42:10','2020-03-22 19:42:10','db_boot_base_20200322194210.sql','D:/workspace_devloper/baseproject/base/src/main/resources/backup/'),(17,'2020-03-22 19:43:34','2020-03-22 19:43:34','db_boot_base_20200322194334.sql','D:/workspace_devloper/baseproject/base/src/main/resources/backup/'),(18,'2020-03-22 19:43:39','2020-03-22 19:43:39','db_boot_base_20200322194339.sql','D:/workspace_devloper/baseproject/base/src/main/resources/backup/'),(19,'2020-03-22 19:43:44','2020-03-22 19:43:44','db_boot_base_20200322194344.sql','D:/workspace_devloper/baseproject/base/src/main/resources/backup/'),(20,'2020-03-22 19:43:49','2020-03-22 19:43:49','db_boot_base_20200322194349.sql','D:/workspace_devloper/baseproject/base/src/main/resources/backup/'),(21,'2020-03-22 19:43:54','2020-03-22 19:43:54','db_boot_base_20200322194354.sql','D:/workspace_devloper/baseproject/base/src/main/resources/backup/');
/*!40000 ALTER TABLE `ylrc_database_bak` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ylrc_menu`
--

DROP TABLE IF EXISTS `ylrc_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ylrc_menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `name` varchar(18) NOT NULL,
  `url` varchar(128) DEFAULT NULL,
  `icon` varchar(32) DEFAULT NULL,
  `sort` int(11) NOT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `is_bitton` bit(1) NOT NULL,
  `is_show` bit(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKsbtnjocfrq29e8taxdwo21gic` (`parent_id`),
  CONSTRAINT `FKsbtnjocfrq29e8taxdwo21gic` FOREIGN KEY (`parent_id`) REFERENCES `ylrc_menu` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ylrc_menu`
--

LOCK TABLES `ylrc_menu` WRITE;
/*!40000 ALTER TABLE `ylrc_menu` DISABLE KEYS */;
INSERT INTO `ylrc_menu` VALUES (2,'2020-03-14 14:26:03','2020-03-14 18:24:53','系统设置','','mdi-settings',0,NULL,'\0',''),(3,'2020-03-14 16:58:55','2020-03-14 18:26:02','菜单管理','/menu/list','mdi-view-list',1,2,'\0',''),(5,'2020-03-14 17:04:44','2020-03-14 18:27:53','新增','/menu/add','mdi-plus',2,3,'\0',''),(7,'2020-03-14 17:07:43','2020-03-15 12:11:25','角色管理','/role/list','mdi-account-settings-variant',5,2,'\0',''),(8,'2020-03-14 18:28:48','2020-03-21 22:04:45','编辑','edit(\'/menu/edit\')','mdi-grease-pencil',3,3,'',''),(9,'2020-03-14 18:30:00','2020-03-21 22:08:20','删除','del(\'/menu/delete\')','mdi-close',4,3,'',''),(10,'2020-03-15 12:12:00','2020-03-15 12:12:00','添加','/role/add','mdi-account-plus',6,7,'\0',''),(11,'2020-03-15 12:12:36','2020-03-21 22:10:45','编辑','edit(\'/role/edit\')','mdi-account-edit',7,7,'',''),(12,'2020-03-15 12:13:19','2020-03-21 22:15:27','删除','del(\'/role/delete\')','mdi-account-remove',8,7,'',''),(13,'2020-03-15 12:14:52','2020-03-15 12:17:00','用户管理','/user/list','mdi-account-multiple',9,2,'\0',''),(14,'2020-03-15 12:15:22','2020-03-15 12:17:27','添加','/user/add','mdi-account-plus',10,13,'\0',''),(15,'2020-03-16 17:18:14','2020-03-21 22:11:19','编辑','edit(\'/user/edit\')','mdi-account-edit',11,13,'',''),(16,'2020-03-16 17:19:01','2020-03-21 22:15:36','删除','del(\'/user/delete\')','mdi-account-remove',12,13,'',''),(19,'2020-03-22 11:24:36','2020-03-22 11:26:00','上传图片','/upload/upload_photo','mdi-arrow-up-bold-circle',0,13,'\0','\0'),(20,'2020-03-22 14:09:35','2020-03-22 14:09:47','日志管理','/system/operator_log_list','mdi-tag-multiple',13,2,'\0',''),(21,'2020-03-22 14:11:39','2020-03-22 14:11:39','删除','del(\'/system/delete_operator_log\')','mdi-tag-remove',14,20,'',''),(22,'2020-03-22 14:12:57','2020-03-22 14:46:55','清空日志','delAll(\'/system/delete_all_operator_log\')','mdi-delete-circle',15,20,'',''),(23,'2020-03-22 14:46:40','2020-03-22 14:47:09','数据备份','/database_bak/list','mdi-database',16,2,'\0',''),(24,'2020-03-22 14:48:07','2020-03-22 15:13:41','备份','add(\'/database_bak/add\')','mdi-database-plus',17,23,'',''),(25,'2020-03-22 14:49:03','2020-03-22 14:49:03','删除','del(\'/database_bak/delete\')','mdi-database-minus',18,23,'',''),(26,'2020-03-22 19:36:20','2020-03-22 19:36:20','还原','restore(\'/database_bak/restore\')','mdi-database-minus',19,23,'','');
/*!40000 ALTER TABLE `ylrc_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ylrc_operater_log`
--

DROP TABLE IF EXISTS `ylrc_operater_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ylrc_operater_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `content` varchar(1024) NOT NULL,
  `operator` varchar(18) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=205 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ylrc_operater_log`
--

LOCK TABLES `ylrc_operater_log` WRITE;
/*!40000 ALTER TABLE `ylrc_operater_log` DISABLE KEYS */;
INSERT INTO `ylrc_operater_log` VALUES (167,'2020-03-22 14:46:40','2020-03-22 14:46:40','添加菜单信息【Menu [name=数据备份, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/database_bak/list, icon=mdi-database, sort=14, isButton=false, isShow=true]】','猿来入此'),(169,'2020-03-22 14:47:09','2020-03-22 14:47:09','编辑菜单信息【Menu [name=数据备份, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/database_bak/list, icon=mdi-database, sort=16, isButton=false, isShow=true]】','猿来入此'),(170,'2020-03-22 14:48:07','2020-03-22 14:48:07','添加菜单信息【Menu [name=备份, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/database_bak/add, icon=mdi-database-plus, sort=17, isButton=true, isShow=true]】','猿来入此'),(171,'2020-03-22 14:49:03','2020-03-22 14:49:03','添加菜单信息【Menu [name=删除, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=del(\'/database_bak/delete\'), icon=mdi-database-minus, sort=18, isButton=true, isShow=true]】','猿来入此'),(172,'2020-03-22 14:49:22','2020-03-22 14:49:22','编辑角色【超级管理员】','猿来入此'),(173,'2020-03-22 14:58:14','2020-03-22 14:58:14','用户【猿来入此】于【2020-03-22 14:58:13】登录系统！','猿来入此'),(174,'2020-03-22 15:09:49','2020-03-22 15:09:49','用户【猿来入此】于【2020-03-22 15:09:49】登录系统！','猿来入此'),(175,'2020-03-22 15:11:09','2020-03-22 15:11:09','用户【猿来入此】于【2020-03-22 15:11:08】登录系统！','猿来入此'),(176,'2020-03-22 15:13:41','2020-03-22 15:13:41','编辑菜单信息【Menu [name=备份, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=add(\'/database_bak/add\'), icon=mdi-database-plus, sort=17, isButton=true, isShow=true]】','猿来入此'),(177,'2020-03-22 16:16:31','2020-03-22 16:16:31','用户【猿来入此】于【2020-03-22 16:16:31】登录系统！','猿来入此'),(178,'2020-03-22 16:31:23','2020-03-22 16:31:23','用户【猿来入此】于【2020-03-22 16:31:23】登录系统！','猿来入此'),(179,'2020-03-22 16:56:25','2020-03-22 16:56:25','用户【猿来入此】于【2020-03-22 16:56:25】登录系统！','猿来入此'),(180,'2020-03-22 17:00:42','2020-03-22 17:00:42','用户【猿来入此】于【2020-03-22 17:00:42】登录系统！','猿来入此'),(181,'2020-03-22 17:13:01','2020-03-22 17:13:01','数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20200322.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]','猿来入此'),(182,'2020-03-22 17:15:04','2020-03-22 17:15:04','数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20200322171504.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]','猿来入此'),(183,'2020-03-22 17:15:14','2020-03-22 17:15:14','数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20200322171514.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]','猿来入此'),(184,'2020-03-22 17:21:02','2020-03-22 17:21:02','用户【猿来入此】于【2020-03-22 17:21:02】登录系统！','猿来入此'),(185,'2020-03-22 17:21:15','2020-03-22 17:21:15','添加角色【dsadsasadsa】','猿来入此'),(186,'2020-03-22 18:09:55','2020-03-22 18:09:55','数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20200322180955.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]','猿来入此'),(187,'2020-03-22 18:59:16','2020-03-22 18:59:16','数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20200322185916.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]','猿来入此'),(188,'2020-03-22 18:59:41','2020-03-22 18:59:41','数据库成功还原，还原文件信息：DatabaseBak [filename=db_boot_base_20200322180955.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]','猿来入此'),(189,'2020-03-22 19:12:03','2020-03-22 19:12:03','数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20200322191203.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]','猿来入此'),(190,'2020-03-22 19:12:59','2020-03-22 19:12:59','数据库成功还原，还原文件信息：DatabaseBak [filename=db_boot_base_20200322191203.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]','猿来入此'),(191,'2020-03-22 19:35:07','2020-03-22 19:35:07','用户【猿来入此】于【2020-03-22 19:35:07】登录系统！','猿来入此'),(192,'2020-03-22 19:35:21','2020-03-22 19:35:21','数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20200322193521.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]','猿来入此'),(193,'2020-03-22 19:36:20','2020-03-22 19:36:20','添加菜单信息【Menu [name=还原, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=restore(\'/database_bak/restore\'), icon=mdi-database-minus, sort=19, isButton=true, isShow=true]】','猿来入此'),(194,'2020-03-22 19:36:34','2020-03-22 19:36:34','编辑角色【超级管理员】','猿来入此'),(195,'2020-03-22 19:36:47','2020-03-22 19:36:47','数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20200322193647.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]','猿来入此'),(196,'2020-03-22 19:37:21','2020-03-22 19:37:21','数据库成功还原，还原文件信息：DatabaseBak [filename=db_boot_base_20200322193647.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]','猿来入此'),(197,'2020-03-22 19:37:54','2020-03-22 19:37:54','数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20200322193754.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]','猿来入此'),(198,'2020-03-22 19:38:15','2020-03-22 19:38:15','数据库成功还原，还原文件信息：DatabaseBak [filename=db_boot_base_20200322193754.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]','猿来入此'),(199,'2020-03-22 19:43:34','2020-03-22 19:43:34','数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20200322194334.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]','未知(获取登录用户失败)'),(200,'2020-03-22 19:43:39','2020-03-22 19:43:39','数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20200322194339.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]','未知(获取登录用户失败)'),(201,'2020-03-22 19:43:44','2020-03-22 19:43:44','数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20200322194344.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]','未知(获取登录用户失败)'),(202,'2020-03-22 19:43:49','2020-03-22 19:43:49','数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20200322194349.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]','未知(获取登录用户失败)'),(203,'2020-03-22 19:43:52','2020-03-22 19:43:52','用户【猿来入此】于【2020-03-22 19:43:52】登录系统！','猿来入此'),(204,'2020-03-22 19:43:54','2020-03-22 19:43:54','数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20200322194354.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]','未知(获取登录用户失败)');
/*!40000 ALTER TABLE `ylrc_operater_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ylrc_role`
--

DROP TABLE IF EXISTS `ylrc_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ylrc_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `name` varchar(18) NOT NULL,
  `remark` varchar(128) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ylrc_role`
--

LOCK TABLES `ylrc_role` WRITE;
/*!40000 ALTER TABLE `ylrc_role` DISABLE KEYS */;
INSERT INTO `ylrc_role` VALUES (1,'2020-03-15 13:16:38','2020-03-22 19:36:34','超级管理员','超级管理员拥有最高权限。',1),(2,'2020-03-15 13:18:57','2020-03-21 22:18:43','普通管理员','普通管理员只有部分权限',1),(4,'2020-03-21 20:11:00','2020-03-21 22:20:57','测试角色','sadsa',1),(7,'2020-03-22 17:21:15','2020-03-22 17:21:15','dsadsasadsa','',1);
/*!40000 ALTER TABLE `ylrc_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ylrc_role_authorities`
--

DROP TABLE IF EXISTS `ylrc_role_authorities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ylrc_role_authorities` (
  `role_id` bigint(20) NOT NULL,
  `authorities_id` bigint(20) NOT NULL,
  KEY `FKhj7ap1o1cjrl7enr9arf5f2qp` (`authorities_id`),
  KEY `FKg3xdaexmr0x1qx8omhvjtk46d` (`role_id`),
  CONSTRAINT `FKg3xdaexmr0x1qx8omhvjtk46d` FOREIGN KEY (`role_id`) REFERENCES `ylrc_role` (`id`),
  CONSTRAINT `FKhj7ap1o1cjrl7enr9arf5f2qp` FOREIGN KEY (`authorities_id`) REFERENCES `ylrc_menu` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ylrc_role_authorities`
--

LOCK TABLES `ylrc_role_authorities` WRITE;
/*!40000 ALTER TABLE `ylrc_role_authorities` DISABLE KEYS */;
INSERT INTO `ylrc_role_authorities` VALUES (2,2),(2,3),(2,5),(2,7),(2,11),(2,13),(2,16),(4,2),(4,13),(4,15),(7,2),(7,3),(7,5),(7,8),(7,9),(1,2),(1,3),(1,5),(1,8),(1,9),(1,7),(1,10),(1,11),(1,12),(1,13),(1,14),(1,15),(1,16),(1,19),(1,20),(1,21),(1,22),(1,23),(1,24),(1,25),(1,26);
/*!40000 ALTER TABLE `ylrc_role_authorities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ylrc_user`
--

DROP TABLE IF EXISTS `ylrc_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ylrc_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `email` varchar(32) DEFAULT NULL,
  `head_pic` varchar(128) DEFAULT NULL,
  `mobile` varchar(12) DEFAULT NULL,
  `password` varchar(32) NOT NULL,
  `sex` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `username` varchar(18) NOT NULL,
  `role_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_btsosjytrl4hu7fnm1intcpo8` (`username`),
  KEY `FKg09b8o67eu61st68rv6nk8npj` (`role_id`),
  CONSTRAINT `FKg09b8o67eu61st68rv6nk8npj` FOREIGN KEY (`role_id`) REFERENCES `ylrc_role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ylrc_user`
--

LOCK TABLES `ylrc_user` WRITE;
/*!40000 ALTER TABLE `ylrc_user` DISABLE KEYS */;
INSERT INTO `ylrc_user` VALUES (1,'2020-03-18 19:18:53','2020-03-22 12:43:54','ylrc@qq.com','20200322/1584850135123.jpg','13356565656','123456',1,1,'猿来入此',1),(2,'2020-03-18 19:20:36','2020-03-21 22:18:55','llq@qq.com','20200318/1584530412075.jpg','13918655656','123456',1,1,'测试账号',2),(4,'2020-03-20 20:35:21','2020-03-22 11:28:56','dsadsa','20200322/1584847734134.jpg','dsadsa','aaaa',1,1,'aaaa',4),(5,'2020-03-20 20:42:19','2020-03-22 12:01:59','','20200322/1584849717074.jpg','','dsadsa',1,1,'sadsasa',1);
/*!40000 ALTER TABLE `ylrc_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-22 19:43:54
