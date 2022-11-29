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
-- Table structure for table `blog_postgallery`
--

DROP TABLE IF EXISTS `blog_postgallery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog_postgallery` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `post_image_name` varchar(100) NOT NULL,
  `post_id` bigint NOT NULL,
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
INSERT INTO `blog_postgallery` VALUES (2,'images/post/gallery/Q8I3H7_1.png',2),(3,'images/post/gallery/Q8W3K0.png',2),(4,'images/post/gallery/IMG_4841.jpg',3),(5,'images/post/gallery/images.jpeg',3),(6,'images/post/gallery/hairFol-1024x720.jpg',4),(7,'images/post/gallery/index.jpeg',4),(8,'images/post/gallery/AI_forest.jpeg',5),(9,'images/post/gallery/621f9db036bafa517008eb78_min_slide-backgund_1.png',5),(10,'images/post/gallery/climatesmart-agriculture-1-638.jpg',6),(11,'images/post/gallery/Schermafbeelding-2021-07-22-om-07.51.35.png',6),(12,'images/post/gallery/2be6cddb-7f65-4881-a122-f260d7c4ecd6.webp',6),(13,'images/post/gallery/download-65-1.jpg',7),(14,'images/post/gallery/Noise_2000x1125.jpg',7),(15,'images/post/gallery/Energy-efficiency.jpg',8),(16,'images/post/gallery/shutterstock_1492626947.jpg',9),(17,'images/post/gallery/data_breach.jpeg',10),(18,'images/post/gallery/DNA.jpg',12),(19,'images/post/gallery/Autonomous-Vehicles-1080x675-1.jpg',13),(20,'images/post/gallery/NSRS_Srisailam_Dam.jpg',14);
/*!40000 ALTER TABLE `blog_postgallery` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-29 16:30:57
