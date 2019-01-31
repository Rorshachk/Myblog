-- MySQL dump 10.13  Distrib 8.0.14, for Win64 (x86_64)
--
-- Host: localhost    Database: Myblog_db
-- ------------------------------------------------------
-- Server version	8.0.14

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add topic',7,'add_topic'),(26,'Can change topic',7,'change_topic'),(27,'Can delete topic',7,'delete_topic'),(28,'Can view topic',7,'view_topic'),(29,'Can add passage',8,'add_passage'),(30,'Can change passage',8,'change_passage'),(31,'Can delete passage',8,'delete_passage'),(32,'Can view passage',8,'view_passage'),(33,'Can add comment',9,'add_comment'),(34,'Can change comment',9,'change_comment'),(35,'Can delete comment',9,'delete_comment'),(36,'Can view comment',9,'view_comment');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$120000$oLfSwpEKHRb8$XYYwwexa8bztzp44NTEMzk0m1UeyKCDk7bL3tFYUDeQ=','2019-01-27 13:38:50.364000',1,'Rorshach','','','shuangmuhu@gmail.com',1,1,'2019-01-25 12:47:23.677000');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_comment`
--

DROP TABLE IF EXISTS `blog_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `blog_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_added` datetime(6) NOT NULL,
  `passage_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_comments_passage_id_83ee4a93_fk_blog_passage_id` (`passage_id`),
  CONSTRAINT `blog_comments_passage_id_83ee4a93_fk_blog_passage_id` FOREIGN KEY (`passage_id`) REFERENCES `blog_passage` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_comment`
--

LOCK TABLES `blog_comment` WRITE;
/*!40000 ALTER TABLE `blog_comment` DISABLE KEYS */;
INSERT INTO `blog_comment` VALUES (1,'Rorshach','shuangmuhu@gmail.com','llalfksafdhasexcafescdads','2019-01-26 13:09:28.779000',3),(2,'Rorshach','shuangmuhu@gmail.com','sdafawe','2019-01-26 13:40:35.547000',3),(3,'cvdzv','shuangmuhu@gmail.com','szxvzdsvc','2019-01-26 13:43:38.617000',3),(4,'safafse','h324406@163.com','safaewqfase','2019-01-26 13:44:28.902000',4),(5,'胡双木','shuangmuhu@gmail.com','没什么想说的','2019-01-29 18:21:33.055000',3),(6,'Rorshach','shuangmuhu@gmail.com','随便写一点吧','2019-01-29 18:29:10.197000',3),(7,'Rorshach','shuangmuhu@gmail.com','为什么有个大于号','2019-01-29 18:29:22.166000',3),(8,'Rorshach','shuangmuhu@gmail.com','为什么发出去之后有个大于号','2019-01-30 14:17:47.614000',3),(9,'lalala','2498194805@qq.com','看看大于号还在不在','2019-01-30 14:18:58.227000',3),(10,'czhnb','czxingchen0x7f@gmail.com','测测gravatar能不能正常用','2019-01-30 14:20:22.302000',3);
/*!40000 ALTER TABLE `blog_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_passage`
--

DROP TABLE IF EXISTS `blog_passage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `blog_passage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_added` datetime(6) NOT NULL,
  `topic_id` int(11) NOT NULL,
  `pic_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_passage_topic_id_3b284f9e_fk_blog_topic_id` (`topic_id`),
  CONSTRAINT `blog_passage_topic_id_3b284f9e_fk_blog_topic_id` FOREIGN KEY (`topic_id`) REFERENCES `blog_topic` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_passage`
--

LOCK TABLES `blog_passage` WRITE;
/*!40000 ALTER TABLE `blog_passage` DISABLE KEYS */;
INSERT INTO `blog_passage` VALUES (1,'PLT2333','lalalalal','2019-01-23 13:38:42.000000',1,'blog/pictures/21.jpg'),(2,'Test2','测试测试\r\n\r\n```cpp\r\n#include<iostream>\r\nusing namespace std;\r\nint main(){\r\n	return 0;\r\n}\r\n```\r\n\r\n### testting\r\n![这是简书slogan图片](http://upload-images.jianshu.io/upload_images/119181-102b8c705c08c1b4.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)\r\n\r\n\r\n$A+B=C$','2019-01-29 15:37:34.000000',1,'blog/pictures/11.jpg'),(3,'Test3','Test','2019-01-29 16:27:32.000000',1,'blog/pictures/22.jpg'),(4,'Test4','Test4','2019-01-25 14:10:13.000000',1,'blog/pictures/10.jpg'),(5,'test5','test5','2019-01-25 14:10:35.000000',1,'blog/pictures/2.jpg'),(6,'Test6','Test6','2019-01-25 14:10:46.000000',1,'blog/pictures/6.jpg'),(7,'Test7','Test7','2019-01-25 14:10:55.000000',1,'blog/pictures/18.jpg'),(8,'Test8','Test8','2019-01-25 14:11:14.000000',1,'blog/pictures/8.jpg'),(9,'Test9','Test9','2019-01-25 14:11:26.000000',1,'blog/pictures/14.jpg'),(10,'Test10','Test10','2019-01-25 14:11:43.000000',1,'blog/pictures/16.jpg'),(11,'Test11','Test11','2019-01-25 14:11:55.000000',1,'blog/pictures/21.jpg'),(12,'Test','# 我永远喜欢珂朵莉\r\n\r\n    \"\"\"Myblog URL Configuration\r\n    \r\n    The `urlpatterns` list routes URLs to views. For more information please see:\r\n        https://docs.djangoproject.com/en/2.1/topics/http/urls/\r\n    Examples:\r\n    Function views\r\n        1. Add an import:  from my_app import views\r\n        2. Add a URL to urlpatterns:  path(\'\', views.home, name=\'home\')\r\n    Class-based views\r\n        1. Add an import:  from other_app.views import Home\r\n        2. Add a URL to urlpatterns:  path(\'\', Home.as_view(), name=\'home\')\r\n    Including another URLconf\r\n        1. Import the include() function: from django.urls import include, path\r\n        2. Add a URL to urlpatterns:  path(\'blog/\', include(\'blog.urls\'))\r\n    \"\"\"\r\n    from django.contrib import admin\r\n    from django.urls import path\r\n    from django.conf.urls import include, url\r\n    from django.conf import settings\r\n    from django.conf.urls.static import static\r\n    \r\n    urlpatterns = [\r\n        path(\'admin/\', admin.site.urls),\r\n        url(r\'\', include((\'blog.urls\', \'blog\'), namespace=\'blog\')),\r\n        url(r\'mdeditor/\', include(\'mdeditor.urls\'))\r\n    ] + static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)\r\n    \r\n```cpp\r\n#include<iostream>\r\nusing namespace std;\r\nint main(){\r\n	\r\n}\r\n```\r\n$A+B=C$','2019-01-29 13:30:04.000000',2,'blog/pictures/21.jpg');
/*!40000 ALTER TABLE `blog_passage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_topic`
--

DROP TABLE IF EXISTS `blog_topic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `blog_topic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_added` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_topic`
--

LOCK TABLES `blog_topic` WRITE;
/*!40000 ALTER TABLE `blog_topic` DISABLE KEYS */;
INSERT INTO `blog_topic` VALUES (1,'PLT','2019-01-25 12:48:47.608000'),(2,'FP','2019-01-25 13:34:49.814000'),(3,'Web','2019-01-25 13:35:04.715000'),(4,'Infrastructure','2019-01-25 13:35:28.042000'),(5,'ML','2019-01-25 13:35:32.448000'),(6,'DL','2019-01-25 13:35:35.853000'),(7,'NLP','2019-01-25 13:36:02.054000');
/*!40000 ALTER TABLE `blog_topic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8mb4_unicode_ci,
  `object_repr` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2019-01-25 12:48:47.610000','1','PLT',1,'[{\"added\": {}}]',7,1),(2,'2019-01-25 12:49:08.323000','1','PLT2333',1,'[{\"added\": {}}]',8,1),(3,'2019-01-25 13:34:49.817000','2','FP',1,'[{\"added\": {}}]',7,1),(4,'2019-01-25 13:35:04.717000','3','Web',1,'[{\"added\": {}}]',7,1),(5,'2019-01-25 13:35:28.044000','4','Infrastructure',1,'[{\"added\": {}}]',7,1),(6,'2019-01-25 13:35:32.449000','5','ML',1,'[{\"added\": {}}]',7,1),(7,'2019-01-25 13:35:35.854000','6','DL',1,'[{\"added\": {}}]',7,1),(8,'2019-01-25 13:36:02.055000','7','NLP',1,'[{\"added\": {}}]',7,1),(9,'2019-01-25 14:09:48.844000','2','Test2',1,'[{\"added\": {}}]',8,1),(10,'2019-01-25 14:10:02.727000','3','Test3',1,'[{\"added\": {}}]',8,1),(11,'2019-01-25 14:10:19.439000','4','Test4',1,'[{\"added\": {}}]',8,1),(12,'2019-01-25 14:10:36.792000','5','test5',1,'[{\"added\": {}}]',8,1),(13,'2019-01-25 14:10:47.683000','6','Test6',1,'[{\"added\": {}}]',8,1),(14,'2019-01-25 14:11:02.269000','7','Test7',1,'[{\"added\": {}}]',8,1),(15,'2019-01-25 14:11:17.768000','8','Test8',1,'[{\"added\": {}}]',8,1),(16,'2019-01-25 14:11:30.109000','9','Test9',1,'[{\"added\": {}}]',8,1),(17,'2019-01-25 14:11:47.612000','10','Test10',1,'[{\"added\": {}}]',8,1),(18,'2019-01-25 14:11:56.653000','11','Test11',1,'[{\"added\": {}}]',8,1),(19,'2019-01-26 13:09:28.781000','1','llalfksafdhasexcafescdads',1,'[{\"added\": {}}]',9,1),(20,'2019-01-28 17:16:33.687000','3','Test3',2,'[{\"changed\": {\"fields\": [\"pic_url\"]}}]',8,1),(21,'2019-01-28 17:16:39.693000','7','Test7',2,'[{\"changed\": {\"fields\": [\"pic_url\"]}}]',8,1),(22,'2019-01-28 17:16:43.093000','7','Test7',2,'[]',8,1),(23,'2019-01-28 17:16:48.993000','5','test5',2,'[{\"changed\": {\"fields\": [\"pic_url\"]}}]',8,1),(24,'2019-01-28 17:16:54.405000','2','Test2',2,'[{\"changed\": {\"fields\": [\"pic_url\"]}}]',8,1),(25,'2019-01-28 17:17:06.057000','4','Test4',2,'[{\"changed\": {\"fields\": [\"pic_url\"]}}]',8,1),(26,'2019-01-28 17:17:09.298000','7','Test7',2,'[]',8,1),(27,'2019-01-28 17:17:15.575000','6','Test6',2,'[{\"changed\": {\"fields\": [\"pic_url\"]}}]',8,1),(28,'2019-01-28 17:17:46.383000','10','Test10',2,'[{\"changed\": {\"fields\": [\"pic_url\"]}}]',8,1),(29,'2019-01-28 17:17:52.337000','9','Test9',2,'[{\"changed\": {\"fields\": [\"pic_url\"]}}]',8,1),(30,'2019-01-28 17:24:28.765000','8','Test8',2,'[{\"changed\": {\"fields\": [\"pic_url\"]}}]',8,1),(31,'2019-01-29 13:30:08.325000','12','Test',1,'[{\"added\": {}}]',8,1),(32,'2019-01-29 15:25:26.281000','2','Test2',2,'[{\"changed\": {\"fields\": [\"text\"]}}]',8,1),(33,'2019-01-29 15:33:49.115000','2','Test2',2,'[{\"changed\": {\"fields\": [\"text\"]}}]',8,1),(34,'2019-01-29 15:37:36.780000','2','Test2',2,'[{\"changed\": {\"fields\": [\"text\", \"date_added\"]}}]',8,1),(35,'2019-01-29 15:38:23.970000','2','Test2',2,'[{\"changed\": {\"fields\": [\"text\"]}}]',8,1),(36,'2019-01-29 16:10:38.641000','2','Test2',2,'[{\"changed\": {\"fields\": [\"text\"]}}]',8,1),(37,'2019-01-29 16:27:34.642000','3','Test3',2,'[{\"changed\": {\"fields\": [\"date_added\"]}}]',8,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(9,'blog','comment'),(8,'blog','passage'),(7,'blog','topic'),(5,'contenttypes','contenttype'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2019-01-31 04:52:16.372115'),(2,'auth','0001_initial','2019-01-31 04:52:17.505098'),(3,'admin','0001_initial','2019-01-31 04:52:17.772835'),(4,'admin','0002_logentry_remove_auto_add','2019-01-31 04:52:17.784841'),(5,'admin','0003_logentry_add_action_flag_choices','2019-01-31 04:52:17.797904'),(6,'contenttypes','0002_remove_content_type_name','2019-01-31 04:52:17.972340'),(7,'auth','0002_alter_permission_name_max_length','2019-01-31 04:52:18.075652'),(8,'auth','0003_alter_user_email_max_length','2019-01-31 04:52:18.109706'),(9,'auth','0004_alter_user_username_opts','2019-01-31 04:52:18.122741'),(10,'auth','0005_alter_user_last_login_null','2019-01-31 04:52:18.473019'),(11,'auth','0006_require_contenttypes_0002','2019-01-31 04:52:18.510619'),(12,'auth','0007_alter_validators_add_error_messages','2019-01-31 04:52:18.540198'),(13,'auth','0008_alter_user_username_max_length','2019-01-31 04:52:18.691103'),(14,'auth','0009_alter_user_last_name_max_length','2019-01-31 04:52:18.814049'),(15,'blog','0001_initial','2019-01-31 04:52:19.058958'),(16,'blog','0002_comments','2019-01-31 04:52:19.239178'),(17,'blog','0003_auto_20190126_1322','2019-01-31 04:52:19.296325'),(18,'blog','0004_auto_20190126_2055','2019-01-31 04:52:19.314373'),(19,'blog','0005_auto_20190129_0114','2019-01-31 04:52:19.394646'),(20,'blog','0006_auto_20190129_2120','2019-01-31 04:52:19.409687'),(21,'sessions','0001_initial','2019-01-31 04:52:19.511977');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('1j1hkavkajqwswzsljcgxkf1him852k0','NjI0YzQ0OWQ1YTRiZDczYzFiZjYxNWY0MTgxMzk2ZmE1ZjhiZTY0Njp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5Zjc0NDYzNWFiZDEzZTA1ZTEyYTg4NWU1ZjNjODMxMTlhOTBjOGMyIn0=','2019-02-10 13:38:50.473000'),('dhgjg1h92rgfrxq6wp7majnktgb7o98a','NjI0YzQ0OWQ1YTRiZDczYzFiZjYxNWY0MTgxMzk2ZmE1ZjhiZTY0Njp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5Zjc0NDYzNWFiZDEzZTA1ZTEyYTg4NWU1ZjNjODMxMTlhOTBjOGMyIn0=','2019-02-08 12:48:36.283000');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-31 14:59:53
