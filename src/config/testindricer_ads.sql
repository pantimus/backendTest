-- MySQL dump 10.13  Distrib 8.0.11, for Win64 (x86_64)
--
-- Host: localhost    Database: testindricer
-- ------------------------------------------------------
-- Server version	8.0.11

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ads`
--

DROP TABLE IF EXISTS `ads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ads` (
  `id_ad` int(11) NOT NULL AUTO_INCREMENT,
  `ad_title` varchar(200) NOT NULL,
  `ad_desc` varchar(1000) NOT NULL,
  `ad_pic` json NOT NULL,
  `ad_data` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_ad`),
  UNIQUE KEY `id_ad_UNIQUE` (`id_ad`)
) ENGINE=InnoDB AUTO_INCREMENT=153 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads`
--

LOCK TABLES `ads` WRITE;
/*!40000 ALTER TABLE `ads` DISABLE KEYS */;
INSERT INTO `ads` VALUES (1,'Хлеб','Купи хлеб','[\"https://avatars.mds.yandex.net/get-pdb/2301590/a92c498e-7910-4b77-b246-2afa0e5943fd/s375\", \"https://avatars.mds.yandex.net/get-pdb/2301590/a92c498e-7910-4b77-b246-2afa0e5943fd/s375\", \"https://avatars.mds.yandex.net/get-pdb/2301590/a92c498e-7910-4b77-b246-2afa0e5943fd/s375\"]','2020-07-22 17:06:37'),(2,'Хлеб','Купи еще','[\"https://avatars.mds.yandex.net/get-pdb/2301590/a92c498e-7910-4b77-b246-2afa0e5943fd/s375\", \"https://avatars.mds.yandex.net/get-pdb/2301590/a92c498e-7910-4b77-b246-2afa0e5943fd/s375\", \"https://avatars.mds.yandex.net/get-pdb/2301590/a92c498e-7910-4b77-b246-2afa0e5943fd/s375\"]','2020-07-22 17:06:37'),(3,'PS5 Plus','Купи скайрим','[\"https://avatars.mds.yandex.net/get-pdb/2301590/a92c498e-7910-4b77-b246-2afa0e5943fd/s375\", \"https://avatars.mds.yandex.net/get-pdb/2301590/a92c498e-7910-4b77-b246-2afa0e5943fd/s375\", \"https://avatars.mds.yandex.net/get-pdb/2301590/a92c498e-7910-4b77-b246-2afa0e5943fd/s375\"]','2020-07-22 17:08:08'),(4,'Пиво','Холодное','[\"https://avatars.mds.yandex.net/get-pdb/2301590/a92c498e-7910-4b77-b246-2afa0e5943fd/s375\", \"https://avatars.mds.yandex.net/get-pdb/2301590/a92c498e-7910-4b77-b246-2afa0e5943fd/s375\", \"https://avatars.mds.yandex.net/get-pdb/2301590/a92c498e-7910-4b77-b246-2afa0e5943fd/s375\"]','2020-07-23 10:43:35'),(5,'Пиво','Холодное','[\"https://avatars.mds.yandex.net/get-pdb/2301590/a92c498e-7910-4b77-b246-2afa0e5943fd/s375\", \"https://avatars.mds.yandex.net/get-pdb/2301590/a92c498e-7910-4b77-b246-2afa0e5943fd/s375\", \"https://avatars.mds.yandex.net/get-pdb/2301590/a92c498e-7910-4b77-b246-2afa0e5943fd/s375\"]','2020-07-23 10:43:42'),(6,'Пиво','Холодное','[\"https://avatars.mds.yandex.net/get-pdb/2301590/a92c498e-7910-4b77-b246-2afa0e5943fd/s375\", \"https://avatars.mds.yandex.net/get-pdb/2301590/a92c498e-7910-4b77-b246-2afa0e5943fd/s375\", \"https://avatars.mds.yandex.net/get-pdb/2301590/a92c498e-7910-4b77-b246-2afa0e5943fd/s375\"]','2020-07-23 10:43:43'),(65,'34','3434','[\"https://avatars.mds.yandex.net/get-pdb/2301590/a92c498e-7910-4b77-b246-2afa0e5943fd/s375\"]','2020-07-26 03:34:12'),(112,'PS3  Super Slim','Плейстешн 3 купи его.','[\"https://img.mvideo.ru/Pdb/40052284b.jpg\"]','2020-07-26 18:00:30'),(113,'PS3  Super Slim','asdasdasd','[\"https://img.mvideo.ru/Pdb/40052284b.jpg\"]','2020-07-26 18:05:03'),(114,'PS3  Super Slim','asdasdasdasd','[\"https://img.mvideo.ru/Pdb/40052284b.jpg\", \"https://img.mvideo.ru/Pdb/40052284b.jpg\", \"https://img.mvideo.ru/Pdb/40052284b.jpg\"]','2020-07-26 18:16:30');
/*!40000 ALTER TABLE `ads` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-27 14:59:41
