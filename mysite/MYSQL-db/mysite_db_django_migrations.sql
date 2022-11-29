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
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2022-11-07 07:27:37.501870'),(2,'auth','0001_initial','2022-11-07 07:28:13.846230'),(3,'admin','0001_initial','2022-11-07 07:28:20.389001'),(4,'admin','0002_logentry_remove_auto_add','2022-11-07 07:28:20.512353'),(5,'admin','0003_logentry_add_action_flag_choices','2022-11-07 07:28:20.640336'),(6,'contenttypes','0002_remove_content_type_name','2022-11-07 07:28:24.055111'),(7,'auth','0002_alter_permission_name_max_length','2022-11-07 07:28:26.414496'),(8,'auth','0003_alter_user_email_max_length','2022-11-07 07:28:27.158621'),(9,'auth','0004_alter_user_username_opts','2022-11-07 07:28:27.317395'),(10,'auth','0005_alter_user_last_login_null','2022-11-07 07:28:29.428762'),(11,'auth','0006_require_contenttypes_0002','2022-11-07 07:28:29.543789'),(12,'auth','0007_alter_validators_add_error_messages','2022-11-07 07:28:29.717715'),(13,'auth','0008_alter_user_username_max_length','2022-11-07 07:28:34.016774'),(14,'auth','0009_alter_user_last_name_max_length','2022-11-07 07:28:38.870964'),(15,'auth','0010_alter_group_name_max_length','2022-11-07 07:28:39.425153'),(16,'auth','0011_update_proxy_permissions','2022-11-07 07:28:39.633387'),(17,'auth','0012_alter_user_first_name_max_length','2022-11-07 07:28:44.507098'),(18,'sessions','0001_initial','2022-11-07 07:28:49.496115'),(19,'blog','0001_initial','2022-11-07 18:17:51.784975'),(20,'blog','0002_newsletter','2022-11-08 06:36:33.983468'),(21,'django_summernote','0001_initial','2022-11-11 09:12:12.020626'),(22,'django_summernote','0002_update-help_text','2022-11-11 09:12:12.310109'),(23,'blog','0003_auto_20221112_0945','2022-11-12 09:45:49.455949'),(24,'django_summernote','0003_alter_attachment_id','2022-11-12 09:45:51.646473'),(25,'main','0001_initial','2022-11-12 09:45:53.500371'),(26,'blog','0004_post_publish_date','2022-11-17 08:25:18.125231'),(27,'sites','0001_initial','2022-11-21 13:49:49.094089'),(28,'sites','0002_alter_domain_unique','2022-11-21 13:49:50.321802'),(29,'robots','0001_initial','2022-11-22 13:18:18.895850'),(30,'robots','0002_alter_id_fields','2022-11-22 13:18:51.388493'),(31,'taggit','0001_initial','2022-11-22 16:05:45.220486'),(32,'taggit','0002_auto_20150616_2121','2022-11-22 16:05:46.414342'),(33,'taggit','0003_taggeditem_add_unique_index','2022-11-22 16:05:47.309845'),(34,'taggit','0004_alter_taggeditem_content_type_alter_taggeditem_tag','2022-11-22 16:05:47.522246'),(35,'taggit','0005_auto_20220424_2025','2022-11-22 16:05:47.612855'),(36,'blog','0005_post_tags','2022-11-22 16:05:47.734356'),(37,'captcha','0001_initial','2022-11-25 16:16:20.141228'),(38,'captcha','0002_alter_captchastore_id','2022-11-25 16:16:20.590542');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-29 16:30:58
