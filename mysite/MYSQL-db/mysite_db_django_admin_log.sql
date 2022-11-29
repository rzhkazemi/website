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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2022-11-12 10:18:46.752161','1','Programming',1,'[{\"added\": {}}]',10,1),(2,'2022-11-12 10:18:56.832380','2','Python',1,'[{\"added\": {}}]',10,1),(3,'2022-11-12 10:19:43.258851','1','All the (Internet of) Things',1,'[{\"added\": {}}]',12,1),(4,'2022-11-12 10:20:05.623697','1','PostGallery object (1)',1,'[{\"added\": {}}]',13,1),(5,'2022-11-15 20:04:12.093911','2','Python',3,'',10,1),(6,'2022-11-15 20:04:12.182063','1','Programming',3,'',10,1),(7,'2022-11-15 20:05:14.993974','3','programming',1,'[{\"added\": {}}]',10,1),(8,'2022-11-15 20:05:18.046238','1','All the (Internet of) Things',2,'[{\"changed\": {\"fields\": [\"Category\"]}}]',12,1),(9,'2022-11-16 08:04:46.870942','3','programming',3,'',10,1),(10,'2022-11-16 08:04:57.071155','4','Tech',1,'[{\"added\": {}}]',10,1),(11,'2022-11-16 08:05:07.912633','5','Health',1,'[{\"added\": {}}]',10,1),(12,'2022-11-16 08:05:19.361024','6','Society',1,'[{\"added\": {}}]',10,1),(13,'2022-11-16 08:05:54.174748','7','Environment',1,'[{\"added\": {}}]',10,1),(14,'2022-11-16 08:06:07.586860','4','Technology',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',10,1),(15,'2022-11-16 19:25:58.376983','1','PostGallery object (1)',3,'',13,1),(16,'2022-11-16 19:29:27.010557','1','All the (Internet of) Things',3,'',12,1),(17,'2022-11-21 13:51:36.695213','2','127.0.0.1:8000',1,'[{\"added\": {}}]',16,1),(18,'2022-11-22 13:21:23.144600','1','/*',1,'[{\"added\": {}}]',18,1),(19,'2022-11-22 13:21:47.995291','2','/admin',1,'[{\"added\": {}}]',18,1),(20,'2022-11-22 13:22:09.680077','1','*',1,'[{\"added\": {}}]',17,1),(21,'2022-11-23 07:37:05.849795','14','Dams could play a big role in feeding the world more sustainably',2,'[{\"changed\": {\"fields\": [\"Tags\"]}}]',12,1),(22,'2022-11-23 07:38:38.083203','13','Helping autonomous vehicles navigate tricky highway merges',2,'[{\"changed\": {\"fields\": [\"Tags\"]}}]',12,1),(23,'2022-11-23 07:39:17.798679','12','Ancient viral DNA in human genome guards against infections',2,'[{\"changed\": {\"fields\": [\"Tags\"]}}]',12,1),(24,'2022-11-23 07:40:21.056318','2','Beyond AlphaFold: A.I. excels at creating new proteins',2,'[{\"changed\": {\"fields\": [\"Tags\"]}}]',12,1),(25,'2022-11-23 07:54:27.833360','4','The chemical controlling life and death in hair follicles',2,'[{\"changed\": {\"fields\": [\"Tags\"]}}]',12,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-29 16:31:04
