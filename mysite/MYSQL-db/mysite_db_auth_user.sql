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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$390000$ATxozhKDzwAzohWYeNmF7G$BLPFCHl9mBfsQkXRyewuOkae+q7WaF4Mchmba8wT0M4=','2022-11-28 13:18:56.445094',1,'razi','','','',1,1,'2022-11-07 07:31:01.546826'),(2,'pbkdf2_sha256$260000$l9Pv4FKEMBs9mLYnuwPRqe$O1Eq8qfffua7boG2uecJogo3CsK19uY8DSxYYfnMJEc=','2022-11-07 13:10:26.492000',0,'shima_alavi','','','',0,1,'2022-11-07 12:43:59.130242'),(3,'pbkdf2_sha256$260000$vo4KKTwKqhlq4RbC4DjTAt$Rgvo+UGK1fPAstqpZd51YEAJ9BrMuYkbRn+usXPQ04s=',NULL,0,'morteza1995','','','',0,1,'2022-11-07 12:48:13.636313'),(4,'pbkdf2_sha256$260000$3gwNi70ZggCvFs6Uofaqi1$NarsNfdlWQT8oSuupQQYCxb9bTI3q+4Lu8MiluTCQfg=',NULL,0,'morteza_1995','','','',0,1,'2022-11-07 13:06:36.159512'),(5,'pbkdf2_sha256$260000$F1i0irUBufbVjUnFPamJ2I$gOc4TvjgmcK6gR3CyhVGaqBHMxtbUdG80mudswA4Soo=',NULL,0,'morteza++1995','','','',0,1,'2022-11-07 13:12:10.477386'),(6,'pbkdf2_sha256$260000$9QtSHGYlgThozFcecbyFyE$GMYtga8mwWB6/2uWf49KDWPV3EWkntk9f7pPDyIlAMk=','2022-11-07 13:50:34.954852',0,'farzaneh2000','','','',0,1,'2022-11-07 13:25:40.721687'),(7,'pbkdf2_sha256$260000$3sKVHzqt98SPW5KP0uF3wn$uH8XSxB2sWjp1XPVwc6VOVD6mCEN6gP2sPfzBCCsjj0=','2022-11-07 13:28:35.779793',0,'mohammad2005','','','',0,1,'2022-11-07 13:28:12.876809'),(8,'pbkdf2_sha256$260000$HUBqfnHRO2zfbGb4oKs0Nt$npxEfkDcW5hLk5zdwD/E2j+CeuUSqm+s3VgaGBJ1qRE=','2022-11-07 13:32:07.532800',0,'bijan1998++','','','',0,1,'2022-11-07 13:30:57.999607'),(9,'pbkdf2_sha256$260000$tAtvCxOgmDga8CaTsOihs7$7GlTXkBHwdD0jzNZIpGiP/jIpG2UnTVsH02gkVJP61k=','2022-11-07 13:47:36.795480',0,'fatemeh','','','',0,1,'2022-11-07 13:46:07.667792');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-29 16:31:02
