-- MySQL dump 10.13  Distrib 5.5.41, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: mapfamily
-- ------------------------------------------------------
-- Server version	5.5.41-0ubuntu0.14.04.1

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
-- Table structure for table `BaseDatas_comment`
--

DROP TABLE IF EXISTS `BaseDatas_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BaseDatas_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  `Comment_date` datetime NOT NULL,
  `App_id` int(11) NOT NULL,
  `Commenter_type` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  `commenter_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `BaseDatas_comment_d819cf18` (`commenter_id`),
  CONSTRAINT `BaseDatas_commen_commenter_id_7e9785f4_fk_administration_user_id` FOREIGN KEY (`commenter_id`) REFERENCES `administration_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BaseDatas_comment`
--

LOCK TABLES `BaseDatas_comment` WRITE;
/*!40000 ALTER TABLE `BaseDatas_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `BaseDatas_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BaseDatas_day_words`
--

DROP TABLE IF EXISTS `BaseDatas_day_words`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BaseDatas_day_words` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `BaseDatas_day_words_e8701ad4` (`user_id`),
  CONSTRAINT `BaseDatas_day_words_user_id_1739c0dd_fk_administration_user_id` FOREIGN KEY (`user_id`) REFERENCES `administration_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BaseDatas_day_words`
--

LOCK TABLES `BaseDatas_day_words` WRITE;
/*!40000 ALTER TABLE `BaseDatas_day_words` DISABLE KEYS */;
INSERT INTO `BaseDatas_day_words` VALUES (1,'如果心情不好，那就早点睡吧 ...','2015-09-23 15:30:32',2),(2,'Don\'t say maybe if you want to say no.','2015-09-24 00:19:22',2),(3,'每个曾出现在你生活中的、那个重要的人都会在你的生活中留下痕迹……','2015-09-27 10:22:24',2),(4,'你迷茫的原因之一:学的太少，想的太多；做的太少，想得的太多。。。','2015-10-01 03:07:18',2),(5,'猫喜欢吃鱼，可猫不会游泳；鱼喜欢吃蚯蚓，可鱼又不能上岸；上帝给了你很多诱惑，却不让你轻易得到，但是总不能流血就喊痛，怕黑就开灯，想念就联系，我们最多也就是个有故事的人。所以，人生就像蒲公英，看似自由，却身不由己。','2015-10-10 07:43:32',10),(6,'凉风吹散朦胧，冷雨淋湿腐朽；随心而至的秋，就这样悄无声息的将我笼罩。我想生活如春一样盎然，如夏一般火热…却被无情的挥霍了暇意的美好。只剩凄凉的秋，携带肆意嚣张的风，狂扫了枯叶般零碎散落的记忆…2015年10月10日。 伯爵。 随笔','2015-10-10 14:01:27',11),(7,'我们越长大，就越不敢说自己的梦想。因为你的梦想虽然很纯洁，却显得和这个世界那么格格不入。','2015-10-11 13:24:28',12),(8,'这个世界上根本没那么多浪漫爱情让我们偶遇，在做梦之前，还是舒舒服服过好自己的日子吧。而所有的这一切的基础就是健康最为重要。','2015-10-12 00:21:06',10),(9,'相遇时，她说相见恨晚，分开时，他说相爱恨早....','2015-10-26 04:01:31',4);
/*!40000 ALTER TABLE `BaseDatas_day_words` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TaskManagement_to_do_list`
--

DROP TABLE IF EXISTS `TaskManagement_to_do_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TaskManagement_to_do_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createDate` datetime NOT NULL,
  `receivers` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `app_type` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `visibility` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `finishDate` datetime DEFAULT NULL,
  `ip` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Status` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `operator_id` int(11) DEFAULT NULL,
  `sender_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `TaskManagement_to_do_list_4d14a16b` (`operator_id`),
  KEY `TaskManagement_to_do_list_924b1846` (`sender_id`),
  CONSTRAINT `TaskManagement_to_d_sender_id_2e7243d9_fk_administration_user_id` FOREIGN KEY (`sender_id`) REFERENCES `administration_user` (`id`),
  CONSTRAINT `TaskManagement_to__operator_id_41c7ade_fk_administration_user_id` FOREIGN KEY (`operator_id`) REFERENCES `administration_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TaskManagement_to_do_list`
--

LOCK TABLES `TaskManagement_to_do_list` WRITE;
/*!40000 ALTER TABLE `TaskManagement_to_do_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `TaskManagement_to_do_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Ticket_ticket`
--

DROP TABLE IF EXISTS `Ticket_ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Ticket_ticket` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `comments` longtext COLLATE utf8_unicode_ci NOT NULL,
  `createDate_date` datetime NOT NULL,
  `isFinished` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  `creator_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Ticket_ticket_3700153c` (`creator_id`),
  CONSTRAINT `Ticket_ticket_creator_id_5896b6eb_fk_administration_user_id` FOREIGN KEY (`creator_id`) REFERENCES `administration_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Ticket_ticket`
--

LOCK TABLES `Ticket_ticket` WRITE;
/*!40000 ALTER TABLE `Ticket_ticket` DISABLE KEYS */;
/*!40000 ALTER TABLE `Ticket_ticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `administration_user`
--

DROP TABLE IF EXISTS `administration_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `administration_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_admin` tinyint(1) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `head_portrait` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `fake_head_portrait` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `is_head_portrait` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administration_user`
--

LOCK TABLES `administration_user` WRITE;
/*!40000 ALTER TABLE `administration_user` DISABLE KEYS */;
INSERT INTO `administration_user` VALUES (2,'pbkdf2_sha256$15000$MCYLIDu8At4a$NIlANqFNjcdqwmOp7SPgcosoPOqIkBrGFgkAsYQkH2E=','2015-10-30 15:31:46','281475120@163.com',1,1,'张继伟','2015-05-11','/media/portrait/2_0.jpeg','/media/portrait/2_0.jpeg',1),(3,'pbkdf2_sha256$15000$kaVf6qvhivqb$Ar0FHcA4tQwqJvfbYxK7MnFLAotKsqqIQn52pfqvDb0=','2015-10-30 15:33:36','281475120@qq.com',1,0,'张小虎','1980-12-07','/media/portrait/3_0.jpg','/media/portrait/3_0.jpg',1),(4,'pbkdf2_sha256$15000$rczY8c9epl1f$Tzu4YFepiZ/RE+BBbbRrYOj+alx+cqj0W5olLM26EX0=','2015-10-26 23:48:34','461882709@qq.com',1,0,'jeawy','1980-12-07','/media/portrait/4_0.jpg','/media/portrait/4_0.jpg',1),(5,'pbkdf2_sha256$15000$eqGp2JK9Krst$mgN8ecb7yRBeRVSSFUs3tiFhqMjITw48kYUtdLP9xLA=','2015-09-16 13:35:45','2217522331@qq.com',1,0,'王一','1980-12-07','/media/portrait/5_0.jpg','/media/portrait/5_0.jpg',1),(8,'pbkdf2_sha256$15000$Z2SriafjKkuk$0BLn5chTEMU4ftHmmas7SetkmKbjh4ECoEXfiM6HKfE=','2015-10-31 03:28:41','349804557@qq.com',1,0,'王啸','1980-12-07','/media/portrait/8.jpg','/media/portrait/no_img/no_portrait1.jpg',0),(9,'pbkdf2_sha256$15000$0pU1LcuPVr2L$mTr+sZkLxrjrgbfbM55s41p5d4mmng8Y8q6G2BDWhR4=','2015-10-04 09:13:48','314654281@163.com',1,0,'高伟东','1980-12-07','/media/portrait/no_img/no_portrait1.jpg','/media/portrait/9_0.jpeg',0),(10,'pbkdf2_sha256$15000$3pG1dV0srmzj$wJ8FfWMPz9XH9UetunjmK8UtcgTwIslS2bAITwjqg80=','2015-10-10 07:34:23','810138699@qq.com',1,0,'李阿敏','1980-12-07','/media/portrait/10_0.jpg','/media/portrait/10_0.jpg',1),(11,'pbkdf2_sha256$15000$2O2yTmbo6bT1$0lwDK1GxPLbdnYeUsuWIyHMwkOFQIhapZTooL9GPlJ4=','2015-10-10 14:00:04','43398634@qq.com',1,0,'朱恩胜','1980-12-07','/media/portrait/11_0.jpg','/media/portrait/11_0.jpg',1),(12,'pbkdf2_sha256$15000$TA6sj0eywq2l$1LWpAxMlHtx1oEkvoqyPC5q19Lj0VQbHFUb4ObvEikk=','2015-10-11 12:47:00','594155689@qq.com',1,0,'Carrie','1980-12-07','/media/portrait/12_0.jpg','/media/portrait/12_0.jpg',1),(13,'pbkdf2_sha256$15000$Bui6uceU9Vl3$vkAn9CnCbbuYdfMycCM9NOPsPh8UGH/JYoIgj86dqtg=','2015-10-16 14:17:15','wangzhezzw@163.com',1,0,'赵正委','1980-12-07','/media/portrait/no_img/no_portrait1.jpg','/media/portrait/no_img/no_portrait1.jpg',0),(14,'pbkdf2_sha256$15000$d3Jzt1o07b9R$8kArzB2l26PpJtnoeJaXEjdobQrIg20Qrq3pHZnQTt0=','2015-10-17 14:49:32','iehzhg@163.com',1,0,'Azlan','1980-12-07','/media/portrait/14_0.jpg','/media/portrait/14_0.jpg',1);
/*!40000 ALTER TABLE `administration_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `administration_verifycode`
--

DROP TABLE IF EXISTS `administration_verifycode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `administration_verifycode` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administration_verifycode`
--

LOCK TABLES `administration_verifycode` WRITE;
/*!40000 ALTER TABLE `administration_verifycode` DISABLE KEYS */;
INSERT INTO `administration_verifycode` VALUES (7,'134553327@q.com','94c8e','0'),(8,'2814751207@163.com','f8j0k','0'),(11,'281475120@163.com','65fn','1'),(12,'281475120@qq.com','tb8t','1'),(14,'418174782@QQ.com','x1c5x','0'),(21,'hr@map2family.com','6rafb','0'),(22,'postmaster@map2family.com','9b86n','0');
/*!40000 ALTER TABLE `administration_verifycode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_0e939a4f` (`group_id`),
  KEY `auth_group_permissions_8373b171` (`permission_id`),
  CONSTRAINT `auth_group_permissions_group_id_58c48ba9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_group_permissi_permission_id_23962d04_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_417f1b1c` (`content_type_id`),
  CONSTRAINT `auth_permissi_content_type_id_51277a81_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add content type',4,'add_contenttype'),(11,'Can change content type',4,'change_contenttype'),(12,'Can delete content type',4,'delete_contenttype'),(13,'Can add session',5,'add_session'),(14,'Can change session',5,'change_session'),(15,'Can delete session',5,'delete_session'),(31,'Can add comment',11,'add_comment'),(32,'Can change comment',11,'change_comment'),(33,'Can delete comment',11,'delete_comment'),(34,'Can add ticket',12,'add_ticket'),(35,'Can change ticket',12,'change_ticket'),(36,'Can delete ticket',12,'delete_ticket'),(37,'Can add to_do_list',13,'add_to_do_list'),(38,'Can change to_do_list',13,'change_to_do_list'),(39,'Can delete to_do_list',13,'delete_to_do_list'),(40,'Can delete a record in to-do-list',13,'delete_todolist'),(41,'Can view to-do-list',13,'view_todolist'),(42,'Can add log',14,'add_log'),(43,'Can change log',14,'change_log'),(44,'Can delete log',14,'delete_log'),(45,'Can add bill',15,'add_bill'),(46,'Can change bill',15,'change_bill'),(47,'Can delete bill',15,'delete_bill'),(48,'Can add user',16,'add_user'),(49,'Can change user',16,'change_user'),(50,'Can delete user',16,'delete_user'),(51,'Can add heart beat',17,'add_heartbeat'),(52,'Can change heart beat',17,'change_heartbeat'),(53,'Can delete heart beat',17,'delete_heartbeat'),(54,'Can add verify code',18,'add_verifycode'),(55,'Can change verify code',18,'change_verifycode'),(56,'Can delete verify code',18,'delete_verifycode'),(57,'Can add last info',19,'add_lastinfo'),(58,'Can change last info',19,'change_lastinfo'),(59,'Can delete last info',19,'delete_lastinfo'),(60,'Can add l_ receiver',20,'add_l_receiver'),(61,'Can change l_ receiver',20,'change_l_receiver'),(62,'Can delete l_ receiver',20,'delete_l_receiver'),(63,'Can add tofuture',21,'add_tofuture'),(64,'Can change tofuture',21,'change_tofuture'),(65,'Can delete tofuture',21,'delete_tofuture'),(66,'Can add day_words',22,'add_day_words'),(67,'Can change day_words',22,'change_day_words'),(68,'Can delete day_words',22,'delete_day_words');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bill_bill`
--

DROP TABLE IF EXISTS `bill_bill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bill_bill` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sort` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `flag` tinyint(1) NOT NULL,
  `money` double NOT NULL,
  `item` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `remark` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bill_bill_e8701ad4` (`user_id`),
  CONSTRAINT `bill_bill_user_id_b0c15a3_fk_administration_user_id` FOREIGN KEY (`user_id`) REFERENCES `administration_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bill_bill`
--

LOCK TABLES `bill_bill` WRITE;
/*!40000 ALTER TABLE `bill_bill` DISABLE KEYS */;
INSERT INTO `bill_bill` VALUES (8,'淘宝',1,100,'买家购买利润','除去了购枣成本和邮寄费用','2015-05-03',2),(9,'淘宝',0,116.6,'4斤样品枣和邮寄费','包含1.6元的尺子费','2015-05-03',2),(10,'淘宝',0,0,'掌柜拼了','','2015-05-05',2),(11,' 记事',0,0,'备忘','感谢那些很挑剔的客户，你们让我们更快地变得更好','2015-05-07',2),(12,'大事记',0,0,'完成heartbeat功能','','2015-05-09',2),(13,'大事记',0,0,'有了map2family的企业专属邮箱','','2015-05-09',2),(14,'大事记',0,0,'python可以发邮件了','我已经可以拿python使用自己的企业邮箱发信了','2015-05-09',2),(15,'服务',0,147,'三个域名一年的费用','','2015-05-10',2),(16,'服务',0,89,'ESC服务器三个月的费用','','2015-05-10',2),(17,'大事记',0,0,'上线了注册功能','','2015-05-16',2),(18,'淘宝',0,0,'价格不能再降了，再降品质就降了','','2015-05-29',4),(19,'投资',0,3000,'百度基金','','2015-06-01',2),(20,'投资',0,2000,'民代天下','','2015-06-01',2),(21,'基金',0,26743.92,'天弘中证500基金','总金额：26743.92','2015-06-16',2),(22,'基金',0,20000,'广发中证500基金','','2015-06-16',2),(23,'基金',0,2399,'天弘中证500跌后补增','总投资为：29142.92','2015-06-16',2),(24,'基金',0,22600,'大跌后补仓--精选','总投资额：51742.92','2015-06-18',2),(25,'服务',0,100,'服务器续费','到10月份','2015-07-29',2),(26,'服务',0,1699,'开发购买显示器','一台显示器','2015-07-29',2),(27,'大事记',0,0,'在百度上搜索map2family已经可以搜到自己的网站了','','2015-08-15',2),(28,'服务',0,599,'购买5.5寸的安卓版测试机','小辣椒note','2015-08-20',2),(29,'大事记',0,0,'第一次有人加入我的team','yapo、huan zhang','2015-10-10',2),(30,'大事记',0,0,'第一次有其他的dev加入','yapo huan zhang','2015-10-10',2),(31,'大事记',0,0,'上周五我们开了第一个技术分享会','老赵最为新的dev加入了我们','2015-10-19',2),(32,'大事记',0,0,'王啸加入我们，负责用户体验','','2015-10-21',2);
/*!40000 ALTER TABLE `bill_bill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_417f1b1c` (`content_type_id`),
  KEY `django_admin_log_e8701ad4` (`user_id`),
  CONSTRAINT `django_admin_log_user_id_1c5f563_fk_administration_user_id` FOREIGN KEY (`user_id`) REFERENCES `administration_user` (`id`),
  CONSTRAINT `django_admin__content_type_id_5151027a_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2015-05-03 11:03:09','2','281475120@163.com',2,'Changed name.',16,2),(2,'2015-10-10 16:15:45','9','314654281@163.com',2,'Changed name.',16,2);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_3ec8c61c_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'log entry','admin','logentry'),(2,'permission','auth','permission'),(3,'group','auth','group'),(4,'content type','contenttypes','contenttype'),(5,'session','sessions','session'),(11,'comment','BaseDatas','comment'),(12,'ticket','Ticket','ticket'),(13,'to_do_list','TaskManagement','to_do_list'),(14,'log','logsys','log'),(15,'bill','bill','bill'),(16,'user','administration','user'),(17,'heart beat','heartbeat','heartbeat'),(18,'verify code','administration','verifycode'),(19,'last info','mailer','lastinfo'),(20,'l_ receiver','mailer','l_receiver'),(21,'tofuture','mailer','tofuture'),(22,'day_words','BaseDatas','day_words');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'administration','0001_initial','2015-05-03 10:33:57'),(2,'BaseDatas','0001_initial','2015-05-03 10:33:58'),(3,'TaskManagement','0001_initial','2015-05-03 10:33:58'),(4,'Ticket','0001_initial','2015-05-03 10:33:58'),(5,'contenttypes','0001_initial','2015-05-03 10:33:58'),(6,'admin','0001_initial','2015-05-03 10:33:58'),(7,'auth','0001_initial','2015-05-03 10:33:58'),(8,'bill','0001_initial','2015-05-03 10:33:58'),(9,'logsys','0001_initial','2015-05-03 10:33:59'),(10,'sessions','0001_initial','2015-05-03 10:33:59'),(11,'BaseDatas','0002_auto_20150503_1059','2015-05-03 10:59:26'),(12,'bill','0002_auto_20150508_1608','2015-05-08 16:08:19'),(13,'heartbeat','0001_initial','2015-05-08 16:08:19'),(14,'administration','0002_verifycode','2015-05-16 15:04:52'),(15,'administration','0003_auto_20150511_2153','2015-05-16 15:04:52'),(16,'administration','0004_auto_20150511_2216','2015-05-16 15:04:52'),(17,'administration','0005_auto_20150511_2216','2015-05-16 15:04:52'),(18,'administration','0006_auto_20150516_2133','2015-05-16 15:04:52'),(19,'administration','0007_auto_20150516_2134','2015-05-16 15:04:52'),(20,'bill','0002_auto_20150510_2207','2015-05-16 15:04:52'),(21,'bill','0003_auto_20150511_2153','2015-05-16 15:04:52'),(22,'bill','0004_auto_20150511_2216','2015-05-16 15:04:52'),(23,'bill','0005_auto_20150511_2216','2015-05-16 15:04:52'),(24,'bill','0006_auto_20150516_2133','2015-05-16 15:04:52'),(25,'bill','0007_auto_20150516_2134','2015-05-16 15:04:52'),(26,'bill','0008_auto_20150516_2136','2015-05-16 15:04:52'),(27,'bill','0009_merge','2015-05-16 15:04:52'),(28,'bill','0010_auto_20150516_1504','2015-05-16 15:04:52'),(29,'heartbeat','0002_auto_20150510_2207','2015-05-16 15:04:52'),(30,'heartbeat','0003_auto_20150511_2153','2015-05-16 15:04:52'),(31,'heartbeat','0004_auto_20150511_2216','2015-05-16 15:04:52'),(32,'heartbeat','0005_auto_20150511_2216','2015-05-16 15:04:52'),(33,'heartbeat','0006_auto_20150516_2133','2015-05-16 15:04:52'),(34,'heartbeat','0007_auto_20150516_2134','2015-05-16 15:04:52'),(35,'heartbeat','0008_auto_20150516_2136','2015-05-16 15:04:53'),(36,'heartbeat','0009_auto_20150516_1504','2015-05-16 15:04:53'),(37,'administration','0008_user_head_portrait','2015-07-05 10:19:18'),(38,'administration','0009_auto_20150705_1015','2015-07-05 10:19:18'),(39,'heartbeat','0009_auto_20150531_1910','2015-07-05 10:19:18'),(40,'heartbeat','0010_merge','2015-07-05 10:19:18'),(41,'heartbeat','0011_auto_20150705_1015','2015-07-05 10:19:18'),(42,'administration','0009_auto_20150719_2105','2015-08-29 08:29:53'),(43,'administration','0010_merge','2015-08-29 08:29:53'),(44,'heartbeat','0010_auto_20150719_2105','2015-08-29 08:29:53'),(45,'heartbeat','0011_auto_20150801_1729','2015-08-29 08:29:53'),(46,'heartbeat','0012_auto_20150801_1804','2015-08-29 08:29:53'),(47,'heartbeat','0013_auto_20150801_1814','2015-08-29 08:29:53'),(48,'heartbeat','0014_auto_20150829_1434','2015-08-29 08:29:53'),(49,'heartbeat','0015_merge','2015-08-29 08:29:53'),(50,'mailer','0001_initial','2015-08-29 08:29:54'),(51,'mailer','0002_auto_20150801_1729','2015-08-29 08:29:54'),(52,'mailer','0003_lastinfo_title','2015-08-29 08:29:54'),(53,'mailer','0004_auto_20150801_1814','2015-08-29 08:29:54'),(54,'administration','0011_auto_20150830_1830','2015-08-30 10:30:39'),(55,'heartbeat','0016_auto_20150830_1830','2015-08-30 10:30:39'),(56,'mailer','0005_auto_20150905_2248','2015-09-05 14:48:20'),(57,'mailer','0006_tofuture','2015-09-14 14:59:46'),(58,'BaseDatas','0003_day_words','2015-09-23 15:27:44'),(59,'mailer','0007_auto_20151009_2349','2015-10-09 15:49:35');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('11x9xeq0p3t57s9n177jmoujfnhqd0bt','ODg5MDZhN2E1YmE4NmQ0MjVjZjkxYTFlNTQxZTg3OThhNDEzYmNiYzp7Il9hdXRoX3VzZXJfaGFzaCI6IjI2ZjViYjZlYWQ3OWNlYzkwNTcyOTlmZWY4YjU1YjU1NzA1NzliNDciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjV9','2015-09-14 09:58:06'),('2hr3yjg3zj137ctcqhlusvcrf3d7vpdo','MGQwZGM0MTIwOTcyZWU0YmYyNmJjZWI0OWVlY2RiZTBlZTg4MTBhMTp7Il9hdXRoX3VzZXJfaGFzaCI6ImEyYjBiZGExMjYzNjBmYzEwZGFmNWRiMTk3NGJhZjM5MzliODUzZDgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9','2015-10-07 01:58:46'),('2ow1610ea97j19z05q2kpms8izhvj5pp','YmMxN2JkYTA5MTk1NmRlZTA0ODQ5ZjU1OWU1OGY5ZDM0ZDQ3ZTQ3ZDp7Il9hdXRoX3VzZXJfaGFzaCI6IjMzOGRmMTVhNDYxZmEzZmIxYTkxOGFlYzU4YjAzOWRhNzgwOTdkZjMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjR9','2015-06-07 03:58:52'),('31eib3tpuz2b5dvpixjyjko3lyx4kcw1','OTY0NjkzYmYyNjA3OTQzMWQ1ZjMyMmZhODExMzIwNmFkZDI1M2MwZjp7Il9hdXRoX3VzZXJfaGFzaCI6Ijc1NjE0NWFiNmUzMzY0ZDE5NmY2MzkzOGUzODVmMTQyOGQ5OTZkNmUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9','2015-07-08 14:12:30'),('3b1rdqs6h81to6y27vwzxa0yqvpc53pb','NmMyMWMxZWY0NzRiNTliZDI1MDVhZDNkYzAxZWMzNGExNjUxY2Y0NDp7fQ==','2015-09-17 10:42:05'),('3myduqu7e2wipjruqvpjiekww4ufohw6','NDk2ZjNhZTlkMmMwY2IwZWJiYTgyNjVjYTg0MzY5NDI4ZGJmZDYzOTp7Il9hdXRoX3VzZXJfaGFzaCI6Ijg2NDM1MTcyM2U2NzkxZjcyNWFkMDIzYjZjNzI3MjgyMjk2YjhmMjgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjN9','2015-11-09 07:12:01'),('3szidq7os73im3cwhhi633wtd7w3i9o2','OTY0NjkzYmYyNjA3OTQzMWQ1ZjMyMmZhODExMzIwNmFkZDI1M2MwZjp7Il9hdXRoX3VzZXJfaGFzaCI6Ijc1NjE0NWFiNmUzMzY0ZDE5NmY2MzkzOGUzODVmMTQyOGQ5OTZkNmUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9','2015-08-31 10:32:56'),('3tv3jamwzvuyrz2f04r7teg47ash69r8','NmMyMWMxZWY0NzRiNTliZDI1MDVhZDNkYzAxZWMzNGExNjUxY2Y0NDp7fQ==','2015-09-16 11:23:19'),('4o628lpvlquacb5pq6kzmfxiu0jmifj5','NmMyMWMxZWY0NzRiNTliZDI1MDVhZDNkYzAxZWMzNGExNjUxY2Y0NDp7fQ==','2015-10-24 14:00:05'),('5i6c31g1c91dlbjozv7smt8ynj9dnvg6','OTY0NjkzYmYyNjA3OTQzMWQ1ZjMyMmZhODExMzIwNmFkZDI1M2MwZjp7Il9hdXRoX3VzZXJfaGFzaCI6Ijc1NjE0NWFiNmUzMzY0ZDE5NmY2MzkzOGUzODVmMTQyOGQ5OTZkNmUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9','2015-05-22 23:32:03'),('6c22oohngzzbvubdf7xu81wl346ryl3j','NmMyMWMxZWY0NzRiNTliZDI1MDVhZDNkYzAxZWMzNGExNjUxY2Y0NDp7fQ==','2015-08-06 03:43:38'),('6jbiu4p49dl0aaaylh8d5d6u345imepf','NmMyMWMxZWY0NzRiNTliZDI1MDVhZDNkYzAxZWMzNGExNjUxY2Y0NDp7fQ==','2015-09-26 05:53:14'),('6zk4ytflk9i0o09lyzm24gr7kudzg71e','OTY0NjkzYmYyNjA3OTQzMWQ1ZjMyMmZhODExMzIwNmFkZDI1M2MwZjp7Il9hdXRoX3VzZXJfaGFzaCI6Ijc1NjE0NWFiNmUzMzY0ZDE5NmY2MzkzOGUzODVmMTQyOGQ5OTZkNmUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9','2015-06-30 16:10:00'),('9htna0fbztoz574hfvuogf9idynoqjiq','YzhjYjE0NGI3YWRhZGZjNTgwMDA5YTY3YzNmYzI2NWJiOTA1ZDJhYzp7Il9hdXRoX3VzZXJfaGFzaCI6IjBlZDhlZDhhNGM4ZTZjMTAwYjg5OWM1OGMzZGFlMWNiODRhZGIyY2QiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjExfQ==','2015-10-24 14:00:04'),('9i9snq1f5m74qvydp4a465gqhy3vzf6w','MGQwZGM0MTIwOTcyZWU0YmYyNmJjZWI0OWVlY2RiZTBlZTg4MTBhMTp7Il9hdXRoX3VzZXJfaGFzaCI6ImEyYjBiZGExMjYzNjBmYzEwZGFmNWRiMTk3NGJhZjM5MzliODUzZDgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9','2015-09-21 14:30:30'),('ag11abwqen8rfn2jjeovrktfgvjx2n44','OTY0NjkzYmYyNjA3OTQzMWQ1ZjMyMmZhODExMzIwNmFkZDI1M2MwZjp7Il9hdXRoX3VzZXJfaGFzaCI6Ijc1NjE0NWFiNmUzMzY0ZDE5NmY2MzkzOGUzODVmMTQyOGQ5OTZkNmUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9','2015-08-31 10:32:34'),('apb0vc29r63a02tv1g3uxnevmtv5sogz','NmMyMWMxZWY0NzRiNTliZDI1MDVhZDNkYzAxZWMzNGExNjUxY2Y0NDp7fQ==','2015-09-05 07:12:06'),('bm6rlyxva42it851copvamkozgnjp94i','NmMyMWMxZWY0NzRiNTliZDI1MDVhZDNkYzAxZWMzNGExNjUxY2Y0NDp7fQ==','2015-08-31 23:20:05'),('bqflrlot1q9br8oyrdr6b6kwfctojck2','OTY0NjkzYmYyNjA3OTQzMWQ1ZjMyMmZhODExMzIwNmFkZDI1M2MwZjp7Il9hdXRoX3VzZXJfaGFzaCI6Ijc1NjE0NWFiNmUzMzY0ZDE5NmY2MzkzOGUzODVmMTQyOGQ5OTZkNmUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9','2015-05-17 11:10:21'),('c0x7zqct92hkfc810i1zmctptrmoxyv5','OTY0NjkzYmYyNjA3OTQzMWQ1ZjMyMmZhODExMzIwNmFkZDI1M2MwZjp7Il9hdXRoX3VzZXJfaGFzaCI6Ijc1NjE0NWFiNmUzMzY0ZDE5NmY2MzkzOGUzODVmMTQyOGQ5OTZkNmUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9','2015-09-07 08:58:19'),('c845w9o84nnl95tfzg4b60bugbu5mmi6','NmMyMWMxZWY0NzRiNTliZDI1MDVhZDNkYzAxZWMzNGExNjUxY2Y0NDp7fQ==','2015-10-25 12:41:28'),('cikxm3d30k40a7zshkeui376pfzql1jh','MGQwZGM0MTIwOTcyZWU0YmYyNmJjZWI0OWVlY2RiZTBlZTg4MTBhMTp7Il9hdXRoX3VzZXJfaGFzaCI6ImEyYjBiZGExMjYzNjBmYzEwZGFmNWRiMTk3NGJhZjM5MzliODUzZDgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9','2015-10-31 15:17:23'),('cni5h2f83revnfg2dera5cq1s9cz057f','NmMyMWMxZWY0NzRiNTliZDI1MDVhZDNkYzAxZWMzNGExNjUxY2Y0NDp7fQ==','2015-09-17 10:42:05'),('cnjsia2xtlm1uug2yi7w3kqtm0m0a95m','NmMyMWMxZWY0NzRiNTliZDI1MDVhZDNkYzAxZWMzNGExNjUxY2Y0NDp7fQ==','2015-09-13 12:17:20'),('dhgib0uhoqpfbcg27yimqklsdpr1385f','NDk2ZjNhZTlkMmMwY2IwZWJiYTgyNjVjYTg0MzY5NDI4ZGJmZDYzOTp7Il9hdXRoX3VzZXJfaGFzaCI6Ijg2NDM1MTcyM2U2NzkxZjcyNWFkMDIzYjZjNzI3MjgyMjk2YjhmMjgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjN9','2015-09-28 04:11:15'),('dkr4bb5cddm65yq9hgrgo2plre35v32o','MGQwZGM0MTIwOTcyZWU0YmYyNmJjZWI0OWVlY2RiZTBlZTg4MTBhMTp7Il9hdXRoX3VzZXJfaGFzaCI6ImEyYjBiZGExMjYzNjBmYzEwZGFmNWRiMTk3NGJhZjM5MzliODUzZDgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9','2015-10-31 16:34:43'),('dzp4krehhmniblhaisnljbo7nfz2zkk7','MGQwZGM0MTIwOTcyZWU0YmYyNmJjZWI0OWVlY2RiZTBlZTg4MTBhMTp7Il9hdXRoX3VzZXJfaGFzaCI6ImEyYjBiZGExMjYzNjBmYzEwZGFmNWRiMTk3NGJhZjM5MzliODUzZDgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9','2015-10-13 23:24:13'),('e8yezs4kohqikye8an9k9t4334knl2rv','NmMyMWMxZWY0NzRiNTliZDI1MDVhZDNkYzAxZWMzNGExNjUxY2Y0NDp7fQ==','2015-05-18 02:56:49'),('gb3664vk4608w4wpv7d3e4t8d9ydp14d','NmMyMWMxZWY0NzRiNTliZDI1MDVhZDNkYzAxZWMzNGExNjUxY2Y0NDp7fQ==','2015-10-24 07:26:09'),('gpnlrz7bpzg9yfoo2ntyouiav7nh03b8','NmMyMWMxZWY0NzRiNTliZDI1MDVhZDNkYzAxZWMzNGExNjUxY2Y0NDp7fQ==','2015-08-31 12:57:55'),('h10c5lgr69xmzndmp5rlxl5a0vdxezo3','MGQwZGM0MTIwOTcyZWU0YmYyNmJjZWI0OWVlY2RiZTBlZTg4MTBhMTp7Il9hdXRoX3VzZXJfaGFzaCI6ImEyYjBiZGExMjYzNjBmYzEwZGFmNWRiMTk3NGJhZjM5MzliODUzZDgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9','2015-11-09 15:28:34'),('hiuldotrt09xvh5kar4bpcmgeebnevm7','YzUyZjNkZWFjNjgwNWM3OTZmNjQ0ZTQ2ODMxOWNlZTA1NWE5NmY5ZDp7Il9hdXRoX3VzZXJfaGFzaCI6IjI4ZTBmZWEyYWZiOGI5NDdiMzg4ZDM1OWYxNzdiY2I5YWMyYTcwMjQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjEwfQ==','2015-10-24 07:34:23'),('imavfa8mvagiqnidkdc8upp7wdnwm4hc','OTY0NjkzYmYyNjA3OTQzMWQ1ZjMyMmZhODExMzIwNmFkZDI1M2MwZjp7Il9hdXRoX3VzZXJfaGFzaCI6Ijc1NjE0NWFiNmUzMzY0ZDE5NmY2MzkzOGUzODVmMTQyOGQ5OTZkNmUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9','2015-06-15 23:16:29'),('isvv69g055jpbd9u9yuall0apzm30ash','M2U0NjY3NjU4YmJmMDgwYzI0N2RiOGVmNGM1OTg5ZjBmOTdhZTkyOTp7Il9hdXRoX3VzZXJfaGFzaCI6IjgxMmYxZTQzNjdkMTE0N2M4Y2NhY2I0MTQ4MzVjYzFkNGU5NmZkNzciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjh9','2015-11-14 03:28:41'),('lggr93wjgrmhj6102nw8ivwrdc7cmm8s','MGQwZGM0MTIwOTcyZWU0YmYyNmJjZWI0OWVlY2RiZTBlZTg4MTBhMTp7Il9hdXRoX3VzZXJfaGFzaCI6ImEyYjBiZGExMjYzNjBmYzEwZGFmNWRiMTk3NGJhZjM5MzliODUzZDgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9','2015-09-18 09:08:52'),('lrxyu974v4xb4shax1n2lpmyec8ovu9c','MGQwZGM0MTIwOTcyZWU0YmYyNmJjZWI0OWVlY2RiZTBlZTg4MTBhMTp7Il9hdXRoX3VzZXJfaGFzaCI6ImEyYjBiZGExMjYzNjBmYzEwZGFmNWRiMTk3NGJhZjM5MzliODUzZDgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9','2015-09-15 12:07:28'),('m8kzwchbxbue6zifl8m2fokqfoof7ebo','OTY0NjkzYmYyNjA3OTQzMWQ1ZjMyMmZhODExMzIwNmFkZDI1M2MwZjp7Il9hdXRoX3VzZXJfaGFzaCI6Ijc1NjE0NWFiNmUzMzY0ZDE5NmY2MzkzOGUzODVmMTQyOGQ5OTZkNmUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9','2015-08-31 10:31:22'),('mjqvhjiu5428aavzf46f6klr3av5l82n','OTY0NjkzYmYyNjA3OTQzMWQ1ZjMyMmZhODExMzIwNmFkZDI1M2MwZjp7Il9hdXRoX3VzZXJfaGFzaCI6Ijc1NjE0NWFiNmUzMzY0ZDE5NmY2MzkzOGUzODVmMTQyOGQ5OTZkNmUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9','2015-08-10 11:03:28'),('oatbef1vuzn8ozj6akm6ugvhhidif79v','ZmY0NmFkZWRhMjYwM2VlMjBhMDRiZDEzYzU4Njg4ZTMxOGUwYzhmYTp7Il9hdXRoX3VzZXJfaGFzaCI6ImM2YmFjNWJiNjFiNDdiMGQzYTExZmNhMDAwMWFmYWY5ODJjODc4MTkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjEyfQ==','2015-10-25 12:47:00'),('olx5q019kuru7wwk9sj9fbqpd5cvrkgw','ZGUzYzRjOGViNjliYzg3OGIyOTc5YzljZmZhODQ2NzkxOTY4ZDg2ZTp7Il9hdXRoX3VzZXJfaGFzaCI6ImM1NjZkM2FhYjBjOTllNzYyMjFmODIxNTY0MzNlY2ZiOWU1NWI4YzYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjh9','2015-09-12 14:18:36'),('owkzobo6190wlsojvprjtf4a3kh8z9hf','NmMyMWMxZWY0NzRiNTliZDI1MDVhZDNkYzAxZWMzNGExNjUxY2Y0NDp7fQ==','2015-10-18 09:16:11'),('oze0dr6sq616gjrc61iio3qxfzr7uwqp','MGQwZGM0MTIwOTcyZWU0YmYyNmJjZWI0OWVlY2RiZTBlZTg4MTBhMTp7Il9hdXRoX3VzZXJfaGFzaCI6ImEyYjBiZGExMjYzNjBmYzEwZGFmNWRiMTk3NGJhZjM5MzliODUzZDgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9','2015-09-15 12:49:32'),('puqtvk7s8f0onzrfjfgm6b5r387fp3gp','NmMyMWMxZWY0NzRiNTliZDI1MDVhZDNkYzAxZWMzNGExNjUxY2Y0NDp7fQ==','2015-08-31 06:16:45'),('pxa0krin2v7che2yemrmf87ex8ffvske','ZGUzYzRjOGViNjliYzg3OGIyOTc5YzljZmZhODQ2NzkxOTY4ZDg2ZTp7Il9hdXRoX3VzZXJfaGFzaCI6ImM1NjZkM2FhYjBjOTllNzYyMjFmODIxNTY0MzNlY2ZiOWU1NWI4YzYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjh9','2015-09-12 14:27:17'),('qg1mcwc0a57iw6kpjqsqib5kubzj6ua4','MGQwZGM0MTIwOTcyZWU0YmYyNmJjZWI0OWVlY2RiZTBlZTg4MTBhMTp7Il9hdXRoX3VzZXJfaGFzaCI6ImEyYjBiZGExMjYzNjBmYzEwZGFmNWRiMTk3NGJhZjM5MzliODUzZDgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9','2015-10-07 14:03:04'),('qsccco1ippcgbyp9ueccc1ztunyiphfn','MGQwZGM0MTIwOTcyZWU0YmYyNmJjZWI0OWVlY2RiZTBlZTg4MTBhMTp7Il9hdXRoX3VzZXJfaGFzaCI6ImEyYjBiZGExMjYzNjBmYzEwZGFmNWRiMTk3NGJhZjM5MzliODUzZDgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9','2015-09-18 13:12:57'),('rl1ri6r5s39wrz8vktlahbmtc2xrh2jr','NDk2ZjNhZTlkMmMwY2IwZWJiYTgyNjVjYTg0MzY5NDI4ZGJmZDYzOTp7Il9hdXRoX3VzZXJfaGFzaCI6Ijg2NDM1MTcyM2U2NzkxZjcyNWFkMDIzYjZjNzI3MjgyMjk2YjhmMjgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjN9','2015-07-19 10:35:42'),('rv3ldoepgsqzbnfbvlc1wwkwvkpban99','NmMyMWMxZWY0NzRiNTliZDI1MDVhZDNkYzAxZWMzNGExNjUxY2Y0NDp7fQ==','2015-09-14 09:05:32'),('sg6aj8h4rylg6b07w8lb56ivx2qc0kpq','MGQwZGM0MTIwOTcyZWU0YmYyNmJjZWI0OWVlY2RiZTBlZTg4MTBhMTp7Il9hdXRoX3VzZXJfaGFzaCI6ImEyYjBiZGExMjYzNjBmYzEwZGFmNWRiMTk3NGJhZjM5MzliODUzZDgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9','2015-10-16 07:05:43'),('sn2plgwteyydxoa3h0gn1fb3wuu3inen','OTY0NjkzYmYyNjA3OTQzMWQ1ZjMyMmZhODExMzIwNmFkZDI1M2MwZjp7Il9hdXRoX3VzZXJfaGFzaCI6Ijc1NjE0NWFiNmUzMzY0ZDE5NmY2MzkzOGUzODVmMTQyOGQ5OTZkNmUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9','2015-08-08 08:02:31'),('svwlq8ett5baiuyrhoxn0jl9are96ue8','NmMyMWMxZWY0NzRiNTliZDI1MDVhZDNkYzAxZWMzNGExNjUxY2Y0NDp7fQ==','2015-10-25 12:41:23'),('t9kd7ovn657fb8ny8m0dnaewedo5p81n','OTY0NjkzYmYyNjA3OTQzMWQ1ZjMyMmZhODExMzIwNmFkZDI1M2MwZjp7Il9hdXRoX3VzZXJfaGFzaCI6Ijc1NjE0NWFiNmUzMzY0ZDE5NmY2MzkzOGUzODVmMTQyOGQ5OTZkNmUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9','2015-05-17 11:28:39'),('uui7o9fp65xtdbz94lno4nbmpg4g1q6h','NmMyMWMxZWY0NzRiNTliZDI1MDVhZDNkYzAxZWMzNGExNjUxY2Y0NDp7fQ==','2015-10-25 12:43:45'),('uy1sc2ji1l5tujftnno29mztxxdmlrlu','MGQwZGM0MTIwOTcyZWU0YmYyNmJjZWI0OWVlY2RiZTBlZTg4MTBhMTp7Il9hdXRoX3VzZXJfaGFzaCI6ImEyYjBiZGExMjYzNjBmYzEwZGFmNWRiMTk3NGJhZjM5MzliODUzZDgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9','2015-09-21 16:06:35'),('v4hr6a9de1masd4zph7ec3h5rrk5ble6','NDk2ZjNhZTlkMmMwY2IwZWJiYTgyNjVjYTg0MzY5NDI4ZGJmZDYzOTp7Il9hdXRoX3VzZXJfaGFzaCI6Ijg2NDM1MTcyM2U2NzkxZjcyNWFkMDIzYjZjNzI3MjgyMjk2YjhmMjgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjN9','2015-11-13 15:33:36'),('vfjq7b53r9g5cy2r3u0sm51r3zkvzvbt','MGQwZGM0MTIwOTcyZWU0YmYyNmJjZWI0OWVlY2RiZTBlZTg4MTBhMTp7Il9hdXRoX3VzZXJfaGFzaCI6ImEyYjBiZGExMjYzNjBmYzEwZGFmNWRiMTk3NGJhZjM5MzliODUzZDgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9','2015-11-13 11:16:20'),('wjtfbntee75zwst7ereqhqk9iv3o62eu','MGQwZGM0MTIwOTcyZWU0YmYyNmJjZWI0OWVlY2RiZTBlZTg4MTBhMTp7Il9hdXRoX3VzZXJfaGFzaCI6ImEyYjBiZGExMjYzNjBmYzEwZGFmNWRiMTk3NGJhZjM5MzliODUzZDgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9','2015-09-16 14:46:41'),('wzg82s6j6bojxpl7bkowxjtdrd8atpbb','OTY0NjkzYmYyNjA3OTQzMWQ1ZjMyMmZhODExMzIwNmFkZDI1M2MwZjp7Il9hdXRoX3VzZXJfaGFzaCI6Ijc1NjE0NWFiNmUzMzY0ZDE5NmY2MzkzOGUzODVmMTQyOGQ5OTZkNmUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9','2015-05-31 14:35:43'),('x0ah45j9c6ru7a2ixq0noalqzlsh6yc0','ODg5MDZhN2E1YmE4NmQ0MjVjZjkxYTFlNTQxZTg3OThhNDEzYmNiYzp7Il9hdXRoX3VzZXJfaGFzaCI6IjI2ZjViYjZlYWQ3OWNlYzkwNTcyOTlmZWY4YjU1YjU1NzA1NzliNDciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjV9','2015-09-30 13:35:45'),('xe6h32cgcno36g66q3b6nfddh8dfc642','ZDdjY2IzZWMzY2Q0NzczM2ExYmUwMDkyMTQxZjNlZWJjZDYzN2I2ZTp7Il9hdXRoX3VzZXJfaGFzaCI6IjVmZmJkZGJjNTQyOWU1MmY3YTE2YTFiOTdkYTViMjgxYWUyYzY2Y2EiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjEzfQ==','2015-10-30 14:17:15'),('xqmmypaeldrkk3p4y8wnf5mz30zx24dj','MGQwZGM0MTIwOTcyZWU0YmYyNmJjZWI0OWVlY2RiZTBlZTg4MTBhMTp7Il9hdXRoX3VzZXJfaGFzaCI6ImEyYjBiZGExMjYzNjBmYzEwZGFmNWRiMTk3NGJhZjM5MzliODUzZDgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9','2015-09-18 09:06:57'),('xy4krm41e1pmtkkz3qkdsryvz1k6pn6f','ODg5MDZhN2E1YmE4NmQ0MjVjZjkxYTFlNTQxZTg3OThhNDEzYmNiYzp7Il9hdXRoX3VzZXJfaGFzaCI6IjI2ZjViYjZlYWQ3OWNlYzkwNTcyOTlmZWY4YjU1YjU1NzA1NzliNDciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjV9','2015-09-13 12:25:18'),('ydws8ycwgglkvvwt7yjzl7tfoq9adylg','OTUxYjg3N2JiMDAxYWQwNjVmYjJkY2I3YWM5MzQxODZmNWMxODZmMTp7Il9hdXRoX3VzZXJfaGFzaCI6ImY2MjUzYjI4YmMwNmI1MDBhYjc0ODRmYzg5MTliN2M1YzJkZDIyMzEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjE0fQ==','2015-10-31 14:49:32'),('yfdymjcod3ltdmdzhydi3ixvsh1w7h5h','OTY0NjkzYmYyNjA3OTQzMWQ1ZjMyMmZhODExMzIwNmFkZDI1M2MwZjp7Il9hdXRoX3VzZXJfaGFzaCI6Ijc1NjE0NWFiNmUzMzY0ZDE5NmY2MzkzOGUzODVmMTQyOGQ5OTZkNmUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9','2015-08-15 01:45:00'),('yjqhfrxoyw5i9u4wt109o6p22122xaw4','MGQwZGM0MTIwOTcyZWU0YmYyNmJjZWI0OWVlY2RiZTBlZTg4MTBhMTp7Il9hdXRoX3VzZXJfaGFzaCI6ImEyYjBiZGExMjYzNjBmYzEwZGFmNWRiMTk3NGJhZjM5MzliODUzZDgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9','2015-10-15 03:02:06'),('yp9kjur2um1gyl0hauqdsgivnlck76gz','YWIzY2E0YmEyZTA5ZDRkYjNhNWY2MWIwZTkxNGE0M2M3OTY1MmY2NTp7Il9hdXRoX3VzZXJfaGFzaCI6Ijc3MWQzZDk3MGI3MGY2ZGJjMzkwYjg1MWRhN2U4MmMwMjQ3ZDkzZjUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjV9','2015-08-05 13:58:31'),('yte5joce1qa8z0x2d94n95lk4473fcuh','OTUxYjg3N2JiMDAxYWQwNjVmYjJkY2I3YWM5MzQxODZmNWMxODZmMTp7Il9hdXRoX3VzZXJfaGFzaCI6ImY2MjUzYjI4YmMwNmI1MDBhYjc0ODRmYzg5MTliN2M1YzJkZDIyMzEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjE0fQ==','2015-10-31 14:46:15'),('zq9i1ayiwjtntuns161c91b5fhl9r899','NmMyMWMxZWY0NzRiNTliZDI1MDVhZDNkYzAxZWMzNGExNjUxY2Y0NDp7fQ==','2015-05-31 09:54:21');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `heartbeat_heartbeat`
--

DROP TABLE IF EXISTS `heartbeat_heartbeat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `heartbeat_heartbeat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `words` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `date` datetime DEFAULT NULL,
  `owner_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `heartbeat_heartbeat_5e7b1936` (`owner_id`),
  CONSTRAINT `heartbeat_heartbeat_owner_id_668eba4_fk_administration_user_id` FOREIGN KEY (`owner_id`) REFERENCES `administration_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `heartbeat_heartbeat`
--

LOCK TABLES `heartbeat_heartbeat` WRITE;
/*!40000 ALTER TABLE `heartbeat_heartbeat` DISABLE KEYS */;
INSERT INTO `heartbeat_heartbeat` VALUES (1,'早点睡吧，goodnight','2015-05-08 00:00:00',2),(3,'阳光不再是奢侈品...','2015-05-12 00:00:00',2),(4,'不仅卖最优质的狗头枣，还卖服务，卖售后，我们诚心卖，您放心买','2015-05-12 00:00:00',2),(6,'晚上梦到好多彩虹','2015-05-13 00:00:00',2),(7,'完全是private things,没有其他人知道，这是一个秘密花园一样的，关键是我还没有想好怎么把它建得更好，所以你可以把你的想法，你想要什么样的东西告诉我，大家觉得是个不错的idea，就实现它，还有绝对不会使用你的影响力做任何事情，我会把你当作no one。','2015-05-25 00:00:00',4),(8,'还会有一个超级特别的用户权限','2015-05-25 00:00:00',4),(10,'您来指挥我们的程序员，看脸，先上传您的相片，颜值越高，程序员越愿意做，一句话一件事让他们决定为你code吧','2015-05-30 00:00:00',4),(12,'每月将工资的3000元投资基金，长期','2015-06-03 00:00:00',2),(14,'遗愿清单、写给未来自己的一封信。查收别人写给自己的信','2015-07-19 00:00:00',3),(16,'改变已经在路上，你在哪儿？','2015-07-23 00:00:00',2),(17,'前几天因为一个突发事件，我第一次想到了一个不错的功能，最后一封信：写一封信，写好之后，在指定的时间内，如果不推迟或者取消发送这封信的话，这封信就会被发送出去，为什么要做这个功能呢，就是防止突发的意外情况后你还没有很多没有交代的事情。','2015-07-25 00:00:00',2),(18,'增加了机器人索引标签','2015-07-25 00:00:00',2),(19,'如果上传了头像，那么会在首页显示你的头像','2015-08-07 00:00:00',2),(21,'中国的IT软件行业缺乏像86版西游记一样的经典作品','2015-08-09 00:00:00',2),(23,'你玩过慢邮，也使用过快邮，有没有想过给多年后的自己写一封信，写完后ta就被抛在了漫漫网络上，你再也这不到ta，多年后你可能已经忘了你曾经写过一封信给自己，直到有一天你的邮箱叮收到了一封信，你读着读着好像在跟多年前的自己在对话...','2015-08-14 00:00:00',2),(24,'谢霆锋把做饭做出来艺术的感觉，86版的西游记之所以经典，是因为他把西游记当成一件艺术品在做，而目前大多数西游记不成功的原因在于他们没有潜心去做艺术品而只是为了商业目的，互联网&IT，也是时候做自己艺术品版的产品了。','2015-08-15 00:00:00',3),(25,'谢霆锋把做饭做出来艺术的感觉，86版的西游记之所以经典，是因为他把西游记当成一件艺术品在做，而目前大多数西游记不成功的原因在于他们没有潜心去做艺术品而只是为了商业目的，互联网&IT，也是时候做自己艺术品版的产品了。','2015-08-15 00:00:00',2),(26,'鉴于map2family一直没有人注册，所以我决定搞个营销活动：注册并上传头像就送一件衬衫！规则：一个区域只送一件，头像要求传递正能量信息的头像且是本人的真实头像，先到先得。\n题外话：map2fa mi ly有个很可爱的功能：可以给未来的自己写信；可以给自己的亲人写信；甚至按照你们的要求到时候已纸质的形式寄送出去','2015-08-20 00:00:00',2),(27,'map2family 活动。“搜map2family 活动”即可找到我们的活动页面。','2015-08-20 00:00:00',2),(30,'我为什么一直登录map2family，因为我一直在想怎么让我的map2family变得更好看更cool，那么我想用户也有和我同样的出发点，他们一直登录map2family不仅因为实用，而且因为他们想让自己的map2family变得更好看，更cool，怎么样才能做到呢？答案是让一切变得都是可以定制的，可以定制的背景，可以定制的头像。。。','2015-08-23 00:00:00',2),(31,'公司管理：老员工必须带新的员工；技术分享会，分享自己学到的技术闪光点，并对分享者进行投票奖励，可以是实物，也可以是money。。。','2015-08-24 00:00:00',2),(32,'定制WEB APP：用户发出定制APP请求后，由经网站认证程序员完成，用户需先支付30%，完成后支付30%，技术支持结束后40%。认证程序员的方法是：初始阶段是邀请机制，被邀请进来的人可以邀请其他人，认证有邀请别人的权限，刚被邀请进来的人是不可以邀请其他人进来的，即没有邀请其他的权限，邀请其他人的权限实行积分制，某程序员每进行一个失败的案例，本身减1分，邀请其进来的人减0.5分。初始为5分，刷分的直接剥夺程序员身份。','2015-08-25 00:00:00',2),(33,'21世纪什么最能赢得客户的信赖支持和忠诚？服务服务服务，重要的事说三遍！','2015-08-27 00:00:00',2),(35,'明天头像和背景可设置','2015-08-29 13:10:56',2),(38,'第一天','2015-08-30 13:35:28',5),(40,'今天早上淋着小雨出门了 ，心里不算甜蜜 也不空荡。不打算回家了 觉得也没什么 挺一挺就过去了。','2015-08-31 05:35:47',5),(41,'他现在就在我隔壁，说实话我有一点紧张，他在我心里，时而很近时而很远， 我也说不出来 总之 就这样不松不紧的 联系起来了，不对外公开关系，但也不是单线。很多时候 我看到他 心里就有这他妈不就是我老公吗的想法，他并不是我之前罗列好条件的标准对象，可是在一起 很舒服，头一次感觉找了一个像爸爸，像哥哥的......','2015-08-31 09:03:44',5),(46,'早上，收到他们夜里发来的信息，两个，羊羊&继伟','2015-08-31 22:39:01',5),(47,'员工不可能都很优秀，如果管理能力不同、性格不同、各式各样的员工，发挥他们最大的能动力。','2015-09-02 02:32:01',2),(50,'我想搞个活动来提升一下用户数量，一起来玩。大家缺什么说说，我看能不能在活动中提供，PS：缺钱的、缺女朋友的就不要提了，有单身女性汪缺男朋友的可以提一下，我思考下我身边的单身男性汪愿不愿意做我的活动奖品。。。','2015-09-06 09:22:15',2),(51,'首页推荐系统：把你认为好的东西推荐给我们，我们觉得好就会放在首页去展示给大家，让大家一起来分享这些美好的东西。','2015-09-10 07:49:33',2),(52,'加个功能：让人眼睛移不开的图片','2015-09-10 13:55:35',2),(53,'what i think is what you what','2015-09-10 23:40:54',2),(54,'ta的推荐。\nta推荐的好的文字、图片等等','2015-09-11 03:23:10',2),(55,'加个可以和开发者互动交流的渠道平台','2015-09-12 06:34:32',2),(56,'本人矜矜业业的业界良心','2015-09-12 09:28:53',2),(57,'每日推：\n每日由用户决定是否要推送至首页，当用户决定把ta自己觉得好的东西推送的时候，再由所有用户积攒的推送值最高的推文、图、视频将被显示到首页。还有历史推送精选功能。','2015-09-13 16:23:45',2),(58,'跟着百万赚十万，跟着千万赚百万，跟着亿万赚千万。一根稻草不值钱，绑在白菜上，就是白菜的价钱，绑在大闸蟹上就是大闸蟹的价 格。\n\n　　跟着苍蝇近厕所，跟着蜂蜜找花朵，跟积极的人在一起，你就是积极的，跟着消极的在一起，你就会出口成脏。\n\n　　朋友，看看你所在的环境，需要改变没有呢？\n\n　　现实生活中，你和谁在一起的确很重要，甚至能改变你的成长轨迹，决定你 的 人生成败。\n\n　　和什么样的人在一起，就会有什么样的人生。和勤奋的人在一起，你不会懒惰；和积极的人在一起，你不会消沉；与智者同行，你会不同凡响；与高人为伍，你能登上巅峰。\n\n　　科学家研究认为：\"人是唯一能接受暗示的动物。\"积极的暗示，会对人的情绪和生理状态产生良好的影响，就像房市经过爱飞递颗噴剂洗礼的男人一样，瞬间爆发出强而有力的性能，激发人的内在潜能，发挥人的超常水平，使人进取，催人奋进。\n\n　　远离消极的人吧!否则，他们会在不知不觉中偷走你的梦想，使你渐渐颓废，变得平庸。\n\n　　积极的人像太阳，照到哪里哪里亮；消极的人像月亮，初一十五不一样。态度决定一切。有什么态度，就有什么样的未来：性格决定命运。有怎样的性格，就有怎样的人生。\n\n　　有人说，人生有三大幸 运：上学时遇到一位好老 师；工作时遇到一位好师傅；成家时遇到一个好伴侣。\n\n　　有时他们一个甜美的笑容，一句温馨的问候，就能使你 的 人生与众不同，光彩照人。\n\n　　生活中最不幸的是：由于你身边缺乏积极进取的人，缺少远见卓识的人，使你 的 人生变得平平庸庸，黯然无光！','2015-09-14 04:11:37',3),(59,'发现精彩，传递梦想','2015-09-15 08:31:24',2),(63,'我们需要冷静思考...','2015-09-18 01:55:50',2),(64,'我需要净化心灵.','2015-09-18 01:56:04',2),(65,'几个基本功能做好后，就开始做UI的美化部分.','2015-09-18 01:58:19',2),(66,'每个人都需要一块只是留给自己的净土，map2family就是这样一个地方，ta为你提供了可以写私密心事的地方：心情；为你提供了可以上传自己图片的地方：图片；可以写文章的地方：文章；可以近距离看看我们网站上都有谁：users，在这里你可以看到我们网站上有哪些用户，但只是看看而已。为了给你们做一个漂亮且个性化的网站，我们尽量做到一切可定制：头像、整体背景、心情背景、文章背景、甚至菜单我们也让你们可以定制，能做多漂亮的一个网站一切取决于你的创造力。','2015-09-19 06:22:14',2),(67,'在map2family最重要的是：你的一切只有你能看到，除非你使用推荐功能把你认为最漂亮的东西推给系统，此时系统会综合评价后推给所有的用户','2015-09-19 06:24:16',2),(70,'来一些隐藏的功能，让用户自己去发现，可能会得到意想不到的推广效果','2015-09-21 10:36:26',2),(71,'你的心事写在哪里呢？\n你也需要像map2family这样的一个地方，静静的写下你的心事。','2015-09-22 06:43:11',2),(72,'心强大，你的世界就强大','2015-09-22 08:12:04',2),(74,'如果心情不好，那就早点睡吧','2015-09-22 15:21:44',2),(76,'提供图库','2015-09-24 00:02:47',2),(77,'有个人把我变成了妖怪，直到我遇到了你，我才知道我还可以变回为人。。。','2015-09-24 06:33:52',2),(78,'be waked up, be turned off,be waked up.be free.','2015-09-25 04:45:53',2),(79,'Something need to do:\n游泳\n自然的笑\n跑步健身\n八块腹肌','2015-09-25 22:43:47',2),(80,'在一起的时候我觉得自己就是个ren zha，一直鄙视自己，只有这个时候才觉得自己像个人...','2015-09-27 00:49:44',2),(82,'想重新做人','2015-09-27 01:11:48',2),(83,'你觉得很可惜，可别人可能并不这么觉得……that\'s fine，just to be the better one','2015-09-27 08:48:40',2),(84,'做个好人，变得更加优秀！','2015-09-29 03:05:53',2),(86,'我记性很差，其实第三天的时候我已经记不清你的脸了，直到后来你上传了一张你的照片，才逐渐清晰起来..\n那天我坚持要见你就是因为我已经记不起你的脸了……所以想去看看....','2015-10-03 06:00:53',2),(87,'一个好悲伤的梦，梦到你像以前一样诱惑我，因为你知道一旦我没有忍住我们就又能回到以前一样了。但是我忍住了，我看到你哭了，好伤心，你难受得去啃硬邦邦的生玉米，含着泪把它咬碎，我看见有人嘲笑你，我用生玉米砸ta的嘴，却不能过去安慰你……\n我醒了。希望这梦不是你真实的写照，也庆幸自己看不到，不然自己真的能狠得下心吗……','2015-10-04 19:56:16',2),(90,'我们不完美，但是我们从没有停下进步的脚步，而且也不会停下....','2015-10-10 12:39:33',2),(91,'真的似乎是没有谈过恋爱的样子吗？','2015-10-11 05:26:50',4),(93,'这场突然的暴雨～～ 天空也需要释放自己的情绪，不是吗？','2015-10-11 13:03:17',12),(94,'Kiss in the sunshine','2015-10-11 13:04:04',12),(95,'Я по вам скучаю, дорогие друзья','2015-10-11 13:40:51',12),(101,'在首页的历史页中提供回复功能，并且给发布者提供删除功能！','2015-10-12 00:57:13',2),(102,'地铁上挤到让人绝望的早晨，整个世界都灰暗了…','2015-10-13 00:17:06',12),(103,'我们永远不能确定明天的太阳和意外哪个先来临...','2015-10-13 01:27:38',2),(105,'见了很多以前在书上看到的事情','2015-10-14 00:46:27',2),(106,'刚邀他们加入的时候，我许他们可以学到完整的web开发经验，他们将来去其他单位找工作的时候，会很有优势；等他们学会之后，我提供给他们的是成就感，每个计算机人员都梦寐以求的东西；接着，我想许他们舒适的生活...','2015-10-15 12:34:19',3),(107,'人人都是好友，但不是人人都是家人，好友根据互动程度会自动筛选的','2015-10-15 15:45:47',4),(108,'我们对有一部分人是不要求他的工作时间的，也不安排具体的工作，但是我们每周会有固定的技术分享会，年底的时候会对这部分人的贡献进行评估，以确定是否继续可以保留这种特权','2015-10-16 01:25:51',3),(109,'增加话题功能....例如：如果有一天，你和曾经爱过的人久别重逢，你希望是什么场景？\n然后让所有用户回复','2015-10-17 22:56:28',3),(110,'我想的只有一件事，就是怎么让map2family变得更好以便给用户提供更好的服务.....','2015-10-18 03:04:32',3),(111,'代码规范：1、我们需要统一的代码规范，就是说我们的代码风格是统一的，在外人看来，根本看不出代码是谁写的。\n每周花一个小时进行代码的review，review其他人的代码','2015-10-20 22:21:07',3),(112,'用户信用评级：用户默认有1000分的信用分，每做一件不好的事，信用分就会降低一分，每做一件正能量的事，信用分就会增加一分。\n信用分低到一定程度后，会对用户提出警告，并在用户的主页上显著的现实warning之类的东西，信用分很高的时候，可以奖励用户，并提升用户的在各类社交中的排名顺序。。。','2015-10-26 07:14:53',3),(113,'好的东西能赢得用户持续的信任和好的口碑，而好的口碑是最好的宣传！','2015-10-29 04:21:51',3);
/*!40000 ALTER TABLE `heartbeat_heartbeat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logsys_log`
--

DROP TABLE IF EXISTS `logsys_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `logsys_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_id` int(10) unsigned NOT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `app_type` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logsys_log`
--

LOCK TABLES `logsys_log` WRITE;
/*!40000 ALTER TABLE `logsys_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `logsys_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mailer_l_receiver`
--

DROP TABLE IF EXISTS `mailer_l_receiver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mailer_l_receiver` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `lastinfo_pk_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mailer_l_receiver_40caa6e1` (`lastinfo_pk_id`),
  CONSTRAINT `mailer_l_receiver_lastinfo_pk_id_24c96f2f_fk_mailer_lastinfo_id` FOREIGN KEY (`lastinfo_pk_id`) REFERENCES `mailer_lastinfo` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mailer_l_receiver`
--

LOCK TABLES `mailer_l_receiver` WRITE;
/*!40000 ALTER TABLE `mailer_l_receiver` DISABLE KEYS */;
INSERT INTO `mailer_l_receiver` VALUES (25,'903649126@qq.com',5),(30,'281475120@163.com',3),(35,'281475120@qq.com',6),(42,'281475120@163.com',1),(43,'461882709@qq.com',1),(47,'281475120@163.com',2),(48,'418174782@qq.com',4),(49,'zhang99xiong@foxmail.com',4),(50,'727108894@qq.com',4);
/*!40000 ALTER TABLE `mailer_l_receiver` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mailer_lastinfo`
--

DROP TABLE IF EXISTS `mailer_lastinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mailer_lastinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `days` int(11) NOT NULL,
  `mgs` longblob,
  `date` datetime DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_sent` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mailer_lastinfo_e8701ad4` (`user_id`),
  CONSTRAINT `mailer_lastinfo_user_id_257dd849_fk_administration_user_id` FOREIGN KEY (`user_id`) REFERENCES `administration_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mailer_lastinfo`
--

LOCK TABLES `mailer_lastinfo` WRITE;
/*!40000 ALTER TABLE `mailer_lastinfo` DISABLE KEYS */;
INSERT INTO `mailer_lastinfo` VALUES (1,161,'<p style=\"margin-bottom: 10px; border: 0px; outline: 0px; vertical-align: baseline; line-height: 25.2000007629395px; font-family: Helvetica, Arial, sans-serif; max-width: 720px; color: rgb(0, 0, 0); background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;\">暂存</p>','2015-10-24 00:42:40',2,'title new new','0'),(2,10,'你好，很高兴能使用这个系统来发送邮件。<p>很令<b><span style=\"font-size:28px;\">人兴奋的</span></b>一个<span style=\"color:rgb(255,0,0);\">系统</span>，不是吗？</p><p>希望带来更多的惊喜</p>','2015-10-28 01:22:35',2,'中文标题怎么样','0'),(3,88,'从来没有人爱我以至于斯。我有时候会觉得不要挽留那些不爱你的人，有时候又想多挽留一下说不定就是不一样的结局吧……<p>于我，你始终是个很特别的存在……</p>','2015-10-17 15:13:16',2,'给唐婧的信','0'),(4,126,'hi，<p>我们永远不知道明天和意外哪一个先来，所以我先写下这些。</p><p>我有6万元钱在百度金融里投了定期，应该在11月份左右到期。百度金融的取现密码的前五个字符是jeawy后面还有六个数字，唐静知道，去问唐静。</p><p>我在好买基金有两千多元，赎回密码也是六位数字，同样问唐静，提取之后基金公司会在几天内将钱打回我北京住房公积金的那张卡里。</p><p>住房公积金的银行卡的取款密码是咱家用的密码，还有查询密码是网上转账的，也问唐静她知道。</p><p>我在北京的住房公积金里有四万多元，可以取出来，取的方式得问北京市住房公积金管理中心</p><p>还有一万多养老金应该也可以取出来，取出方式得咨询北京市社保局。</p><p>李萌在2011年借了我4500元，何美松借了我1000。</p><p>差不多就这些，基金赔了两万多</p><p>公司各种福利补助差不多有三十万，具体操作方法可以询问我们公司的HR</p><p>我手机的解锁密码是0724，iPad的解锁密码是1234</p>','2015-10-31 00:47:54',2,'来自张继伟的一些信息','0'),(5,72,'生日快乐。','2015-10-10 14:28:22',11,'生日快乐。','0'),(6,989,'这是测试，','2015-10-17 16:37:53',3,'测试','0');
/*!40000 ALTER TABLE `mailer_lastinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mailer_tofuture`
--

DROP TABLE IF EXISTS `mailer_tofuture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mailer_tofuture` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `years` decimal(5,2),
  `mgs` longblob NOT NULL,
  `date` datetime NOT NULL,
  `title` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `is_sent` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mailer_tofuture_e8701ad4` (`user_id`),
  CONSTRAINT `mailer_tofuture_user_id_2993d1f3_fk_administration_user_id` FOREIGN KEY (`user_id`) REFERENCES `administration_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mailer_tofuture`
--

LOCK TABLES `mailer_tofuture` WRITE;
/*!40000 ALTER TABLE `mailer_tofuture` DISABLE KEYS */;
/*!40000 ALTER TABLE `mailer_tofuture` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-10-31 11:38:27
