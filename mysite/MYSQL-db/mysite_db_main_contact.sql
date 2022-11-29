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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_contact`
--

LOCK TABLES `main_contact` WRITE;
/*!40000 ALTER TABLE `main_contact` DISABLE KEYS */;
INSERT INTO `main_contact` VALUES (1,'nemaee','ahmnd.nme_1983@gmail.com','test','test','2022-11-26 14:30:48.147143','2022-11-26 14:30:48.147202'),(2,'tehrani','tehrani.sadaf-169756@hotmail.com','test','test','2022-11-26 14:33:25.335034','2022-11-26 14:33:25.335095'),(3,'smadi','SmD.hajar@yahoo.com','test','test','2022-11-26 14:37:10.315924','2022-11-26 14:37:10.315987'),(4,'tina','shahravi.tina@gmail.com','test','test','2022-11-27 11:04:01.541582','2022-11-27 11:04:01.541653'),(5,'sepideh','tavanasepideh1994@yahoo.com','test','test','2022-11-27 11:08:26.720413','2022-11-27 11:08:26.720474'),(6,'farid','azami_767@yahoo.com','test','test','2022-11-27 11:26:05.740434','2022-11-27 11:26:05.740495'),(7,'mobina','karimi_mobina@gmail.com','test','test','2022-11-28 07:32:04.256971','2022-11-28 07:32:04.257033'),(8,'mobina','karimi_mobina@gmail.com','test','test','2022-11-28 07:35:57.090560','2022-11-28 07:35:57.090707'),(9,'taheri','shva*_taheri@gmail.com','test','test','2022-11-28 09:15:19.061934','2022-11-28 09:15:19.062004'),(10,'hamidreza','tavana-hamidreza@yahoo.com','test','test','2022-11-28 09:18:07.496843','2022-11-28 09:18:07.496902'),(11,'alireza','saeedi7849@gmail.com','test','test','2022-11-28 12:28:03.663669','2022-11-28 12:28:03.663745');
/*!40000 ALTER TABLE `main_contact` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-29 16:30:45
