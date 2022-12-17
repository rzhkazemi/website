-- MySQL dump 10.13  Distrib 8.0.29, for Linux (x86_64)
--
-- Host: localhost    Database: mysite_db
-- ------------------------------------------------------
-- Server version	8.0.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add contact',7,'add_contact'),(26,'Can change contact',7,'change_contact'),(27,'Can delete contact',7,'delete_contact'),(28,'Can view contact',7,'view_contact'),(29,'Can add newsletter',8,'add_newsletter'),(30,'Can change newsletter',8,'change_newsletter'),(31,'Can delete newsletter',8,'delete_newsletter'),(32,'Can view newsletter',8,'view_newsletter'),(33,'Can add attachment',9,'add_attachment'),(34,'Can change attachment',9,'change_attachment'),(35,'Can delete attachment',9,'delete_attachment'),(36,'Can view attachment',9,'view_attachment'),(37,'Can add category',10,'add_category'),(38,'Can change category',10,'change_category'),(39,'Can delete category',10,'delete_category'),(40,'Can view category',10,'view_category'),(41,'Can add comment',11,'add_comment'),(42,'Can change comment',11,'change_comment'),(43,'Can delete comment',11,'delete_comment'),(44,'Can view comment',11,'view_comment'),(45,'Can add post',12,'add_post'),(46,'Can change post',12,'change_post'),(47,'Can delete post',12,'delete_post'),(48,'Can view post',12,'view_post'),(49,'Can add post gallery',13,'add_postgallery'),(50,'Can change post gallery',13,'change_postgallery'),(51,'Can delete post gallery',13,'delete_postgallery'),(52,'Can view post gallery',13,'view_postgallery'),(53,'Can add contact',14,'add_contact'),(54,'Can change contact',14,'change_contact'),(55,'Can delete contact',14,'delete_contact'),(56,'Can view contact',14,'view_contact'),(57,'Can add newsletter',15,'add_newsletter'),(58,'Can change newsletter',15,'change_newsletter'),(59,'Can delete newsletter',15,'delete_newsletter'),(60,'Can view newsletter',15,'view_newsletter'),(61,'Can add site',16,'add_site'),(62,'Can change site',16,'change_site'),(63,'Can delete site',16,'delete_site'),(64,'Can view site',16,'view_site'),(65,'Can add rule',17,'add_rule'),(66,'Can change rule',17,'change_rule'),(67,'Can delete rule',17,'delete_rule'),(68,'Can view rule',17,'view_rule'),(69,'Can add url',18,'add_url'),(70,'Can change url',18,'change_url'),(71,'Can delete url',18,'delete_url'),(72,'Can view url',18,'view_url'),(73,'Can add tag',19,'add_tag'),(74,'Can change tag',19,'change_tag'),(75,'Can delete tag',19,'delete_tag'),(76,'Can view tag',19,'view_tag'),(77,'Can add tagged item',20,'add_taggeditem'),(78,'Can change tagged item',20,'change_taggeditem'),(79,'Can delete tagged item',20,'delete_taggeditem'),(80,'Can view tagged item',20,'view_taggeditem'),(81,'Can add captcha store',21,'add_captchastore'),(82,'Can change captcha store',21,'change_captchastore'),(83,'Can delete captcha store',21,'delete_captchastore'),(84,'Can view captcha store',21,'view_captchastore'),(85,'Can add redirect',22,'add_redirect'),(86,'Can change redirect',22,'change_redirect'),(87,'Can delete redirect',22,'delete_redirect'),(88,'Can view redirect',22,'view_redirect');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$260000$yyV6YoLYTgjaE2HMacWrEY$lIb6HAsvV4yNp2Zp1QtmNbltCF4Mi3E+uL4I9lDa/60=','2022-12-15 09:05:41.096898',1,'razi','','','rzh.kzm@gmail.com',1,1,'2022-11-07 07:31:01.546826'),(2,'pbkdf2_sha256$260000$l9Pv4FKEMBs9mLYnuwPRqe$O1Eq8qfffua7boG2uecJogo3CsK19uY8DSxYYfnMJEc=','2022-11-07 13:10:26.492000',0,'shima_alavi','','','',0,1,'2022-11-07 12:43:59.130242'),(3,'pbkdf2_sha256$260000$vo4KKTwKqhlq4RbC4DjTAt$Rgvo+UGK1fPAstqpZd51YEAJ9BrMuYkbRn+usXPQ04s=',NULL,0,'morteza1995','','','',0,1,'2022-11-07 12:48:13.636313'),(4,'pbkdf2_sha256$260000$3gwNi70ZggCvFs6Uofaqi1$NarsNfdlWQT8oSuupQQYCxb9bTI3q+4Lu8MiluTCQfg=',NULL,0,'morteza_1995','','','',0,1,'2022-11-07 13:06:36.159512'),(5,'pbkdf2_sha256$260000$F1i0irUBufbVjUnFPamJ2I$gOc4TvjgmcK6gR3CyhVGaqBHMxtbUdG80mudswA4Soo=',NULL,0,'morteza++1995','','','',0,1,'2022-11-07 13:12:10.477386'),(6,'pbkdf2_sha256$260000$9QtSHGYlgThozFcecbyFyE$GMYtga8mwWB6/2uWf49KDWPV3EWkntk9f7pPDyIlAMk=','2022-11-07 13:50:34.954852',0,'farzaneh2000','','','',0,1,'2022-11-07 13:25:40.721687'),(7,'pbkdf2_sha256$260000$3sKVHzqt98SPW5KP0uF3wn$uH8XSxB2sWjp1XPVwc6VOVD6mCEN6gP2sPfzBCCsjj0=','2022-11-07 13:28:35.779793',0,'mohammad2005','','','',0,1,'2022-11-07 13:28:12.876809'),(8,'pbkdf2_sha256$260000$HUBqfnHRO2zfbGb4oKs0Nt$npxEfkDcW5hLk5zdwD/E2j+CeuUSqm+s3VgaGBJ1qRE=','2022-11-07 13:32:07.532800',0,'bijan1998++','','','',0,1,'2022-11-07 13:30:57.999607'),(9,'pbkdf2_sha256$260000$tAtvCxOgmDga8CaTsOihs7$7GlTXkBHwdD0jzNZIpGiP/jIpG2UnTVsH02gkVJP61k=','2022-11-07 13:47:36.795480',0,'fatemeh','','','',0,1,'2022-11-07 13:46:07.667792'),(10,'pbkdf2_sha256$390000$sZrkFYCQqbN24GEU9PE0yw$JSW5Aykf4q5mD7kkERQweEZRR5JPTso9f3oIKgA9CgA=','2022-12-10 16:54:35.587893',0,'sadra','','','',0,1,'2022-12-10 16:37:32.845566'),(11,'pbkdf2_sha256$390000$A5KbCC2IAa8fFwhw0HZO22$qm31oTdxDUvsP1ymcaDASEWd6Ee0pgkBhDo77hhZUxE=',NULL,0,'marjan','','','',0,1,'2022-12-10 18:06:52.149661'),(12,'pbkdf2_sha256$390000$mKdoZzPptbHLwRtOJADjFM$PJLQ/cJu2roW7EqvCtMnHnHemE1KgWExMwDynY3krLM=','2022-12-13 05:53:07.679341',0,'fateme','','','',0,1,'2022-12-10 18:10:04.538215'),(13,'pbkdf2_sha256$390000$xh1JCRpG9gebMmWfQ1lU3t$esj21ZSc+H7Vko/BZGhQvx4cIaVMDZwCzB/H5+u1xmc=',NULL,0,'sepideh','','','',0,1,'2022-12-10 18:13:28.427045'),(14,'pbkdf2_sha256$390000$PD9Gc9vbhm0lSVZZqOtw0Y$LNfga93HpRe7MuakyADX0ylWjuMNriF6S9n+n33sRj0=',NULL,0,'ehsan','','','',0,1,'2022-12-10 18:14:47.823604'),(15,'pbkdf2_sha256$390000$BsHPOMy6GEiDFxxt6o5jtF$Mp8/iDXelTNtLukpLazYljtBQSL2BoUp/0gNuhma2sM=',NULL,0,'ati','','','',0,1,'2022-12-10 18:27:08.623780'),(16,'pbkdf2_sha256$390000$jACIMX7qRGlnDNVQk6JikA$ixEa0lavVWmWr8Emj/T0zWF3AnwN/MYN9iMi0cbEPNw=',NULL,0,'sama','','','',0,1,'2022-12-10 18:31:39.196374'),(17,'pbkdf2_sha256$390000$snIlh2VPH7555kcckWAQ45$9lCmSnHE7HFwgKiwFBa5izsDOodtmeDgj9heuj8vhuk=',NULL,0,'mona','','','',0,1,'2022-12-10 18:41:07.065699'),(18,'pbkdf2_sha256$390000$E7P9K2Dox9CT5Bes2ANOeD$ryPuoNEAa3CuM+RUgNucn9E7NMYxZarlFvkwudYTC1k=',NULL,0,'keyvan','','','',0,1,'2022-12-11 08:46:37.646187'),(19,'pbkdf2_sha256$390000$SV9OkZLhEe7FrLupIWDJts$Cz47IqX7dRDcrsh1aOgJfvc4zF+buKY8/HycXNkrGvQ=',NULL,0,'mojtaba','','','aslani_mojtaba@yahoo.com',0,1,'2022-12-11 15:08:45.683215'),(20,'pbkdf2_sha256$260000$V35E0UuCYMNE3yJhd3bIPo$HzceewgWjM+XpkBJ3zoRatEJsZzzNNDhRilgHjGiPwo=','2022-12-13 05:52:11.887448',0,'ali','','','ali.talebi@gmail.com',0,1,'2022-12-13 05:27:22.173111'),(21,'pbkdf2_sha256$260000$0u4efiDKXWiaqVHaF1re8F$ZT1GwNwUM4lEJ4pco/+I5/ONzr6s+0xpWm5py7nOvOs=','2022-12-15 09:06:43.464485',0,'ava','','','sharokhi@yahoo.com',0,1,'2022-12-15 09:06:04.255023');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_category`
--

DROP TABLE IF EXISTS `blog_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog_category` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_category`
--

LOCK TABLES `blog_category` WRITE;
/*!40000 ALTER TABLE `blog_category` DISABLE KEYS */;
INSERT INTO `blog_category` VALUES (4,'Technology'),(5,'Health'),(6,'Society'),(7,'Environment');
/*!40000 ALTER TABLE `blog_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_comment`
--

DROP TABLE IF EXISTS `blog_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog_comment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `email` varchar(254) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `comment` longtext NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `create_date` datetime(6) NOT NULL,
  `update_date` datetime(6) NOT NULL,
  `post_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_comment_post_id_580e96ef_fk_blog_post_id` (`post_id`),
  CONSTRAINT `blog_comment_post_id_580e96ef_fk_blog_post_id` FOREIGN KEY (`post_id`) REFERENCES `blog_post` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_comment`
--

LOCK TABLES `blog_comment` WRITE;
/*!40000 ALTER TABLE `blog_comment` DISABLE KEYS */;
INSERT INTO `blog_comment` VALUES (1,'sahar','FaZelitabar1991@yahoo.com','','salam',1,'2022-11-26 10:36:15.130564','2022-11-26 10:36:15.130635',2),(2,'mayha','abedini__mayha@yahoo.com','','thanks',1,'2022-11-26 11:02:49.063782','2022-11-26 11:02:49.063841',2),(3,'zohre','karami.zohi1989@gmail.com','','that\'s really nice',1,'2022-11-26 12:06:29.044298','2022-11-26 12:06:29.044358',3),(4,'saeed','sAeeDRezaee@gmail.com','','salam',0,'2022-11-26 12:14:27.634106','2022-11-26 12:14:27.634178',3),(5,'leli','azari.lily1111@yahoo.com','','merci',0,'2022-11-26 12:17:30.865220','2022-11-26 12:17:30.865279',3),(6,'sobhan','sobhani-sobhan1993@gmail.com','','test',0,'2022-11-26 13:41:35.292021','2022-11-26 13:41:35.292080',14),(7,'prisa','naghavi.pari900763@yahoo.com','','excellent',1,'2022-11-26 13:44:50.950928','2022-11-26 13:44:50.950988',11),(8,'prisa','naghavi.pari900763@yahoo.com','','excellent',0,'2022-11-26 13:45:30.559713','2022-11-26 13:45:30.559774',11),(9,'prisa','naghavi.pari900763@yahoo.com','','excellent',0,'2022-11-26 13:45:42.535351','2022-11-26 13:45:42.535404',11),(10,'nimaee','ahmnd.nme_1983@gmail.com','','salam',1,'2022-11-26 14:21:29.634757','2022-11-26 14:21:29.634818',11),(11,'hadis','seraj-HaDiS@yahoo.com','','fantastic',1,'2022-11-26 14:25:22.182167','2022-11-26 14:25:22.182233',13),(12,'nasiri','nasiri1583.laleh@yahoo.com','','test',1,'2022-11-27 11:30:42.881476','2022-11-27 11:30:42.881536',2),(13,'gholamreza','fathi.ghmz@gmail.com','','test',0,'2022-11-27 11:36:19.019021','2022-11-27 11:36:19.019086',11),(14,'ghaffari','ghaffari.taraneh12@yahoo.com','','test',0,'2022-11-27 12:14:41.607936','2022-11-27 12:14:41.607995',11),(15,'amir','qasemi-129497@gmail.com','','test',0,'2022-11-27 13:28:19.670042','2022-11-27 13:28:19.670100',11),(16,'saeed','sAeeDRezaee@gmail.com','','tttt',0,'2022-11-27 13:35:42.638645','2022-11-27 13:35:42.638910',11),(17,'zohre','karami.zohi1989@gmail.com','','tttt',0,'2022-11-27 13:37:47.161456','2022-11-27 13:37:47.161520',11),(18,'taheri','taheri_shva@gmail.com','','test',0,'2022-11-28 09:53:54.231956','2022-11-28 09:53:54.232015',2),(19,'taheri','taheri_shva@gmail.com','','test',0,'2022-11-28 09:57:28.423919','2022-11-28 09:57:28.423980',2),(20,'taheri','taheri_shva@gmail.com','','test',0,'2022-11-28 10:11:10.307928','2022-11-28 10:11:10.307989',2),(21,'razi','rzh.kzm@gmail.com','','test',0,'2022-11-28 10:50:40.383688','2022-11-28 10:50:40.383749',2),(22,'razi','rzh.kzm@gmail.com','','test',0,'2022-11-28 10:57:34.527967','2022-11-28 10:57:34.528026',2),(23,'morteza','mohammadi@yahoo.com','','thanks',0,'2022-12-15 09:41:27.986658','2022-12-15 09:41:27.986714',13),(24,'mjid','nsr.majidi19221@yahoo.com','','...',0,'2022-12-15 09:44:26.946069','2022-12-15 09:44:26.946131',13),(25,'ati','shemshadian@gmail.com','','hi',0,'2022-12-15 09:59:15.652056','2022-12-15 09:59:15.652113',11);
/*!40000 ALTER TABLE `blog_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_post`
--

DROP TABLE IF EXISTS `blog_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog_post` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `content` longtext NOT NULL,
  `slug` varchar(50) NOT NULL,
  `create_date` datetime(6) NOT NULL,
  `update_date` datetime(6) NOT NULL,
  `count_view` int unsigned NOT NULL,
  `status` tinyint(1) NOT NULL,
  `author_id` int NOT NULL,
  `publish_date` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_post_author_id_dd7a8485_fk_auth_user_id` (`author_id`),
  KEY `blog_post_slug_b95473f2` (`slug`),
  CONSTRAINT `blog_post_author_id_dd7a8485_fk_auth_user_id` FOREIGN KEY (`author_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `blog_post_chk_1` CHECK ((`count_view` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_post`
--

LOCK TABLES `blog_post` WRITE;
/*!40000 ALTER TABLE `blog_post` DISABLE KEYS */;
INSERT INTO `blog_post` VALUES (2,'Beyond AlphaFold: A.I. excels at creating new proteins','<p>Over the past two years, machine learning has revolutionized protein structure prediction. Now, three papers in Science describe a similar revolution in protein design.<br><br>In the new papers, biologists at the University of Washington School of Medicine show that machine learning can be used to create protein molecules much more accurately and quickly than previously possible. The scientists hope this advance will lead to many new vaccines, treatments, tools for carbon capture, and sustainable biomaterials.<br><br>\"Proteins are fundamental across biology, but we know that all the proteins found in every plant, animal, and microbe make up far less than one percent of what is possible. With these new software tools, researchers should be able to find solutions to long-standing challenges in medicine, energy, and technology,\" said senior author David Baker, professor of biochemistry at the University of Washington School of Medicine and recipient of a 2021 Breakthrough Prize in Life Sciences.<br><br>Proteins are often referred to as the \"building blocks of life\" because they are essential for the structure and function of all living things. They are involved in virtually every process that takes place inside cells, including growth, division, and repair. Proteins are made up of long chains of chemicals called amino acids. The sequence of amino acids in a protein determines its three-dimensional shape. This intricate shape is crucial for the protein to function.<br><br>Recently, powerful machine learning algorithms including AlphaFold and RoseTTAFold have been trained to predict the detailed shapes of natural proteins based solely on their amino acid sequences. Machine learning is a type of artificial intelligence that allows computers to learn from data without being explicitly programmed. Machine learning can be used to model complex scientific problems that are too difficult for humans to understand.<br><br>To go beyond the proteins found in nature, Baker\'s team members broke down the challenge of protein design into three parts andused new software solutions for each.<br><br>First, a new protein shape must be generated. In a paper published July 21 in the journal Science, the team showed that artificial intelligence can generate new protein shapes in two ways. The first, dubbed \"hallucination,\" is akin to DALL-E or other generative A.I. tools that produce output based on simple prompts. The second, dubbed \"inpainting,\" is analogous to the autocomplete feature found in modern search bars.<br><br>Second, to speed up the process, the team devised a new algorithm for generating amino acid sequences. Described in the Sept.15 issue of Science, this software tool, called ProteinMPNN, runs in about one second. That\'s more than 200 times faster than the previous best software. Its results are superior to prior tools, and the software requires no expert customization to run.<br><br>\"Neural networks are easy to train if you have a ton of data, but with proteins, we don\'t have as many examples as we would like. We had to go in and identify which features in these molecules are the most important. It was a bit of trial and error,\" said project scientist Justas Dauparas, a postdoctoral fellow at the Institute for Protein Design<br><br>Third, the team used AlphaFold, a tool developed by Alphabet\'s DeepMind, to independently assess whether the amino acid sequences they came up with were likely to fold into the intended shapes.<br><br>\"Software for predicting protein structures is part of the solution but it cannot come up with anything new on its own,\" explained Dauparas.<br><br>\"ProteinMPNN is to protein design what AlphaFold was to protein structure prediction,\" added Baker.<br><br>In another paper appearing in Science Sept. 15, a team from the Baker lab confirmed that the combination of new machine learning tools could reliably generate new proteins that functioned in the laboratory.<br><br>\"We found that proteins made using ProteinMPNN were much more likely to fold up as intended, and we could create very complex protein assemblies using these methods\" said project scientist Basile Wicky, a postdoctoral fellow at the Institute for Protein Design.<br><br>Among the new proteins made were nanoscale rings that the researchers believe could become parts for custom nanomachines. Electron microscopes were used to observe the rings, which have diameters roughly a billion times smaller than a poppy seed.<br><br>\"This is the very beginning of machine learning in protein design. In the coming months, we will be working to improve these tools to create even more dynamic and functional proteins,\" said Baker.<br><br>Computer resources for this work were donated by Microsoft and Amazon Web Services.<br><br>Funding was provided by the Audacious Project at the Institute for Protein Design; Microsoft; Eric and Wendy Schmidt by recommendation of the Schmidt Futures; the DARPA Synergistic Discovery and Design project (HR001117S0003 contract FA8750-17-C-0219); the DARPA Harnessing Enzymatic Activity for Lifesaving Remedies project (HR001120S0052 contract HR0011-21-2-0012); Washington Research Foundation; Open Philanthropy Project Improving Protein Design Fund; Amgen; Alfred P. Sloan Foundation Matter-to-Life Program Grant (G-2021-16899); Donald and Jo Anne Petersen Endowment for Accelerating Advancements in Alzheimer\'s Disease Research; Human Frontier Science Program Cross Disciplinary Fellowship (LT000395/2020-C); European Molecular Biology Organization (ALTF 139-2018), including an EMBO Non-Stipendiary Fellowship (ALTF 1047-2019) and an EMBO Long-term Fellowship (ALTF 191-2021); \"la Caixa\" Foundation; Howard Hughes Medical Institute, including a Hanna Gray fellowship (GT11817); National Science Foundation (MCB 2032259, CHE-1629214, DBI 1937533, DGE-2140004); National Institutes for Health (DP5OD026389); the National Institute of Allergy and Infectious Diseases (HHSN272201700059C); National Institute on Aging (5U19AG065156); National Institute of General Medical Sciences (P30 GM124169-01, P41 GM 103533-24); National Cancer Institute (R01CA240339); Swiss National Science Foundation; Swiss National Center of Competence for Molecular Systems Engineering; Swiss National Center of Competence in Chemical Biology; and the European Research Council <br></p>','Software-AI-Health','2022-11-11 10:03:16.984835','2022-11-23 07:40:20.857227',0,1,2,'2022-10-05 10:25:11.000000'),(3,'Healthy plant-based diets better for the environment than less healthy plant-based diets','<p>Healthier plant-based dietary patterns were associated with better environmental health, while less healthy plant-based dietary patterns, which are higher in foods like refined grains and sugar-sweetened beverages, required more cropland and fertilizer, according to a new study led by researchers at Harvard T.H. Chan School of Health and Brigham and Women\'s Hospital. The findings also showed that red and processed meat had the highest environmental impact out of all food groups in participants\' diets, producing the greatest share of greenhouse gas emissions and requiring the most irrigation water, cropland, and fertilizer.<br><br>\"The differences between plant-based diets was surprising because they\'re often portrayed as universally healthy and good for the environment, but it\'s more nuanced than that,\" said Aviva Musicus, postdoctoral research fellow in the Department of Nutrition at Harvard Chan School and corresponding author of the study. \"To be clear, we\'re not asserting that less healthy plant-based diets are worse for the environment than animal-based diets. However, our findings show that plant-based diets can have different health and environmental impacts.\"<br><br>The study, which is one of the first to look simultaneously at the health and environmental impacts of various plant-based diets, was published in the November 2022 edition of The Lancet Planetary Health.<br><br>Previous research has documented that different types of plant-based diets have various health effects. For example, plant-based diets higher in whole grains, fruits, vegetables, nuts, legumes, vegetable oils, and tea/coffee are associated with reduced chronic disease risk, while plant-based diets high in fruit juices, sugar-sweetened beverages, refined grains, potatoes, and sweets/desserts are associated with an increased risk of chronic disease. Yet little research has been conducted to determine the environmental impacts, such as greenhouse gas emissions, use of high-quality cropland, nitrogen from fertilizer, and irrigation water, of these dietary approaches.<br><br>Using data from the Nurses\' Health Study II, the researchers analyzed the food intakes of more than 65,000 qualifying participants, and examined their diets\' associations with health outcomes, including relative risks of cardiovascular disease, and with environmental impacts. To differentiate plant-based dietary patterns, the researchers characterized participants\' diets using various dietary indices, including the Healthy and Unhealthy Plant-based Diet Indices. Higher scores on the unhealthy plant-based diet index indicated higher consumption of refined grains, sugary drinks, fruit juice, potatoes, and sweets/desserts; while higher scores on the healthy plant-based diet index indicated higher consumption of vegetables, fruits, whole grains, nuts, legumes, vegetable oils, and tea/coffee.<br><br>Participants who consumed healthy plant-based diets had lower cardiovascular disease risk, and those diets had lower greenhouse gas emissions and use of cropland, irrigation water, and nitrogenous fertilizer than diets that were higher in unhealthy plant-based and animal-based foods. Participants who ate unhealthy plant-based diets experienced a higher risk of cardiovascular disease, and their diets required more cropland and fertilizer than diets that were higher in healthy plant-based and animal foods. The findings also reinforced earlier studies showing that diets higher in animal-based foods, especially red and processed meat, have greater adverse environmental impacts than plant-based diets.<br><br>\"Because human health ultimately depends upon planetary health, future U.S. dietary guidelines should include nuanced consideration of environmental sustainability and recognize that not all plant-based diets confer the same health and environmental benefits,\" said Daniel Wang, assistant professor in the Department of Nutrition at Harvard Chan School, the Channing Division of Network Medicine at Brigham and Women\'s Hospital and Harvard Medical School and co-author of the study.<br><br>This study was supported by the National Institutes of Health (NIH grants U01 CA176726, UM1 CA186107, HL35464, and 2T32CA057711).<br><br></p>','Health-Weightloss-Diet','2022-08-05 10:36:54.513582','2022-12-15 09:31:32.110054',18,1,7,'2022-10-12 07:38:11.611711'),(4,'The chemical controlling life and death in hair follicles','<p>A single chemical is key to controlling when hair follicle cells divide, and when they die. This discovery could not only treat baldness, but ultimately speed wound healing because follicles are a source of stem cells.<br><br>Most cells in the human body have a specific form and function determined during embryonic development that does not change. For example, a blood cell cannot turn into a nerve cell, or vice versa. Stem cells, however, are like the blank tiles in a game of Scrabble; they can turn into other types of cells.<br><br>Their adaptability makes them useful for repairing damaged tissue or organs.<br><br>\"In science fiction when characters heal quickly from injuries, the idea is that stem cells allowed it,\" said UC Riverside mathematical biologist and study co-author Qixuan Wang.<br><br>\"In real life, our new research gets us closer to understanding stem cell behavior, so that we can control it and promote wound healing,\" Wang said. This research is detailed in a recent Biophysical Journal article.<br><br>The liver and stomach regenerate themselves in response to wounds. However, Wang\'s team studied hair follicles because they\'re the only organ in humans that regenerates automatically and periodically, even without injury.<br><br>The researchers determined how a type of protein, TGF-beta, controls the process by which cells in hair follicles, including stem cells, divide and form new cells, or orchestrate their own death -- eventually leading to the death of the whole hair follicle.<br><br>\"TGF-beta has two opposite roles. It helps activate some hair follicle cells to produce new life, and later, it helps orchestrate apoptosis, the process of cell death,\" Wang said.<br><br>As with many chemicals, it is the amount that makes the difference. If the cell produces a certain quantity of TGF-beta, it activates cell division. Too much of it causes apoptosis.<br><br>No one is entirely sure why follicles kill themselves. Some hypotheses suggest it is an inherited trait from animals shedding fur to survive hot summer temperatures or trying to camouflage.<br><br>\"Even when a hair follicle kills itself, it never kills its stem cell reservoir. When the surviving stem cells receive the signal to regenerate, they divide, make new cell and develop into a new follicle,\" Wang said.<br><br>If scientists can determine more precisely the way TGF-beta activates cell division, and how the chemical communicates with other important genes, it might be possible to activate follicle stem cells and stimulate hair growth.<br><br>Because many animals, including humans, possess skin covered with hair, perfect wound healing would require regeneration of hair follicles. Being able to more precisely control levels of TGF-beta could also one day cure baldness, which bothers millions of people all over the world.<br><br>\"Potentially our work could offer something to help people suffering from a variety of problems,\" Wang said.<br><br></p>','Health-Hair-chemical_controlling','2022-11-16 10:57:07.760803','2022-11-23 07:54:27.752138',65,1,9,'2022-10-17 08:25:11.000000'),(5,'Artificial intelligence can be used to better monitor Maine\'s forests','<p>Monitoring and measuring forest ecosystems is a complex challenge because of an existing combination of softwares, collection systems and computing environments that require increasing amounts of energy to power. The University of Maine\'s Wireless Sensor Networks (WiSe-Net) laboratory has developed a novel method of using artificial intelligence and machine learning to make monitoring soil moisture more energy and cost efficient -- one that could be used to make measuring more efficient across the broad forest ecosystems of Maine and beyond.<br><br>Soil moisture is an important variable in forested and agricultural ecosystems alike, particularly under the recent drought conditions of past Maine summers. Despite the robust soil moisture monitoring networks and large, freely available databases, the cost of commercial soil moisture sensors and the power that they use to run can be prohibitive for researchers, foresters, farmers and others tracking the health of the land.<br><br>Along with researchers at the University of New Hampshire and University of Vermont, UMaine\'s WiSe-Net designed a wireless sensor network that uses artificial intelligence to learn how to be more power efficient in monitoring soil moisture and processing the data. The research was funded by a grant from the National Science Foundation.<br><br>\"AI can learn from the environment, predict the wireless link quality and incoming solar energy to efficiently use limited energy and make a robust low cost network run longer and more reliably,\" says Ali Abedi, principal investigator of the recent study and professor of electrical and computer engineering at the University of Maine.<br><br>The software learns over time how to make the best use of available network resources, which helps produce power efficient systems at a lower cost for large scale monitoring compared to the existing industry standards.<br><br>WiSe-Net also collaborated with Aaron Weiskittel, director of the Center for Research on Sustainable Forests, to ensure that all hardware and software research is informed by the science and tailored to the research needs.<br><br>\"Soil moisture is a primary driver of tree growth, but it changes rapidly, both daily as well as seasonally,\" Weiskittel says. \"We have lacked the ability to monitor effectively at scale. Historically, we used expensive sensors that collected at fixed intervals -- every minute, for example -- but were not very reliable. A cheaper and more robust sensor with wireless capabilities like this really opens the door for future applications for researchers and practitioners alike.\"<br><br>The study was published Aug. 9, 2022, in the Springer\'s International Journal of Wireless Information Networks.<br><br>Although the system designed by the researchers focuses on soil moisture, the same methodology could be extended to other types of sensors, like ambient temperature, snow depth and more, as well as scaling up the networks with more sensor nodes.<br><br>\"Real-time monitoring of different variables requires different sampling rates and power levels. An AI agent can learn these and adjust the data collection and transmission frequency accordingly rather than sampling and sending every single data point, which is not as efficient,\" Abedi says.<br></p>','AI-Software-Forest','2022-11-16 11:35:33.353793','2022-11-16 11:35:33.494579',5,1,8,'2022-10-21 02:25:11.611711'),(6,'There\'s room for improvement in a popular climate-smart agricultural practice','<p id=\"first\" class=\"lead\">The promise for American agriculture is \r\ntantalizing: healthier soil, more carbon kept in the ground, less \r\nfertilizer runoff, and less need for chemicals. The reality of planting \r\ncover crops during the off-season -- a much-touted and subsidized \r\napproach to climate change mitigation -- is more complicated, according \r\nto new Stanford University-led research. The study, published Nov. 8 in <em>Global Change Biology</em>,\r\n reveals that cover cropping as currently done in a major U.S. \r\ncrop-growing region reduces corn and soybean yields, and could lead to \r\nindirect environmental impacts from expanded cultivation to make up for \r\nthe losses.</p>\r\n\r\n						\r\n				\r\n						<div id=\"text\">\r\n<p>\"Use of cover crops is rapidly spreading. We wanted to see how these \r\nnew practices affect crop yields in the real world, outside of \r\nsmall-scale research plots,\" said Jillian Deines, lead author of the \r\nstudy and a postdoctoral scholar in Stanford\'s Center on Food Security \r\nand the Environment (FSE) at the time of the research.</p>\r\n<p>\"Agriculture is a very tricky business to get right, and things \r\ntypically don\'t work out as planned\" added senior author David Lobell, \r\nthe Gloria and Richard Kushel Director of FSE and professor in Earth \r\nSystem Science. \"Our view is that constant monitoring, evaluation, and \r\nlearning is a key part of making agriculture truly sustainable.\"</p>\r\n<p>Maintaining vegetation cover on agricultural fields in the off-season\r\n can lead to large reductions in runoff and leakage of nitrogen into \r\nstreams and groundwater, reduced soil erosion, and reduced need for weed\r\n control chemicals. The practice can also be a cost-competitive strategy\r\n for keeping carbon dioxide out of the air.</p>\r\n<p>Because of cover cropping\'s potential as a climate change solution \r\nand other landscape benefits, the U.S. Department of Agriculture has \r\nsubsidized the practice with more than $100 million per year since 2016.\r\n The Inflation Reduction Act, passed in August, earmarks $20 billion for\r\n practices that \"directly improve soil carbon, reduce nitrogen losses, \r\nor reduce, capture, avoid, or sequester carbon dioxide, methane, or \r\nnitrous oxide emissions, associated with agricultural production.\" \r\nWithout these supports, farmers would likely be slower to take on the \r\ncost of sowing and digging up cover crops. As it is, cover crops are \r\nused on only about 5% of fields in the primary corn-growing region of \r\nthe U.S.</p>\r\n<p><strong>Looking at fields from space</strong></p>\r\n<p>In the first large-scale, field-level analysis of yield impacts from \r\ncover cropping across the U.S. Corn Belt, the researchers used satellite\r\n imagery to look over about 20 million acres of farmland in Iowa, \r\nIndiana, Missouri, Ohio, Illinois, and Michigan. They analyzed every \r\nfield that had grown cover crops for at least three years, comparing \r\nthem to similar fields that had not been planted with cover crops.</p>\r\n\r\n							\r\n							\r\n							\r\n<p>On average, fields with cover crops saw yield declines of 5.5% for \r\ncorn and 3.5% for soybeans. The greater maize yield losses likely \r\nreflect the crop\'s greater need for nitrogen fertilizer, a chemical that\r\n common cover crops also use, and water, which cover crops can deplete \r\nahead of dry growing seasons.</p>\r\n<p>The yield declines equate with a loss of about $40 per acre for corn \r\nand $20 per acre for soybeans. That loss, combined with the cost of \r\nimplementing cover crops -- about $40 per acre -- makes long-term \r\nadoption of the practice challenging, the researchers write.</p>\r\n<p>Despite the sobering findings, the researchers emphasize that cover \r\ncrops could still prove beneficial to farmers and the rest of society. \r\nIt could be that the benefits take a while to kick in, and it\'s likely \r\nthat farmers will become better at implementation. More research can \r\nhelp guide that implementation by showing, among other things, how \r\nalternatives to rye -- the most commonly used cover crop in the U.S. \r\nCorn Belt -- might result in higher primary crop yields in some regions.\r\n Ensuring that the cover crop is removed with enough lead time before \r\nplanting primary crops could reduce the likelihood of significant yield \r\npenalties. Policymakers could encourage adoption of cover cropping more \r\nstrongly in areas that are least likely to experience significant yield \r\npenalties, such as those with less susceptibility to water stress.</p>\r\n<p>\"Learning by doing is really important, and adjustments are almost \r\nalways needed both in the sense of farmer practice and government \r\npolicy,\" Lobell said. \"The combination of satellite data and powerful \r\nmachine learning methods can help us be more nimble in making these \r\nadjustments.\"</p>\r\n<p>Lobell is also a professor of Earth system science in the Stanford \r\nDoerr School of Sustainability, the William Wrigley Senior Fellow at the\r\n Stanford Woods Institute for the Environment, and a senior fellow at \r\nthe Freeman Spogli Institute for International Studies and the Stanford \r\nInstitute for Economic Policy Research. Deines is currently a scientist \r\nwith the Earth Systems Predictability and Resiliency Group at the \r\nPacific Northwest National Laboratory. Other coauthors of the study \r\ninclude Cambria White, an undergraduate researcher in Stanford\'s \r\nSustainability Undergraduate Research in Geoscience and Engineering \r\nProgram at the time of the research; Bruno Lopez, a research data \r\nanalyst at Stanford\'s Center on Food Security and the Environment at the\r\n time of the research; and researchers at the University of Illinois at \r\nUrbana Champaign.</p>\r\n<p>This research was funded by NASA, the Stanford Undergraduate Research\r\n in Geoscience and Engineering Program, and the United States Department\r\n of Agriculture.</p>\r\n</div><p></p>','Climate-Global_Change-Smart-practices','2022-11-16 13:13:20.993537','2022-11-16 13:13:21.111250',34,0,1,'2022-10-23 11:05:11.611711'),(7,'Would traffic noise from future flying cars cause stress?','<p>Researchers from Nagoya University and Keio University in Japan have estimated a person\'s stress levels caused by the sound of a flying car passing overhead. The research was published in the Technical Journal of Advanced Mobility in September 2022.<br><br>The drone market is booming, as several automobile companies and start-ups develop new personal aircraft. The long-awaited flying car, made famous in films like Blade Runner, may soon be a common sight in cities around the world. But while the automobile industry is busy developing technology to catch up to fantasy, few inventors or science fiction authors have thought much about how noise from the roaring and whirring of flying car engines might affect people\'s psychological state. Professor Susumu Hara of the Department of Aerospace Engineering, Graduate School of Engineering at Nagoya University, the lead author of the study, points out that in past industrial revolutions, people often prioritized technological advancement and economic demands over social and environmental issues, including noise and air pollution. \"Unless technology is well-integrated in our daily lives,\" he argues, \"we cannot expect it to make our society a better place.\" Therefore, his team conducted an experiment to estimate people\'s stress levels as if they were living in a world with flying cars.<br><br>In the research experiment, participants watched short videos that simulated cars flying in a city. The videos were designed so that the viewers felt like a car was flying 15 meters above them at a speed of 15.5 miles per hour (25 km per hour). To simulate such a scene, the videos used audio recordings of an industrial drone flying at a speed and height similar to the flying car depicted in the videos. Participants watched the video eight times, while the researchers changed the volume of the audio in each viewing to examine how the noise level would affect the participants. Participants\' stress levels were assessed using two different measures. First, while watching the videos, a portable EEG device, called a Kansei Analyzer, recorded their brain activity. Second, after watching each video, the participants responded to a written questionnaire.<br><br>The researchers found that each person\'s self-reported stress level corresponded to the noise level of the flying car. As the noise increased, the participants reported greater stress. When the noise level decreased, they reported lower stress levels. However, brain activity data showed a different pattern. As predicted, when the noise level increased for the first time in the experiment, the EEG data showed higher levels of stress among the participants. But once the participants were exposed to loud noise, their stress levels did not decrease -- even after the noise level dropped. This may suggest that while most people think they can become accustomed to loud noise, it may actually be causing them stress without noticing it. To protect the health of residents, it is important to consider the long-term effects of exposure to chronic loud traffic noise in a world where flying cars are constantly landing, taking off, and whizzing above us. In addition to a self-reported assessment, checking brain activity might also be necessary to measure stress from noise.<br><br>When considering flying cars, an obvious solution is for aerospace engineers to prioritize making them quieter. But for now, we do not know how to determine the optimal sound level for protecting citizens\' health. The researchers in this study hope that their measurement methods can help answer such questions.<br><br>\"I am sure drones and flying cars will bring significant benefits to our society,\" said Professor Hara. At the same time, the study clearly shows that we cannot neglect noise pollution. \"We believe that developing guidelines and regulations on flying cars is important so that we can better adapt them to our lives,\" he continued. \"I hope this study provides some clues how to do that.\"<br><br></p>','Noise-Pollution-Flying_cars','2022-11-16 13:48:44.595880','2022-11-16 13:48:44.662348',24,0,9,'2022-11-02 12:12:11.611711'),(8,'New technology creates carbon neutral chemicals out of thin air','<p>It is possible to capture carbon dioxide (CO2) from the surrounding atmosphere and repurpose it into useful chemicals usually made from fossil fuels, according to a study from the University of Surrey.<br><br>The technology could allow scientists to both capture CO2 and transform it into useful chemicals such as carbon monoxide and synthetic natural gas in one circular process.<br><br>Dr Melis Duyar, Senior Lecturer of Chemical Engineering at the University of Surrey commented:<br><br>\"Capturing CO2 from the surrounding air and directly converting it into useful products is exactly what we need to approach carbon neutrality in the chemicals sector. This could very well be a milestone in the steps needed for the UK to reach its 2050 net-zero goals.<br><br>\"We need to get away from our current thinking on how we produce chemicals, as current practices rely on fossil fuels which are not sustainable. With this technology we can supply chemicals with a much lower carbon footprint and look at replacing fossil fuels with carbon dioxide and renewable hydrogen as the building blocks of other important chemicals.\"<br><br>The technology uses patent-pending switchable Dual Function Materials (DFMs), that capture carbon dioxide on their surface and catalyse the conversion of captured CO2 directly into chemicals. The \"switchable\" nature of the DFMs comes from their ability to produce multiple chemicals depending on the operating conditions or the composition of the added reactant. This makes the technology responsive to variations in demand for chemicals as well as availability of renewable hydrogen as a reactant.<br><br>Dr Duyar continued:<br><br>\"These outcomes are a testament to the research excellence at Surrey, with continuously improving facilities, internal funding schemes and a collaborative culture.\"<br><br>Loukia-Pantzechroula Merkouri, Postgraduate student leading this research at the University of Surrey added:<br><br>\"Not only does this research demonstrate a viable solution to the production of carbon neutral fuels and chemicals, but it also offers an innovative approach to combat the ever-increasing CO2 emissions contributing to global warming.\"<br><br>The study published in the Royal Society of Chemistry journal Nanoscalewas made possible through the Surrey Doctoral College Studentship Award.<br><br></p>','Society-Energy_Saving-Carbon_Neutral','2022-11-16 13:57:21.291368','2022-11-16 13:57:21.443322',6,0,4,'2022-11-05 23:50:11.611711'),(9,'Advanced plastics recycling yields climate benefits','<p>The City College of New York Grove School of Engineering today released a new report which examined advanced recycling. The report concluded that advanced recycling helps avoid climate impacts, reduces demand for energy resources, and offers key tools for expanding the circular economy. The report was authored by Dr. Marco J. Castaldi, professor of chemical engineering and director of CCNY\'s Earth Engineering Center (EEC), and EEC research associate Lauren Creadore.<br><br>The authors examined 13 recently completed life cycle assessments (LCAs) and found that advanced recycling can transform hard-to-recycle plastics into products with a smaller carbon footprint than those made from new resources. The processes also reduce energy use and greenhouse gas emissions compared to conventional end of life methods, such as landfilling and waste-to-energy. Use of advanced recycling contributed to circularity for plastics in all 13 LCAs.<br><br>Specifically, the report found that advanced recycling technologies can:<br><br>&nbsp;&nbsp;&nbsp; Produce plastic and chemical products with a reduced global warming potential compared to products made from virgin resources.<br>&nbsp;&nbsp;&nbsp; Reduce the need for fossil energy resources by up to 97% compared to landfilling.<br>&nbsp;&nbsp;&nbsp; Reduce CO2 equivalent emissions by more than 100% compared to typical end-of-life processes when accounting for displaced demand for chemical products and energy.<br><br>\"As advanced recycling becomes increasingly efficient, it is poised to play a major role in achieving global sustainability goals,\" said Castaldi. \"It can transform hard-to-recycle plastics into a multitude of high-value feedstocks, reducing the need for fossil resources and limiting the environmental impact of waste management. Equally important, the data suggest that our transition to a more circular economy will dramatically improve climate outcomes.\"<br><br>\"There\'s been significant investment and interest from companies and policymakers in advanced recycling,\" said Bob Hall at the American Society of Mechanical Engineers\' Research Committee on Energy, Environment, and Waste. \"Scientific studies like this one from CCNY, coupled with engineering ingenuity can help inform and responsibly move us towards a more sustainable and circular future. As these technologies mature, it is imperative to conduct additional studies on advanced recycling that adhere to international LCA standards.\"<br><br>\"ASME suggests that technologies that have current operating performance data and have a facility to visit should be given priority for future analyses,\" added Annette Scotto, ASME Chair of the Material and Energy Recovery Division.<br><br>The report is titled \"Quantitative Comparison of LCAs on the Current State of Advanced Recycling Technologies.\"<br><br></p>','Climate-Recycling-','2022-11-16 14:03:32.367030','2022-11-16 14:03:32.470349',5,0,2,'2022-11-09 08:18:11.611711'),(10,'New AI model can help prevent damaging and costly data breaches','<p>Imperial privacy experts have created an AI algorithm that automatically tests privacy-preserving systems for potential data leaks.<br><br>This is the first time AI has been used to automatically discover vulnerabilities in this type of system, examples of which are used by Google Maps and Facebook.<br><br>The experts, from Imperial\'s Computational Privacy Group, looked at attacks on query-based systems (QBS) -- controlled interfaces through which analysts can query data to extract useful aggregate information about the world. They then developed a new AI-enabled method called QuerySnout to detect attacks on QBS.<br><br>QBS give analysts access to collections of statistics gathered from individual-level data like location and demographics. They are currently used in Google Maps to show live information on how busy an area is, or in Facebook\'s Audience Measurement feature to estimate audience size in a particular location or demographic to help with advertising promotions.<br><br>In their new study, published as part of the 29th ACM Conference on Computer and Communications Security, the team including the Data Science Institute\'s Ana Maria Cretu, Dr Florimond Houssiau, Dr Antoine Cully and Dr Yves-Alexandre de Montjoye found that powerful and accurate attacks against QBS can easily be automatically detected at the pressing of a button.<br><br>According to Senior Author Dr Yves-Alexandre de Montjoye: \"Attacks have so far been manually developed using highly skilled expertise. This means it was taking a long time for vulnerabilities to be discovered, which leaves systems at risk.<br><br>\"OuerySnout is already outperforming humans at discovering vulnerabilities in real-world systems.\"<br><br>The need for query-based systems<br><br>Our ability to collect and store data has exploded in the last decade. Although this data can help drive scientific advancements, most of it is personal and hence its use raises serious privacy concerns, protected by laws such as the EU\'s General Data Protection Regulation.<br><br>Therefore, enabling data to be used for good while preserving our fundamental right to privacy is a timely and crucial question for data scientists and privacy experts.<br><br>QBS have the potential to enable privacy-preserving anonymous data analysis at scale. In QBS, curators keep control over the data and therefore can check and examine queries sent by analysts to ensure that the answers returned do not reveal private information about individuals.<br><br>However, illegal attackers can bypass such systems by designing queries to infer personal information about specific people by exploiting vulnerabilities or implementation bugs of the system.<br><br>Testing the system<br><br>The risks of unknown strong \"zero-day\" attacks where attackers capitalise on vulnerabilities in systems have stalled the development and deployment of QBS.<br><br>To test the robustness of these systems, in a similar way to penetration testing in cyber-security, data breach attacks can be simulated to detect information leakages and identify potential vulnerabilities.<br><br>However, manually designing and implementing these attacks against complex QBS is a difficult and lengthy process.<br><br>Therefore, the researchers say, limiting the potential for strong unmitigated attacks is essential to enable QBS to be usefully and safely implemented whilst preserving individual rights to privacy.<br><br>QuerySnout<br><br>The Imperial team developed a new AI-enabled method called QuerySnout which works by learning which questions to ask the system to gain answers. It then learns to combine the answers automatically to detect potential privacy vulnerabilities.<br><br>By using machine learning, the model can create an attack consisting of a collection of queries that combines the answers in order to reveal a particular piece of private information. This process is fully automated and uses a technique called \'evolutionary search\' which enables the QuerySnout model to discover the right sets of questions to ask.<br><br>This takes place in a \'black-box setting\' which means the AI only needs access to the system but does not need to know how the system works in order to detect the vulnerabilities.<br><br>Co-First Author Ana-Maria Cretu said: \"We demonstrate that QuerySnout finds more powerful attacks than those currently known on real-world systems. This means our AI model is better than humans at finding these attacks.\"<br><br>Next steps<br><br>Presently, QuerySnout only tests a small number of functionalities. According to Dr de Montjoye: \"The main challenge moving forward will be to scale the search to a much larger number of functionalities to make sure it discovers even the most advanced attacks.\"<br><br>Despite this, the model can enable analysts to test the robustness of QBS against different types of attackers. The development of QuerySnout represents a key step forward in securing individual privacy in relation to query-based systems.<br><br>\"QuerySnout: Automating the Discovery of Attribute Interference Attacks against Query-Based Systems\" by A. M. Cretu, F. Houssiau, A. Cully and Y. A. de Montjoye, published on 7 November 2022 in Proceedings of the 2022 ACM SIGSAC Conference on Computer and Communications Security.<br></p>','AI-Computer-Internet-Data_Breach','2022-11-16 14:10:17.791033','2022-11-16 14:10:17.970357',93,0,6,'2022-11-09 17:52:11.611711'),(11,'Machine learning, from you New software allows nonspecialists to intuitively train machines using gestures','<p>Many computer systems people interact with on a daily basis require knowledge about certain aspects of the world, or models, to work. These systems have to be trained, often needing to learn to recognize objects from video or image data. This data often contains superfluous content that reduces the accuracy of models. So researchers found a way to incorporate natural hand gestures into the teaching process. This way, users can more easily teach machines about objects, and the machines can also learn more effectively.<br><br>You\'ve probably heard the term machine learning before, but are you familiar with machine teaching? Machine learning is what happens behind the scenes when a computer uses input data to form models that can later be used to perform useful functions. But machine teaching is the somewhat less explored part of the process, of how the computer gets its input data to begin with. In the case of visual systems, for example ones that can recognize objects, people need to show objects to a computer so it can learn about them. But there are drawbacks to the ways this is typically done that researchers from the University of Tokyo\'s Interactive Intelligent Systems Laboratory sought to improve.<br><br>\"In a typical object training scenario, people can hold an object up to a camera and move it around so a computer can analyze it from all angles to build up a model,\" said graduate student Zhongyi Zhou. \"However, machines lack our evolved ability to isolate objects from their environments, so the models they make can inadvertently include unnecessary information from the backgrounds of the training images. This often means users must spend time refining the generated models, which can be a rather technical and time-consuming task. We thought there must be a better way of doing this that\'s better for both users and computers, and with our new system, LookHere, I believe we have found it.\"<br><br>Zhou, working with Associate Professor Koji Yatani, created LookHere to address two fundamental problems in machine teaching: firstly, the problem of teaching efficiency, aiming to minimize the users\' time, and required technical knowledge. And secondly, of learning efficiency -- how to ensure better learning data for machines to create models from. LookHere achieves these by doing something novel and surprisingly intuitive. It incorporates the hand gestures of users into the way an image is processed before the machine incorporates it into its model, known as HuTics. For example, a user can point to or present an object to the camera in a way that emphasizes its significance compared to the other elements in the scene. This is exactly how people might show objects to each other. And by eliminating extraneous details, thanks to the added emphasis to what\'s actually important in the image, the computer gains better input data for its models.<br><br>\"The idea is quite straightforward, but the implementation was very challenging,\" said Zhou. \"Everyone is different and there is no standard set of hand gestures. So, we first collected 2,040 example videos of 170 people presenting objects to the camera into HuTics. These assets were annotated to mark what was part of the object and what parts of the image were just the person\'s hands. LookHere was trained with HuTics, and when compared to other object recognition approaches, can better determine what parts of an incoming image should be used to build its models. To make sure it\'s as accessible as possible, users can use their smartphones to work with LookHere and the actual processing is done on remote servers. We also released our source code and data set so that others can build upon it if they wish.\"<br><br>Factoring in the reduced demand on users\' time that LookHere affords people, Zhou and Yatani found that it can build models up to 14 times faster than some existing systems. At present, LookHere deals with teaching machines about physical objects and it uses exclusively visual data for input. But in theory, the concept can be expanded to use other kinds of input data such as sound or scientific data. And models made from that data would benefit from similar improvements in accuracy too<br></p>','AI-Machine_Learning','2022-11-16 14:14:06.131691','2022-12-15 09:59:16.067281',22,1,8,'2022-11-17 08:25:11.611711'),(12,'Ancient viral DNA in human genome guards against infections','<p>Viral DNA in human genomes, embedded there from ancient infections, serve as antivirals that protect human cells against certain present-day viruses, according to new research.<br><br>The paper, \"Evolution and Antiviral Activity of a Human Protein of Retroviral Origin,\" published Oct. 28 in Science, provides proof of principle of this effect.<br><br>Previous studies have shown that fragments of ancient viral DNA -- called endogenous retroviruses -- in the genomes of mice, chickens, cats and sheep provide immunity against modern viruses that originate outside the body by blocking them from entering host cells. Though this study was conducted with human cells in culture in the lab, it shows that the antiviral effect of endogenous retroviruses likely also exists for humans.<br><br>The research is important because further inquiry could uncover a pool of natural antiviral proteins that lead to treatments without autoimmune side effects. The work reveals the possibility of a genome defense system that has not been characterized, but could be quite extensive.<br><br>\"The results show that in the human genome, we have a reservoir of proteins that have the potential to block a broad range of viruses,\" said Cedric Feschotte, professor of molecular biology and genetics in the College of Agriculture and Life Sciences. John Frank, Ph.D. \'20, a former graduate student in Feschotte\'s lab and now a postdoctoral researcher at Yale University, is the study\'s first author.<br><br>Endogenous retroviruses account for about 8% of the human genome -- at least four times the amount of DNA that make up the genes that code for proteins. Retroviruses introduce their RNA into a host cell, which is converted to DNA and integrated into the host\'s genome. The cell then follows the genetic instructions and makes more virus.<br><br>In this way, the virus hijacks the cell\'s transcriptional machinery to replicate itself. Typically, retroviruses infect cells that don\'t pass from one generation to the next, but some infect germ cells, such as an egg or sperm, which opens the door for retroviral DNA to pass from parent to offspring and eventually become permanent fixtures in the host genome.<br><br>In order for retroviruses to enter a cell, a viral envelope protein binds to a receptor on the cell\'s surface, much like a key into a lock. The envelope is also known as a spike protein for certain viruses, such as SARS-CoV-2.<br><br>In the study, Frank, Feschotte and colleagues used computational genomics to scan the human genome and catalog all the potential retroviral envelope protein-coding sequences that may have retained receptor binding activity. Then they ran more tests to detect which of these genes were active -- that is, expressing retroviral envelope gene products in specific human cell types.<br><br>\"We found clear evidence of expression,\" Feschotte said, \"and many of them are expressed in the early embryo and in germ cells, and a subset are expressed in immune cells upon infection.\"<br><br>Once the researchers had identified antiviral envelope proteins expressed in different contexts, they focused on one, Suppressyn, because it was known to bind a receptor called ASCT2, the cellular entry point for a diverse group of viruses called Type D retroviruses. Suppressyn showed a high level of expression in the placenta and in very early human embryonic development.<br><br>They then ran experiments in human placental-like cells, as the placenta is a common target for viruses.<br><br>The cells were exposed to a type D retrovirus called RD114, which is known to naturally infect feline species, such as the domestic cat. While other human cell types not expressing Suppressyn could be readily infected, the placental and embryonic stem cells did not get infected. When the researchers experimentally depleted placental cells of Suppressyn, they became susceptible to RD114 infection; when Suppressyn was returned to the cells, they regained resistance.<br><br>In addition, the researchers did reverse experiments, using an embryonic kidney cell line normally susceptible to RD114. The cells became resistant when the researchers experimentally introduced Suppressyn into these cells.<br><br>The study shows how one human protein of retroviral origin blocks a cell receptor that allows viral entry and infection by a broad range of retroviruses circulating in many non-human species. In this way, Feschotte said, ancient retroviruses integrated into the human genome provide a mechanism for protecting the developing embryo against infection by related viruses.<br><br>Future work will explore the antiviral activity of other envelope-derived proteins encoded in the human genome, he said.<br><br>Co-authors include Carolyn Coyne, a virologist at Duke University\'s School of Medicine, and Jose Garcia-Perez, a molecular biologist at the University of Granada, Spain.<br><br>The study was funded by Cornell, the National Institutes of Health, the Wellcome Trust-University of Edinburgh Institutional Strategic Support Fund, the European Research Council and the Howard Hughes Medical Institute.<br><br></p>','DNA_Genome-Infections','2022-11-16 14:23:39.993988','2022-11-23 07:39:17.665123',5,0,9,'2022-11-13 20:00:11.000000'),(13,'Helping autonomous vehicles navigate tricky highway merges','<p>If autonomous vehicles are ever going to achieve widespread adoption, we need to know they are capable of navigating complex traffic situations, such as merging into heavy traffic when lanes disappear on a highway. To that end, researchers from North Carolina State University have developed a technique that allows autonomous vehicle software to make the relevant calculations more quickly -- improving both traffic and safety in simulated autonomous vehicle systems.<br><br>\"Right now, the programs designed to help autonomous vehicles navigate lane changes rely on making problems computationally simple enough to resolve quickly, so the vehicle can operate in real time,\" says Ali Hajbabaie, corresponding author of a paper on the work and an assistant professor of civil, construction and environmental engineering at NC State. \"However, simplifying the problem too much can actually create a new set of problems, since real world scenarios are rarely simple.<br><br>\"Our approach allows us to embrace the complexity of real-world problems. Rather than focusing on simplifying the problem, we developed a cooperative distributed algorithm. This approach essentially breaks a complex problem down into smaller sub-problems, and sends those to different processors to solve separately. This process, called parallelization, improves efficiency significantly.\"<br><br>At this point, the researchers have only tested their approach in simulations, where the sub-problems are shared among different cores in the same computing system. However, if autonomous vehicles ever use the approach on the road, the vehicles would network with each other and share the computing sub-problems.<br><br>In proof-of-concept testing, the researchers looked at two things: whether their technique allowed autonomous vehicle software to solve merging problems in real time; and how the new \"cooperative\" approach affected traffic and safety compared to an existing model for navigating autonomous vehicles.<br><br>In terms of computation time, the researchers found their approach allowed autonomous vehicles to navigate complex freeway lane merging scenarios in real time in moderate and heavy traffic, with spottier performance when traffic volumes got particularly high.<br><br>But when it came to improving traffic and safety, the new technique did exceptionally well. In some scenarios, particularly when traffic volume was lower, the two approaches performed about the same. But in most instances, the new approach outperformed the previous model by a considerable margin. What\'s more, the new technique had zero incidents where vehicles had to come to a stop or where there were \"near crash conditions.\" The other model\'s results included multiple scenarios where there were literally thousands of stoppages and near crash conditions.<br><br>\"For a proof-of-concept test, we\'re very pleased with how this technique has performed,\" Hajbabaie says. \"There is room for improvement, but we\'re off to a great start.<br><br>\"The good news is that we\'re developing these tools and tackling these problems now, so that we\'re in a good position to ensure safe autonomous systems as they are adopted more widely.\"<br><br></p>','Autonomous_cars-AI','2022-11-16 14:28:05.376152','2022-12-15 09:44:27.462797',29,1,1,'2022-11-16 18:45:11.000000'),(14,'Dams could play a big role in feeding the world more sustainably','<p>A bogeyman to many environmentalists, dams could actually play a significant role in feeding the world more sustainably, according to new Stanford University research. The study, published the week of Nov. 14 in PNAS, quantifies for the first time how much water storage would be required to maximize crop irrigation without depleting water stocks or encroaching on nature, and how many people this approach could feed. While the researchers find that dammed reservoirs could be used to store more than 50% of the water needed for such irrigation, they emphasize that large reservoirs are only part of the solution and recommend evaluating alternatives to building new dams due to their damaging impacts on river ecosystems.<br><br>\"There is an urgent need to explore alternative water storage solutions, but we have to acknowledge that many dams are already in place,\" said study lead author Rafael Schmitt, a research engineer with the Stanford Natural Capital Project. \"Our research illuminates their crucial role in ensuring food security in the future.\"<br><br>Typical agricultural practices in many parts of the world deplete and pollute water resources, damage natural landscapes, and together generate one-fourth of global greenhouse gas emissions. Two-thirds of global cropland depends on rainfall and often makes up for its absence by using non-sustainable water resources, such as non-renewable groundwater, or impeding environmental flows.<br><br>Sustainable irrigation\'s potential<br><br>The researchers analyzed the amount of freshwater in surface and groundwater bodies generated and renewed by natural hydrological cycles, as well as water demands of current crop mixes on irrigated and rainfed lands. They estimated that the full potential of storage-fed irrigation could feed about 1.15 billion people. If all 3,700 potential dam sites that have been mapped for their hydropower potential were built and partially used for irrigation, the world\'s dams could supply enough water storage to irrigate crops for about 641 million people or 55% of the total.<br><br>Despite dams\' potential, the researchers caution against relying on them as a significant part of the sustainable irrigation solution, citing dams\' socio-environmental consequences, such as fragmentation of rivers, with impacts on fish migration and sediment transport, and displacement of people. Dams are also less appealing for irrigation storage because of water loss, expense, and ecological damage related to the need for conveyance to distant agricultural fields, as well as higher levels of evaporation across large reservoirs\' large water surfaces.<br><br>\"Amongst all supply and demand side options to increase food and water security, building more dams should be the last resort,\" the researchers write.<br><br>Alternative solutions to provide more environmentally sound water storage for irrigation include water harvesting with small dams, recharging groundwater systems with excess surface water from winter storms or spring snow melt, and better management of soil moisture on farm fields. These decentralized approaches lose less water due to evaporation, require less conveyance infrastructure, and often create co-benefits for local communities and wildlife.<br><br>Additionally, the researchers highlight that the demand for stored water can be reduced through better irrigation techniques, or adoption of crops that are better aligned with water availability. With storage being such a bottleneck for future agriculture, better land management that reduces erosion -- and thus sedimentation and storage loss -- in existing reservoirs is an additional priority.<br><br>\"Nutritional security is a core challenge for sustainable human development,\" said study senior author Gretchen Daily, co-founder and faculty director of the Stanford Natural Capital Project. \"Our study highlights the urgent need and opportunity for nature-positive investments into irrigation and water management to reduce harmful impacts of agriculture while supporting other vital benefits of farmland and freshwater ecosystems.\"<br><br>Daily is also the Bing Professor of Environmental Science in the Stanford School of Humanities and Sciences, and a senior fellow at the Stanford Woods Institute for the Environment.<br><br>The research was funded by the Wallenberg Foundation.<br><br></p>','Dam-Sustainably-feeding','2022-11-16 14:33:47.117593','2022-11-23 07:37:05.409056',10,1,6,'2022-11-17 08:25:11.000000');
/*!40000 ALTER TABLE `blog_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_post_category`
--

DROP TABLE IF EXISTS `blog_post_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog_post_category` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `post_id` bigint NOT NULL,
  `category_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `blog_post_category_post_id_category_id_189979f4_uniq` (`post_id`,`category_id`),
  KEY `blog_post_category_category_id_e1f613f9_fk_blog_category_id` (`category_id`),
  CONSTRAINT `blog_post_category_category_id_e1f613f9_fk_blog_category_id` FOREIGN KEY (`category_id`) REFERENCES `blog_category` (`id`),
  CONSTRAINT `blog_post_category_post_id_d7c84b08_fk_blog_post_id` FOREIGN KEY (`post_id`) REFERENCES `blog_post` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_post_category`
--

LOCK TABLES `blog_post_category` WRITE;
/*!40000 ALTER TABLE `blog_post_category` DISABLE KEYS */;
INSERT INTO `blog_post_category` VALUES (4,2,4),(5,3,5),(6,4,5),(7,5,4),(8,6,4),(9,7,7),(10,8,7),(11,9,7),(12,10,4),(13,10,7),(14,11,4),(15,12,5),(16,13,4),(17,14,7);
/*!40000 ALTER TABLE `blog_post_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_postgallery`
--

DROP TABLE IF EXISTS `blog_postgallery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog_postgallery` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `post_image_name` varchar(100) NOT NULL,
  `post_id` bigint NOT NULL,
  `image_alt_name` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_postgallery_post_id_d7fb6282_fk_blog_post_id` (`post_id`),
  CONSTRAINT `blog_postgallery_post_id_d7fb6282_fk_blog_post_id` FOREIGN KEY (`post_id`) REFERENCES `blog_post` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_postgallery`
--

LOCK TABLES `blog_postgallery` WRITE;
/*!40000 ALTER TABLE `blog_postgallery` DISABLE KEYS */;
INSERT INTO `blog_postgallery` VALUES (2,'images/post/gallery/Q8I3H7_1.webp',2,'AlphaFold'),(3,'images/post/gallery/Q8W3K0.webp',2,'AlphaFold2'),(4,'images/post/gallery/IMG_4841.webp',3,'PLant-Based-Diet'),(5,'images/post/gallery/images.webp',3,'Vegan'),(6,'images/post/gallery/hairFol-1024x720.webp',4,'Hear-Follicle'),(7,'images/post/gallery/index.webp',4,'Healthy-Hair'),(8,'images/post/gallery/AI_forest.webp',5,'AI_forest'),(9,'images/post/gallery/621f9db036bafa517008eb78_min_slide-backgund_1.webp',5,'ArtificialIntelligence-In-Forestry'),(10,'images/post/gallery/climatesmart-agriculture-1-638.webp',6,'climatesmart-agriculture'),(11,'images/post/gallery/Schermafbeelding-2021-07-22-om-07.51.35.webp',6,'Smart-Agriculture'),(12,'images/post/gallery/2be6cddb-7f65-4881-a122-f260d7c4ecd6.webp',6,'Drone-Agriculture-Industry'),(13,'images/post/gallery/download-65-1.webp',7,'Noise-Pollution'),(14,'images/post/gallery/Noise_2000x1125.webp',7,'Noise'),(15,'images/post/gallery/Energy-efficiency.webp',8,'Energy-efficiency'),(16,'images/post/gallery/shutterstock_1492626947.webp',9,'shutterstock'),(17,'images/post/gallery/data_breach.webp',10,'data_breach'),(18,'images/post/gallery/DNA.webp',12,'DNA'),(19,'images/post/gallery/Autonomous-Vehicles-1080x675-1.webp',13,'Autonomous-Vehicles'),(20,'images/post/gallery/NSRS_Srisailam_Dam.webp',14,'NSRS_Srisailam_Dam');
/*!40000 ALTER TABLE `blog_postgallery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `captcha_captchastore`
--

DROP TABLE IF EXISTS `captcha_captchastore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `captcha_captchastore` (
  `id` int NOT NULL AUTO_INCREMENT,
  `challenge` varchar(32) NOT NULL,
  `response` varchar(32) NOT NULL,
  `hashkey` varchar(40) NOT NULL,
  `expiration` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hashkey` (`hashkey`)
) ENGINE=InnoDB AUTO_INCREMENT=296 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `captcha_captchastore`
--

LOCK TABLES `captcha_captchastore` WRITE;
/*!40000 ALTER TABLE `captcha_captchastore` DISABLE KEYS */;
INSERT INTO `captcha_captchastore` VALUES (295,'BKCX','bkcx','94a77cb50d8c51cf723b09138f0a219ab5df4d0e','2022-12-15 10:04:16.329754');
/*!40000 ALTER TABLE `captcha_captchastore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2022-11-12 10:18:46.752161','1','Programming',1,'[{\"added\": {}}]',10,1),(2,'2022-11-12 10:18:56.832380','2','Python',1,'[{\"added\": {}}]',10,1),(3,'2022-11-12 10:19:43.258851','1','All the (Internet of) Things',1,'[{\"added\": {}}]',12,1),(4,'2022-11-12 10:20:05.623697','1','PostGallery object (1)',1,'[{\"added\": {}}]',13,1),(5,'2022-11-15 20:04:12.093911','2','Python',3,'',10,1),(6,'2022-11-15 20:04:12.182063','1','Programming',3,'',10,1),(7,'2022-11-15 20:05:14.993974','3','programming',1,'[{\"added\": {}}]',10,1),(8,'2022-11-15 20:05:18.046238','1','All the (Internet of) Things',2,'[{\"changed\": {\"fields\": [\"Category\"]}}]',12,1),(9,'2022-11-16 08:04:46.870942','3','programming',3,'',10,1),(10,'2022-11-16 08:04:57.071155','4','Tech',1,'[{\"added\": {}}]',10,1),(11,'2022-11-16 08:05:07.912633','5','Health',1,'[{\"added\": {}}]',10,1),(12,'2022-11-16 08:05:19.361024','6','Society',1,'[{\"added\": {}}]',10,1),(13,'2022-11-16 08:05:54.174748','7','Environment',1,'[{\"added\": {}}]',10,1),(14,'2022-11-16 08:06:07.586860','4','Technology',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',10,1),(15,'2022-11-16 19:25:58.376983','1','PostGallery object (1)',3,'',13,1),(16,'2022-11-16 19:29:27.010557','1','All the (Internet of) Things',3,'',12,1),(17,'2022-11-21 13:51:36.695213','2','127.0.0.1:8000',1,'[{\"added\": {}}]',16,1),(18,'2022-11-22 13:21:23.144600','1','/*',1,'[{\"added\": {}}]',18,1),(19,'2022-11-22 13:21:47.995291','2','/admin',1,'[{\"added\": {}}]',18,1),(20,'2022-11-22 13:22:09.680077','1','*',1,'[{\"added\": {}}]',17,1),(21,'2022-11-23 07:37:05.849795','14','Dams could play a big role in feeding the world more sustainably',2,'[{\"changed\": {\"fields\": [\"Tags\"]}}]',12,1),(22,'2022-11-23 07:38:38.083203','13','Helping autonomous vehicles navigate tricky highway merges',2,'[{\"changed\": {\"fields\": [\"Tags\"]}}]',12,1),(23,'2022-11-23 07:39:17.798679','12','Ancient viral DNA in human genome guards against infections',2,'[{\"changed\": {\"fields\": [\"Tags\"]}}]',12,1),(24,'2022-11-23 07:40:21.056318','2','Beyond AlphaFold: A.I. excels at creating new proteins',2,'[{\"changed\": {\"fields\": [\"Tags\"]}}]',12,1),(25,'2022-11-23 07:54:27.833360','4','The chemical controlling life and death in hair follicles',2,'[{\"changed\": {\"fields\": [\"Tags\"]}}]',12,1),(26,'2022-12-12 10:38:59.214330','2','PostGallery object (2)',2,'[{\"changed\": {\"fields\": [\"Image alt name\"]}}]',13,1),(27,'2022-12-12 10:39:41.115917','3','PostGallery object (3)',2,'[{\"changed\": {\"fields\": [\"Image alt name\"]}}]',13,1),(28,'2022-12-12 12:43:52.027611','2','PostGallery object (2)',2,'[]',13,1),(29,'2022-12-12 12:44:37.392519','3','PostGallery object (3)',2,'[]',13,1),(30,'2022-12-13 06:28:29.701275','1','razi.pythonanywhere.com',2,'[{\"changed\": {\"fields\": [\"Domain name\", \"Display name\"]}}]',16,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(10,'blog','category'),(11,'blog','comment'),(7,'blog','contact'),(8,'blog','newsletter'),(12,'blog','post'),(13,'blog','postgallery'),(21,'captcha','captchastore'),(5,'contenttypes','contenttype'),(9,'django_summernote','attachment'),(14,'main','contact'),(15,'main','newsletter'),(22,'redirects','redirect'),(17,'robots','rule'),(18,'robots','url'),(6,'sessions','session'),(16,'sites','site'),(19,'taggit','tag'),(20,'taggit','taggeditem');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2022-11-07 07:27:37.501870'),(2,'auth','0001_initial','2022-11-07 07:28:13.846230'),(3,'admin','0001_initial','2022-11-07 07:28:20.389001'),(4,'admin','0002_logentry_remove_auto_add','2022-11-07 07:28:20.512353'),(5,'admin','0003_logentry_add_action_flag_choices','2022-11-07 07:28:20.640336'),(6,'contenttypes','0002_remove_content_type_name','2022-11-07 07:28:24.055111'),(7,'auth','0002_alter_permission_name_max_length','2022-11-07 07:28:26.414496'),(8,'auth','0003_alter_user_email_max_length','2022-11-07 07:28:27.158621'),(9,'auth','0004_alter_user_username_opts','2022-11-07 07:28:27.317395'),(10,'auth','0005_alter_user_last_login_null','2022-11-07 07:28:29.428762'),(11,'auth','0006_require_contenttypes_0002','2022-11-07 07:28:29.543789'),(12,'auth','0007_alter_validators_add_error_messages','2022-11-07 07:28:29.717715'),(13,'auth','0008_alter_user_username_max_length','2022-11-07 07:28:34.016774'),(14,'auth','0009_alter_user_last_name_max_length','2022-11-07 07:28:38.870964'),(15,'auth','0010_alter_group_name_max_length','2022-11-07 07:28:39.425153'),(16,'auth','0011_update_proxy_permissions','2022-11-07 07:28:39.633387'),(17,'auth','0012_alter_user_first_name_max_length','2022-11-07 07:28:44.507098'),(18,'sessions','0001_initial','2022-11-07 07:28:49.496115'),(19,'blog','0001_initial','2022-11-07 18:17:51.784975'),(20,'blog','0002_newsletter','2022-11-08 06:36:33.983468'),(21,'django_summernote','0001_initial','2022-11-11 09:12:12.020626'),(22,'django_summernote','0002_update-help_text','2022-11-11 09:12:12.310109'),(23,'blog','0003_auto_20221112_0945','2022-11-12 09:45:49.455949'),(24,'django_summernote','0003_alter_attachment_id','2022-11-12 09:45:51.646473'),(25,'main','0001_initial','2022-11-12 09:45:53.500371'),(26,'blog','0004_post_publish_date','2022-11-17 08:25:18.125231'),(27,'sites','0001_initial','2022-11-21 13:49:49.094089'),(28,'sites','0002_alter_domain_unique','2022-11-21 13:49:50.321802'),(29,'robots','0001_initial','2022-11-22 13:18:18.895850'),(30,'robots','0002_alter_id_fields','2022-11-22 13:18:51.388493'),(31,'taggit','0001_initial','2022-11-22 16:05:45.220486'),(32,'taggit','0002_auto_20150616_2121','2022-11-22 16:05:46.414342'),(33,'taggit','0003_taggeditem_add_unique_index','2022-11-22 16:05:47.309845'),(34,'taggit','0004_alter_taggeditem_content_type_alter_taggeditem_tag','2022-11-22 16:05:47.522246'),(35,'taggit','0005_auto_20220424_2025','2022-11-22 16:05:47.612855'),(36,'blog','0005_post_tags','2022-11-22 16:05:47.734356'),(37,'captcha','0001_initial','2022-11-25 16:16:20.141228'),(38,'captcha','0002_alter_captchastore_id','2022-11-25 16:16:20.590542'),(39,'blog','0006_auto_20221212_1034','2022-12-12 10:37:25.048029'),(40,'redirects','0001_initial','2022-12-15 10:30:53.839269'),(41,'redirects','0002_alter_redirect_new_path_help_text','2022-12-15 10:30:54.117670');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_redirect`
--

DROP TABLE IF EXISTS `django_redirect`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_redirect` (
  `id` int NOT NULL AUTO_INCREMENT,
  `site_id` int NOT NULL,
  `old_path` varchar(200) NOT NULL,
  `new_path` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_redirect_site_id_old_path_ac5dd16b_uniq` (`site_id`,`old_path`),
  KEY `django_redirect_old_path_c6cc94d3` (`old_path`),
  CONSTRAINT `django_redirect_site_id_c3e37341_fk_django_site_id` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_redirect`
--

LOCK TABLES `django_redirect` WRITE;
/*!40000 ALTER TABLE `django_redirect` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_redirect` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_site`
--

DROP TABLE IF EXISTS `django_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_site` (
  `id` int NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_site_domain_a2e37b91_uniq` (`domain`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_site`
--

LOCK TABLES `django_site` WRITE;
/*!40000 ALTER TABLE `django_site` DISABLE KEYS */;
INSERT INTO `django_site` VALUES (1,'razi.pythonanywhere.com','razi.pythonanywhere.com'),(2,'127.0.0.1:8000','127.0.0.8000');
/*!40000 ALTER TABLE `django_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_summernote_attachment`
--

DROP TABLE IF EXISTS `django_summernote_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_summernote_attachment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `file` varchar(100) NOT NULL,
  `uploaded` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_summernote_attachment`
--

LOCK TABLES `django_summernote_attachment` WRITE;
/*!40000 ALTER TABLE `django_summernote_attachment` DISABLE KEYS */;
INSERT INTO `django_summernote_attachment` VALUES (1,'internet_of_things.gif','django-summernote/2022-11-12/51f62cca-ca22-49af-b5e2-6ab049deb0f8.gif','2022-11-12 10:17:41.229256'),(2,'Screenshot from 2022-11-15 12-40-52.png','django-summernote/2022-11-15/ac0db790-81c1-4c38-af9c-271d45c58123.png','2022-11-15 16:02:20.038428');
/*!40000 ALTER TABLE `django_summernote_attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_contact`
--

DROP TABLE IF EXISTS `main_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `main_contact` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(254) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `message` longtext NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_contact`
--

LOCK TABLES `main_contact` WRITE;
/*!40000 ALTER TABLE `main_contact` DISABLE KEYS */;
INSERT INTO `main_contact` VALUES (1,'nemaee','ahmnd.nme_1983@gmail.com','test','test','2022-11-26 14:30:48.147143','2022-11-26 14:30:48.147202'),(2,'tehrani','tehrani.sadaf-169756@hotmail.com','test','test','2022-11-26 14:33:25.335034','2022-11-26 14:33:25.335095'),(3,'smadi','SmD.hajar@yahoo.com','test','test','2022-11-26 14:37:10.315924','2022-11-26 14:37:10.315987'),(4,'tina','shahravi.tina@gmail.com','test','test','2022-11-27 11:04:01.541582','2022-11-27 11:04:01.541653'),(5,'sepideh','tavanasepideh1994@yahoo.com','test','test','2022-11-27 11:08:26.720413','2022-11-27 11:08:26.720474'),(6,'farid','azami_767@yahoo.com','test','test','2022-11-27 11:26:05.740434','2022-11-27 11:26:05.740495'),(7,'mobina','karimi_mobina@gmail.com','test','test','2022-11-28 07:32:04.256971','2022-11-28 07:32:04.257033'),(8,'mobina','karimi_mobina@gmail.com','test','test','2022-11-28 07:35:57.090560','2022-11-28 07:35:57.090707'),(9,'taheri','shva*_taheri@gmail.com','test','test','2022-11-28 09:15:19.061934','2022-11-28 09:15:19.062004'),(10,'hamidreza','tavana-hamidreza@yahoo.com','test','test','2022-11-28 09:18:07.496843','2022-11-28 09:18:07.496902'),(11,'alireza','saeedi7849@gmail.com','test','test','2022-11-28 12:28:03.663669','2022-11-28 12:28:03.663745'),(12,'jdsjfkl','jdsjfkl@gmail.com','test','test','2022-12-10 08:40:21.584587','2022-12-10 08:40:21.584646'),(13,'kjhdcfchzl','kjhdcfchzl@gmail.com','test','test','2022-12-10 09:38:33.746864','2022-12-10 09:38:33.746929'),(14,'khjhkhjk','khjhkhjk@yahoo.com','test','test','2022-12-10 09:55:43.032202','2022-12-10 09:55:43.032261'),(15,'erewre','erewre@hotmail.com','test','test','2022-12-10 10:16:06.196111','2022-12-10 10:16:06.196171'),(16,'erewre','erewre@hotmail.com','test','test','2022-12-10 10:16:49.676697','2022-12-10 10:16:49.676751'),(17,'erewre','erewre@hotmail.com','test','test','2022-12-10 10:17:40.637522','2022-12-10 10:17:40.637599'),(18,'afra','afra.naghibi1993@gmail.com','test','test','2022-12-10 11:11:49.190601','2022-12-10 11:11:49.190659'),(19,'mkhkkgk','mkhkkgk@gmail.com','gyfj','jgyj','2022-12-10 11:46:55.759403','2022-12-10 11:46:55.759471'),(20,'gfhfgjf','yjgjf@hotmail.com','hghf','hfhfj','2022-12-10 11:54:33.359723','2022-12-10 11:54:33.359796'),(21,'dljgdj','dljgdj@gmail.com','dljgdj','dljgdj','2022-12-10 13:52:02.816425','2022-12-10 13:52:02.816498'),(22,'keyvan','keyvan^1983@gmail.com','test','test','2022-12-11 08:48:03.612451','2022-12-11 08:48:03.612516');
/*!40000 ALTER TABLE `main_contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_newsletter`
--

DROP TABLE IF EXISTS `main_newsletter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `main_newsletter` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Email` varchar(254) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_newsletter`
--

LOCK TABLES `main_newsletter` WRITE;
/*!40000 ALTER TABLE `main_newsletter` DISABLE KEYS */;
INSERT INTO `main_newsletter` VALUES (1,'hadi00$!slmi@ut.ac.ir'),(2,'ahmnd.nme_1983@gmail.com'),(3,'ahmnd.nme_1983@gmail.com'),(4,'ahmnd.nme_1983@gmail.com'),(5,'ahmnd.nme_1983@gmail.com'),(6,'ahmnd.nme_1983@gmail.com');
/*!40000 ALTER TABLE `main_newsletter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `robots_rule`
--

DROP TABLE IF EXISTS `robots_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `robots_rule` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `robot` varchar(255) NOT NULL,
  `crawl_delay` decimal(3,1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `robots_rule`
--

LOCK TABLES `robots_rule` WRITE;
/*!40000 ALTER TABLE `robots_rule` DISABLE KEYS */;
INSERT INTO `robots_rule` VALUES (1,'*',NULL);
/*!40000 ALTER TABLE `robots_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `robots_rule_allowed`
--

DROP TABLE IF EXISTS `robots_rule_allowed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `robots_rule_allowed` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `rule_id` bigint NOT NULL,
  `url_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `robots_rule_allowed_rule_id_url_id_83b262d4_uniq` (`rule_id`,`url_id`),
  KEY `robots_rule_allowed_url_id_6157f60a_fk` (`url_id`),
  CONSTRAINT `robots_rule_allowed_rule_id_aa90358c_fk` FOREIGN KEY (`rule_id`) REFERENCES `robots_rule` (`id`),
  CONSTRAINT `robots_rule_allowed_url_id_6157f60a_fk` FOREIGN KEY (`url_id`) REFERENCES `robots_url` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `robots_rule_allowed`
--

LOCK TABLES `robots_rule_allowed` WRITE;
/*!40000 ALTER TABLE `robots_rule_allowed` DISABLE KEYS */;
INSERT INTO `robots_rule_allowed` VALUES (1,1,1);
/*!40000 ALTER TABLE `robots_rule_allowed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `robots_rule_disallowed`
--

DROP TABLE IF EXISTS `robots_rule_disallowed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `robots_rule_disallowed` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `rule_id` bigint NOT NULL,
  `url_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `robots_rule_disallowed_rule_id_url_id_4d9b6222_uniq` (`rule_id`,`url_id`),
  KEY `robots_rule_disallowed_url_id_8e02db92_fk` (`url_id`),
  CONSTRAINT `robots_rule_disallowed_rule_id_fad7328c_fk` FOREIGN KEY (`rule_id`) REFERENCES `robots_rule` (`id`),
  CONSTRAINT `robots_rule_disallowed_url_id_8e02db92_fk` FOREIGN KEY (`url_id`) REFERENCES `robots_url` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `robots_rule_disallowed`
--

LOCK TABLES `robots_rule_disallowed` WRITE;
/*!40000 ALTER TABLE `robots_rule_disallowed` DISABLE KEYS */;
INSERT INTO `robots_rule_disallowed` VALUES (1,1,2);
/*!40000 ALTER TABLE `robots_rule_disallowed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `robots_rule_sites`
--

DROP TABLE IF EXISTS `robots_rule_sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `robots_rule_sites` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `rule_id` bigint NOT NULL,
  `site_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `robots_rule_sites_rule_id_site_id_093f04ea_uniq` (`rule_id`,`site_id`),
  KEY `robots_rule_sites_site_id_efe5be97_fk_django_site_id` (`site_id`),
  CONSTRAINT `robots_rule_sites_rule_id_7921a799_fk` FOREIGN KEY (`rule_id`) REFERENCES `robots_rule` (`id`),
  CONSTRAINT `robots_rule_sites_site_id_efe5be97_fk_django_site_id` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `robots_rule_sites`
--

LOCK TABLES `robots_rule_sites` WRITE;
/*!40000 ALTER TABLE `robots_rule_sites` DISABLE KEYS */;
INSERT INTO `robots_rule_sites` VALUES (1,1,2);
/*!40000 ALTER TABLE `robots_rule_sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `robots_url`
--

DROP TABLE IF EXISTS `robots_url`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `robots_url` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `pattern` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `robots_url`
--

LOCK TABLES `robots_url` WRITE;
/*!40000 ALTER TABLE `robots_url` DISABLE KEYS */;
INSERT INTO `robots_url` VALUES (1,'/*'),(2,'/admin');
/*!40000 ALTER TABLE `robots_url` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taggit_tag`
--

DROP TABLE IF EXISTS `taggit_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taggit_tag` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taggit_tag`
--

LOCK TABLES `taggit_tag` WRITE;
/*!40000 ALTER TABLE `taggit_tag` DISABLE KEYS */;
INSERT INTO `taggit_tag` VALUES (1,'water storage','water-storage'),(2,'dams','dams'),(3,'irrigation','irrigation'),(4,'AI','ai'),(5,'It','it'),(6,'autonomous cars','autonomous-cars'),(7,'infections','infections'),(8,'genome','genome'),(9,'Proteins','proteins'),(10,'Machine Learning','machine-learning'),(11,'plant-based','plant-based'),(12,'diet','diet'),(13,'plant-based diets','plant-based-diets'),(14,'sustainability','sustainability');
/*!40000 ALTER TABLE `taggit_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taggit_taggeditem`
--

DROP TABLE IF EXISTS `taggit_taggeditem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taggit_taggeditem` (
  `id` int NOT NULL AUTO_INCREMENT,
  `object_id` int NOT NULL,
  `content_type_id` int NOT NULL,
  `tag_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `taggit_taggeditem_content_type_id_object_id_tag_id_4bb97a8e_uniq` (`content_type_id`,`object_id`,`tag_id`),
  KEY `taggit_taggeditem_tag_id_f4f5b767_fk_taggit_tag_id` (`tag_id`),
  KEY `taggit_taggeditem_object_id_e2d7d1df` (`object_id`),
  KEY `taggit_taggeditem_content_type_id_object_id_196cc965_idx` (`content_type_id`,`object_id`),
  CONSTRAINT `taggit_taggeditem_content_type_id_9957a03c_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `taggit_taggeditem_tag_id_f4f5b767_fk_taggit_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `taggit_tag` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taggit_taggeditem`
--

LOCK TABLES `taggit_taggeditem` WRITE;
/*!40000 ALTER TABLE `taggit_taggeditem` DISABLE KEYS */;
INSERT INTO `taggit_taggeditem` VALUES (11,2,12,4),(9,2,12,9),(10,2,12,10),(15,3,12,13),(16,3,12,14),(12,4,12,9),(8,12,12,7),(7,12,12,8),(4,13,12,4),(5,13,12,5),(6,13,12,6),(1,14,12,1),(2,14,12,2),(3,14,12,3);
/*!40000 ALTER TABLE `taggit_taggeditem` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-15 18:01:42
