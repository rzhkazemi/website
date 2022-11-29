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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_comment`
--

LOCK TABLES `blog_comment` WRITE;
/*!40000 ALTER TABLE `blog_comment` DISABLE KEYS */;
INSERT INTO `blog_comment` VALUES (1,'sahar','FaZelitabar1991@yahoo.com','','salam',1,'2022-11-26 10:36:15.130564','2022-11-26 10:36:15.130635',2),(2,'mayha','abedini__mayha@yahoo.com','','thanks',1,'2022-11-26 11:02:49.063782','2022-11-26 11:02:49.063841',2),(3,'zohre','karami.zohi1989@gmail.com','','that\'s really nice',1,'2022-11-26 12:06:29.044298','2022-11-26 12:06:29.044358',3),(4,'saeed','sAeeDRezaee@gmail.com','','salam',0,'2022-11-26 12:14:27.634106','2022-11-26 12:14:27.634178',3),(5,'leli','azari.lily1111@yahoo.com','','merci',0,'2022-11-26 12:17:30.865220','2022-11-26 12:17:30.865279',3),(6,'sobhan','sobhani-sobhan1993@gmail.com','','test',0,'2022-11-26 13:41:35.292021','2022-11-26 13:41:35.292080',14),(7,'prisa','naghavi.pari900763@yahoo.com','','excellent',1,'2022-11-26 13:44:50.950928','2022-11-26 13:44:50.950988',11),(8,'prisa','naghavi.pari900763@yahoo.com','','excellent',0,'2022-11-26 13:45:30.559713','2022-11-26 13:45:30.559774',11),(9,'prisa','naghavi.pari900763@yahoo.com','','excellent',0,'2022-11-26 13:45:42.535351','2022-11-26 13:45:42.535404',11),(10,'nimaee','ahmnd.nme_1983@gmail.com','','salam',1,'2022-11-26 14:21:29.634757','2022-11-26 14:21:29.634818',11),(11,'hadis','seraj-HaDiS@yahoo.com','','fantastic',1,'2022-11-26 14:25:22.182167','2022-11-26 14:25:22.182233',13),(12,'nasiri','nasiri1583.laleh@yahoo.com','','test',1,'2022-11-27 11:30:42.881476','2022-11-27 11:30:42.881536',2),(13,'gholamreza','fathi.ghmz@gmail.com','','test',0,'2022-11-27 11:36:19.019021','2022-11-27 11:36:19.019086',11),(14,'ghaffari','ghaffari.taraneh12@yahoo.com','','test',0,'2022-11-27 12:14:41.607936','2022-11-27 12:14:41.607995',11),(15,'amir','qasemi-129497@gmail.com','','test',0,'2022-11-27 13:28:19.670042','2022-11-27 13:28:19.670100',11),(16,'saeed','sAeeDRezaee@gmail.com','','tttt',0,'2022-11-27 13:35:42.638645','2022-11-27 13:35:42.638910',11),(17,'zohre','karami.zohi1989@gmail.com','','tttt',0,'2022-11-27 13:37:47.161456','2022-11-27 13:37:47.161520',11),(18,'taheri','taheri_shva@gmail.com','','test',0,'2022-11-28 09:53:54.231956','2022-11-28 09:53:54.232015',2),(19,'taheri','taheri_shva@gmail.com','','test',0,'2022-11-28 09:57:28.423919','2022-11-28 09:57:28.423980',2),(20,'taheri','taheri_shva@gmail.com','','test',0,'2022-11-28 10:11:10.307928','2022-11-28 10:11:10.307989',2),(21,'razi','rzh.kzm@gmail.com','','test',0,'2022-11-28 10:50:40.383688','2022-11-28 10:50:40.383749',2),(22,'razi','rzh.kzm@gmail.com','','test',0,'2022-11-28 10:57:34.527967','2022-11-28 10:57:34.528026',2);
/*!40000 ALTER TABLE `blog_comment` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-29 16:31:03
