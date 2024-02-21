CREATE DATABASE  IF NOT EXISTS `seguros_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `seguros_db`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: seguros_db
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `analisis_orina`
--

DROP TABLE IF EXISTS `analisis_orina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `analisis_orina` (
  `id_analisis_s` int unsigned NOT NULL AUTO_INCREMENT,
  `DNI` int DEFAULT NULL,
  `id_seguro` int DEFAULT NULL,
  `id_inst` int DEFAULT NULL,
  `hematies` int DEFAULT NULL,
  `leucocitos` int DEFAULT NULL,
  `cristales` varchar(45) DEFAULT NULL,
  `epiteliales` varchar(45) DEFAULT NULL,
  `cilindros` varchar(45) DEFAULT NULL,
  `germenes` varchar(45) DEFAULT NULL,
  `mocus` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_analisis_s`),
  UNIQUE KEY `id_analisis_s_UNIQUE` (`id_analisis_s`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `analisis_orina`
--

LOCK TABLES `analisis_orina` WRITE;
/*!40000 ALTER TABLE `analisis_orina` DISABLE KEYS */;
INSERT INTO `analisis_orina` VALUES (1,32408281,471,776,5,12,'47','Abundantes','Se observan','No se observan','Se observan'),(2,30954371,3993,776,4,15,'39','Normal','Se observan','Se observan','Se observan'),(3,10484173,7699,776,5,13,'39','Escasas','No se observan','No se observan','Se observan'),(4,24313407,5673,776,4,13,'42','Escasas','No se observan','No se observan','No se observan'),(5,30954371,3993,776,4,14,'43','Normal','Se observan','No se observan','Se observan'),(6,2101411,4634,776,4,14,'46','Abundantes','Se observan','No se observan','Se observan'),(7,24313407,5673,776,5,14,'39','Escasas','No se observan','Se observan','No se observan'),(8,8201738,2021,776,5,14,'44','Abundantes','Se observan','Se observan','Se observan'),(9,24313407,5673,776,5,12,'43','Escasas','No se observan','Se observan','Se observan'),(10,21055563,3979,776,5,15,'44','Normal','No se observan','No se observan','Se observan'),(11,10690610,4698,1101,5,13,'41','Escasas','Se observan','No se observan','No se observan'),(12,10008053,2179,1101,5,12,'38','Normal','Se observan','No se observan','Se observan'),(13,4020089,7746,1101,4,12,'39','Escasas','No se observan','No se observan','Se observan'),(14,30954371,3993,1101,5,13,'44','Escasas','No se observan','No se observan','Se observan'),(15,10008053,2179,1101,5,13,'45','Escasas','Se observan','No se observan','No se observan'),(16,21055563,3979,1101,5,15,'40','Normal','Se observan','Se observan','No se observan'),(17,22844894,4698,1101,4,13,'46','Escasas','No se observan','No se observan','No se observan'),(18,12716747,1688,1101,4,15,'40','Escasas','Se observan','No se observan','No se observan'),(19,10690610,4698,1101,5,13,'42','Normal','No se observan','No se observan','No se observan'),(20,10008053,2179,1101,5,14,'38','Normal','No se observan','No se observan','No se observan'),(21,27441537,6716,1364,5,12,'39','Normal','Se observan','Se observan','No se observan'),(22,28381701,6716,1364,5,15,'45','Abundantes','Se observan','No se observan','No se observan'),(23,10690610,4698,1364,4,12,'41','Escasas','Se observan','Se observan','No se observan'),(24,21055563,3979,1364,5,12,'41','Abundantes','Se observan','No se observan','No se observan'),(25,10690610,4698,1364,4,12,'38','Normal','No se observan','Se observan','No se observan'),(26,14281833,7746,1364,4,15,'45','Normal','Se observan','No se observan','No se observan'),(27,3174656,1586,1364,4,13,'48','Abundantes','Se observan','Se observan','Se observan'),(28,22844894,4698,1364,5,12,'41','Normal','Se observan','No se observan','Se observan'),(29,5583783,3979,1364,4,14,'46','Abundantes','No se observan','Se observan','Se observan'),(30,24313407,5673,1364,5,14,'39','Escasas','No se observan','Se observan','Se observan'),(31,24313407,5673,2068,5,14,'39','Escasas','No se observan','No se observan','Se observan'),(32,5583783,3979,2068,5,15,'41','Abundantes','No se observan','No se observan','No se observan'),(33,8033642,7746,2068,4,14,'45','Abundantes','No se observan','No se observan','Se observan'),(34,24313407,5673,2068,5,13,'38','Normal','Se observan','No se observan','No se observan'),(35,8033642,7746,2068,5,14,'46','Normal','No se observan','Se observan','Se observan'),(36,5583783,3979,2068,5,14,'40','Escasas','No se observan','Se observan','Se observan'),(37,27441537,6716,2068,4,12,'45','Normal','No se observan','Se observan','Se observan'),(38,28381701,6716,2068,4,15,'39','Normal','No se observan','No se observan','No se observan'),(39,8033642,7746,2068,4,15,'39','Normal','Se observan','No se observan','Se observan'),(40,14281833,7746,2068,5,12,'41','Normal','No se observan','Se observan','No se observan'),(41,3174656,1586,2746,4,14,'48','Abundantes','No se observan','No se observan','No se observan'),(42,5583783,3979,2746,5,15,'38','Normal','Se observan','No se observan','No se observan'),(43,28381701,6716,2746,5,13,'43','Abundantes','Se observan','Se observan','No se observan'),(44,8033642,7746,2746,4,12,'40','Abundantes','No se observan','No se observan','Se observan'),(45,32408281,471,2746,5,13,'46','Abundantes','Se observan','Se observan','No se observan'),(46,2101411,4634,2746,5,14,'46','Normal','Se observan','No se observan','Se observan'),(47,7209476,2179,2746,5,13,'39','Normal','No se observan','Se observan','Se observan'),(48,5583783,3979,2746,5,15,'47','Normal','Se observan','Se observan','Se observan'),(49,7209476,2179,2746,5,12,'42','Normal','Se observan','Se observan','No se observan'),(50,10484173,7699,2746,5,12,'48','Abundantes','Se observan','Se observan','Se observan'),(51,5583783,3979,2860,5,13,'40','Escasas','No se observan','Se observan','Se observan'),(52,21055563,3979,2860,4,13,'43','Escasas','Se observan','No se observan','Se observan'),(53,21055563,3979,2860,4,12,'48','Abundantes','Se observan','Se observan','No se observan'),(54,32408281,471,2860,4,15,'48','Escasas','No se observan','Se observan','No se observan'),(55,12716747,1688,2860,5,13,'38','Abundantes','Se observan','Se observan','Se observan'),(56,21220038,3993,2860,4,12,'46','Escasas','No se observan','Se observan','No se observan'),(57,10690610,4698,2860,5,13,'47','Abundantes','Se observan','No se observan','No se observan'),(58,30954371,3993,2860,5,12,'45','Normal','No se observan','No se observan','No se observan'),(59,5583783,3979,2860,4,15,'47','Normal','Se observan','Se observan','No se observan'),(60,30954371,3993,2860,4,14,'43','Normal','No se observan','No se observan','No se observan'),(61,10484173,7699,3426,5,15,'45','Normal','Se observan','Se observan','Se observan'),(62,24313407,5673,3426,4,13,'43','Escasas','Se observan','Se observan','No se observan'),(63,2101411,4634,3426,4,12,'46','Escasas','Se observan','No se observan','Se observan'),(64,24313407,5673,3426,5,15,'43','Abundantes','Se observan','Se observan','No se observan'),(65,30954371,3993,3426,4,12,'45','Escasas','No se observan','No se observan','No se observan'),(66,21055563,3979,3426,4,15,'38','Escasas','No se observan','Se observan','Se observan'),(67,2101411,4634,3426,5,12,'39','Normal','Se observan','No se observan','No se observan'),(68,27441537,6716,3426,5,13,'39','Abundantes','Se observan','Se observan','Se observan'),(69,10008053,2179,3426,4,14,'47','Abundantes','Se observan','No se observan','No se observan'),(70,12716747,1688,3426,4,14,'43','Escasas','Se observan','Se observan','No se observan'),(71,4020089,7746,4495,5,13,'47','Abundantes','No se observan','Se observan','Se observan'),(72,27441537,6716,4495,4,14,'42','Escasas','No se observan','No se observan','Se observan'),(73,10484173,7699,4495,4,15,'45','Escasas','No se observan','Se observan','No se observan'),(74,3174656,1586,4495,5,15,'46','Normal','No se observan','Se observan','Se observan'),(75,21220038,3993,4495,5,12,'39','Escasas','No se observan','No se observan','Se observan'),(76,22844894,4698,4495,5,15,'42','Escasas','No se observan','Se observan','No se observan'),(77,10690610,4698,4495,5,13,'43','Normal','No se observan','Se observan','Se observan'),(78,3174656,1586,4495,5,12,'43','Escasas','No se observan','Se observan','Se observan'),(79,28381701,6716,4495,5,14,'38','Escasas','No se observan','No se observan','Se observan'),(80,28381701,6716,4495,5,13,'41','Normal','No se observan','No se observan','Se observan'),(81,4020089,7746,6290,5,13,'39','Abundantes','Se observan','Se observan','Se observan'),(82,3174656,1586,6290,5,14,'41','Normal','Se observan','Se observan','Se observan'),(83,2101411,4634,6290,5,14,'40','Abundantes','Se observan','No se observan','Se observan'),(84,30954371,3993,6290,4,12,'38','Abundantes','Se observan','Se observan','No se observan'),(85,21220038,3993,6290,5,14,'47','Escasas','No se observan','Se observan','Se observan'),(86,8201738,2021,6290,5,14,'44','Normal','No se observan','Se observan','Se observan'),(87,12716747,1688,6290,4,13,'39','Escasas','No se observan','No se observan','Se observan'),(88,28381701,6716,6290,4,14,'45','Escasas','Se observan','No se observan','Se observan'),(89,27441537,6716,6290,5,13,'43','Escasas','Se observan','Se observan','No se observan'),(90,8201738,2021,6290,5,14,'48','Normal','Se observan','No se observan','No se observan'),(91,10008053,2179,8423,5,12,'43','Abundantes','No se observan','No se observan','Se observan'),(92,10008053,2179,8423,4,13,'40','Abundantes','Se observan','Se observan','No se observan'),(93,7209476,2179,8423,4,14,'44','Escasas','No se observan','No se observan','No se observan'),(94,28381701,6716,8423,5,13,'44','Normal','No se observan','Se observan','Se observan'),(95,7209476,2179,8423,5,15,'42','Abundantes','Se observan','Se observan','Se observan'),(96,2101411,4634,8423,5,13,'42','Escasas','No se observan','No se observan','Se observan'),(97,21055563,3979,8423,5,13,'38','Normal','Se observan','No se observan','Se observan'),(98,10008053,2179,8423,4,15,'40','Abundantes','No se observan','Se observan','No se observan'),(99,5583783,3979,8423,5,13,'45','Escasas','No se observan','No se observan','No se observan'),(100,10008053,2179,8423,4,15,'43','Normal','No se observan','No se observan','Se observan');
/*!40000 ALTER TABLE `analisis_orina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `analisis_sangre`
--

DROP TABLE IF EXISTS `analisis_sangre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `analisis_sangre` (
  `id_analisis_s` int unsigned NOT NULL AUTO_INCREMENT,
  `DNI` int DEFAULT NULL,
  `id_seguro` int DEFAULT NULL,
  `id_inst` int DEFAULT NULL,
  `hemoglobina` int DEFAULT NULL,
  `hematocritos` int DEFAULT NULL,
  `hematies` int DEFAULT NULL,
  `globulos blancos` int DEFAULT NULL,
  `neutrofilos` int DEFAULT NULL,
  `eosinofilos` int DEFAULT NULL,
  `basofilos` int DEFAULT NULL,
  `linfocitos` int DEFAULT NULL,
  `monocitos` int DEFAULT NULL,
  `mcv` int DEFAULT NULL,
  `hcm` int DEFAULT NULL,
  PRIMARY KEY (`id_analisis_s`),
  UNIQUE KEY `id_analisis_s_UNIQUE` (`id_analisis_s`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `analisis_sangre`
--

LOCK TABLES `analisis_sangre` WRITE;
/*!40000 ALTER TABLE `analisis_sangre` DISABLE KEYS */;
INSERT INTO `analisis_sangre` VALUES (1,2101411,4634,776,14,44,5,9,0,41,5,0,38,11,91),(2,2101411,4634,776,15,46,5,8,1,24,3,1,39,11,87),(3,2101411,4634,776,14,42,5,4,2,62,9,1,25,6,89),(4,2101411,4634,776,12,40,5,10,0,65,8,1,31,10,94),(5,2101411,4634,776,12,41,5,8,5,16,8,1,24,9,92),(6,3174656,1586,776,14,43,5,8,1,74,9,0,33,6,99),(7,3174656,1586,776,12,38,5,7,1,26,6,0,44,10,97),(8,3174656,1586,776,14,44,5,5,1,79,9,0,23,7,86),(9,3174656,1586,776,12,41,4,7,3,19,3,1,38,6,94),(10,3174656,1586,776,14,44,5,8,4,69,9,0,32,6,87),(11,4020089,7746,1101,15,47,4,6,2,17,7,0,41,10,87),(12,4020089,7746,1101,15,38,4,6,1,30,9,1,37,7,96),(13,4020089,7746,1101,14,45,5,9,1,43,5,1,28,9,87),(14,4020089,7746,1101,14,46,5,8,3,87,0,0,35,9,92),(15,4020089,7746,1101,14,47,5,8,2,50,1,1,46,10,87),(16,5583783,3979,1101,15,38,4,9,4,8,1,0,22,9,95),(17,5583783,3979,1101,13,41,5,9,1,11,8,1,37,8,88),(18,5583783,3979,1101,12,42,4,4,3,13,7,1,22,11,94),(19,5583783,3979,1101,15,45,4,7,0,83,1,1,39,7,90),(20,5583783,3979,1101,12,48,4,9,2,7,6,0,45,12,84),(21,7209476,2179,1364,15,45,4,5,1,40,8,1,44,5,88),(22,7209476,2179,1364,14,48,5,5,3,88,2,1,22,7,87),(23,7209476,2179,1364,13,46,5,9,4,79,5,0,39,11,91),(24,7209476,2179,1364,14,41,4,4,5,18,7,1,43,8,96),(25,7209476,2179,1364,14,40,4,5,4,5,9,0,43,5,92),(26,8033642,7746,1364,14,46,4,6,5,43,9,1,42,5,97),(27,8033642,7746,1364,15,41,4,9,0,92,8,0,41,9,96),(28,8033642,7746,1364,14,44,4,10,1,90,0,0,41,6,90),(29,8033642,7746,1364,13,48,5,6,5,73,1,1,37,10,86),(30,8033642,7746,1364,12,48,5,10,2,63,6,0,39,7,90),(31,8201738,2021,2068,12,48,5,9,3,68,2,0,31,12,85),(32,8201738,2021,2068,14,48,5,8,1,54,5,0,32,10,98),(33,8201738,2021,2068,15,40,4,9,0,74,9,1,31,6,84),(34,8201738,2021,2068,14,40,4,9,4,91,2,1,43,11,84),(35,8201738,2021,2068,13,43,4,4,1,22,6,1,38,11,89),(36,10008053,2179,2068,13,44,4,9,5,7,8,0,27,12,92),(37,10008053,2179,2068,13,45,5,4,5,43,6,1,25,11,88),(38,10008053,2179,2068,12,43,5,9,0,83,1,1,21,9,84),(39,10008053,2179,2068,13,43,4,8,4,43,7,0,21,11,85),(40,10008053,2179,2068,12,48,5,9,4,28,2,0,37,12,97),(41,10484173,7699,2746,13,41,4,10,0,86,9,0,31,10,90),(42,10484173,7699,2746,12,40,5,9,3,52,9,1,30,11,99),(43,10484173,7699,2746,14,48,5,5,3,74,3,0,31,10,93),(44,10484173,7699,2746,12,40,4,6,3,40,7,1,25,9,86),(45,10484173,7699,2746,12,45,4,5,2,37,9,0,42,9,92),(46,10690610,4698,2746,12,41,4,7,2,95,2,0,38,11,94),(47,10690610,4698,2746,14,44,4,9,0,74,3,1,39,10,96),(48,10690610,4698,2746,14,42,5,7,1,65,8,0,34,5,84),(49,10690610,4698,2746,13,44,4,10,5,64,0,0,24,10,94),(50,10690610,4698,2746,15,43,5,5,2,73,8,1,35,7,88),(51,12716747,1688,2860,14,39,4,7,3,6,9,1,42,6,98),(52,12716747,1688,2860,15,41,5,5,2,14,9,0,36,10,94),(53,12716747,1688,2860,12,48,5,5,5,20,3,1,26,12,93),(54,12716747,1688,2860,13,44,5,7,5,13,4,0,40,6,97),(55,12716747,1688,2860,13,39,5,8,5,29,3,0,29,8,86),(56,14281833,7746,2860,14,45,5,4,1,55,2,0,32,6,91),(57,14281833,7746,2860,12,46,4,7,0,25,1,1,38,11,90),(58,14281833,7746,2860,15,47,4,9,5,46,1,1,23,8,95),(59,14281833,7746,2860,15,47,5,7,3,67,7,1,31,7,90),(60,14281833,7746,2860,13,45,4,6,0,78,2,0,24,10,93),(61,21055563,3979,3426,12,38,4,6,0,33,7,1,44,8,95),(62,21055563,3979,3426,12,38,5,4,5,99,1,1,41,12,97),(63,21055563,3979,3426,15,43,5,5,4,69,3,0,40,5,90),(64,21055563,3979,3426,15,43,4,9,0,50,1,0,46,10,86),(65,21055563,3979,3426,15,40,4,7,4,66,4,0,30,6,93),(66,21220038,3993,3426,13,42,5,8,2,90,2,1,27,5,89),(67,21220038,3993,3426,12,42,5,9,2,91,9,1,26,11,90),(68,21220038,3993,3426,15,48,4,10,1,4,2,1,24,8,93),(69,21220038,3993,3426,14,45,4,7,0,51,1,0,40,12,98),(70,21220038,3993,3426,14,43,4,10,0,26,3,1,28,7,86),(71,22844894,4698,4495,13,39,5,10,1,20,4,1,31,7,97),(72,22844894,4698,4495,12,38,5,5,4,34,6,1,34,6,99),(73,22844894,4698,4495,13,43,4,10,4,57,8,1,42,5,86),(74,22844894,4698,4495,14,42,5,6,1,3,2,0,44,10,86),(75,22844894,4698,4495,13,47,4,9,4,81,7,1,37,9,99),(76,24313407,5673,4495,15,45,5,9,0,27,7,1,35,8,97),(77,24313407,5673,4495,14,48,4,8,1,67,8,1,22,5,89),(78,24313407,5673,4495,14,38,5,7,2,39,1,1,28,5,99),(79,24313407,5673,4495,13,46,4,8,1,46,7,1,46,7,84),(80,24313407,5673,4495,12,45,4,10,0,25,4,0,38,9,90),(81,27441537,6716,6290,12,43,4,8,1,35,0,1,35,10,93),(82,27441537,6716,6290,12,42,5,5,1,62,4,1,37,11,98),(83,27441537,6716,6290,13,39,4,5,2,81,7,0,44,10,89),(84,27441537,6716,6290,14,44,5,8,5,70,5,1,29,6,86),(85,27441537,6716,6290,15,46,5,9,1,59,0,1,23,12,93),(86,28381701,1586,6290,12,39,5,9,5,30,3,0,45,12,93),(87,28381701,1586,6290,15,39,5,7,5,39,8,1,34,5,90),(88,28381701,1586,6290,15,40,4,7,0,5,4,0,40,12,93),(89,28381701,1586,6290,15,48,4,10,4,50,3,1,33,6,91),(90,28381701,1586,6290,12,45,4,4,3,94,2,0,45,6,91),(91,30954371,3993,8423,14,45,4,7,5,46,7,0,35,11,95),(92,30954371,3993,8423,12,41,4,9,2,58,9,0,35,11,86),(93,30954371,3993,8423,14,44,5,8,2,96,1,1,23,7,98),(94,30954371,3993,8423,13,46,4,9,3,73,0,1,43,5,92),(95,30954371,3993,8423,13,40,4,6,1,6,6,0,37,10,91),(96,32408281,471,8423,15,45,5,9,5,56,7,1,42,9,88),(97,32408281,471,8423,12,38,4,10,3,71,8,0,25,10,90),(98,32408281,471,8423,15,45,4,10,0,30,6,1,45,12,95),(99,32408281,471,8423,12,40,5,9,1,13,1,1,24,5,88),(100,32408281,471,8423,14,44,5,6,4,74,9,1,26,5,92);
/*!40000 ALTER TABLE `analisis_sangre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estudios`
--

DROP TABLE IF EXISTS `estudios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estudios` (
  `id_est` int unsigned NOT NULL AUTO_INCREMENT,
  `mat` int unsigned NOT NULL,
  `id_inst` int unsigned NOT NULL,
  `id_seg` int unsigned NOT NULL,
  `DNI` int unsigned NOT NULL,
  `Esp` varchar(50) DEFAULT NULL,
  `Fecha` date DEFAULT NULL,
  `Desc` varchar(100) DEFAULT NULL,
  `img` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_est`),
  UNIQUE KEY `id_est_UNIQUE` (`id_est`),
  KEY `mat` (`mat`),
  KEY `id_inst` (`id_inst`),
  KEY `id_seg` (`id_seg`),
  KEY `DNI` (`DNI`),
  CONSTRAINT `estudios_ibfk_1` FOREIGN KEY (`mat`) REFERENCES `medicos` (`mat`),
  CONSTRAINT `estudios_ibfk_2` FOREIGN KEY (`id_inst`) REFERENCES `instituciones` (`id_inst`),
  CONSTRAINT `estudios_ibfk_3` FOREIGN KEY (`id_seg`) REFERENCES `seguro` (`id_seg`),
  CONSTRAINT `estudios_ibfk_4` FOREIGN KEY (`DNI`) REFERENCES `pacientes` (`DNI`)
) ENGINE=InnoDB AUTO_INCREMENT=999941 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estudios`
--

LOCK TABLES `estudios` WRITE;
/*!40000 ALTER TABLE `estudios` DISABLE KEYS */;
INSERT INTO `estudios` VALUES (2921,63527,776,7436,33083614,'oncology','2015-01-02','migraine','www.seguro.com/storage/estudios/img.png'),(57916,51373,2860,2021,60858373,'cardiology','2021-08-17','flu','www.seguro.com/storage/estudios/img.png'),(58449,917490,2860,8676,60858373,'dermatology','2021-04-03','asthma','www.seguro.com/storage/estudios/img.png'),(61872,581061,4495,7746,62189214,'neurology','2016-02-04','asthma','www.seguro.com/storage/estudios/img.png'),(69822,315217,2860,7746,65414884,'orthopedics','2018-09-21','pneumonia','www.seguro.com/storage/estudios/img.png'),(71986,803352,776,2021,78286038,'oncology','2020-01-12','asthma','www.seguro.com/storage/estudios/img.png'),(78479,105602,6290,7699,8201738,'oncology','2023-07-31','migraine','www.seguro.com/storage/estudios/img.png'),(80271,351369,1364,3979,85693276,'cardiology','2015-02-15','pneumonia','www.seguro.com/storage/estudios/img.png'),(102089,10639,2068,7746,81631135,'orthopedics','2023-08-10','asthma',NULL),(107465,462418,776,2179,65147404,'orthopedics','2019-12-03','diabetes',NULL),(116466,885271,776,4402,21220038,'dermatology','2017-05-12','flu','www.seguro.com/storage/estudios/img.png'),(119570,885271,2746,1586,40469283,'oncology','2013-11-15','diabetes','www.seguro.com/storage/estudios/img.png'),(124484,917490,776,7436,53655125,'dermatology','2013-02-26','pneumonia','www.seguro.com/storage/estudios/img.png'),(130724,774317,3426,4698,55909164,'dermatology','2020-03-30','pneumonia','www.seguro.com/storage/estudios/img.png'),(147574,377903,2068,5673,10008053,'dermatology','2021-11-21','pneumonia','www.seguro.com/storage/estudios/img.png'),(151965,839251,6290,7699,55909164,'oncology','2022-09-16','diabetes','www.seguro.com/storage/estudios/img.png'),(196543,169649,2746,7699,53655125,'oncology','2020-04-12','diabetes','www.seguro.com/storage/estudios/img.png'),(198976,400619,6290,3979,30954371,'dermatology','2013-09-02','pneumonia','www.seguro.com/storage/estudios/img.png'),(205769,436406,2746,3993,69182320,'neurology','2017-01-12','migraine','www.seguro.com/storage/estudios/img.png'),(209143,300867,2746,471,12716747,'neurology','2022-11-30','flu','www.seguro.com/storage/estudios/img.png'),(228214,400619,776,7699,60499427,'oncology','2016-11-09','asthma','www.seguro.com/storage/estudios/img.png'),(232072,63527,3426,4634,45360679,'orthopedics','2021-02-18','asthma','www.seguro.com/storage/estudios/img.png'),(233046,774670,4495,1688,10008053,'dermatology','2014-11-09','asthma','www.seguro.com/storage/estudios/img.png'),(291656,698277,8423,9632,55896620,'neurology','2013-07-02','migraine','www.seguro.com/storage/estudios/img.png'),(307681,763004,6290,8676,62106515,'dermatology','2023-01-18','pneumonia','www.seguro.com/storage/estudios/img.png'),(309935,63527,1101,7699,33503368,'neurology','2015-01-06','migraine',NULL),(314114,765790,1364,4698,2101411,'neurology','2018-02-09','asthma','www.seguro.com/storage/estudios/img.png'),(323546,96221,4495,1586,73886150,'cardiology','2022-06-01','flu','www.seguro.com/storage/estudios/img.png'),(336601,377903,6290,4402,10008053,'orthopedics','2017-05-12','asthma','www.seguro.com/storage/estudios/img.png'),(343313,436406,8423,2021,60223224,'neurology','2015-12-16','flu','www.seguro.com/storage/estudios/img.png'),(362503,917040,2746,3993,21220038,'oncology','2015-09-27','asthma','www.seguro.com/storage/estudios/img.png'),(376407,351369,3426,3993,40469283,'dermatology','2016-06-18','pneumonia','www.seguro.com/storage/estudios/img.png'),(384816,917490,8423,4634,51774264,'cardiology','2013-05-19','migraine','www.seguro.com/storage/estudios/img.png'),(385034,182614,6290,1586,7209476,'orthopedics','2018-11-10','migraine','www.seguro.com/storage/estudios/img.png'),(398337,315217,2068,250,4020089,'dermatology','2016-05-05','pneumonia','www.seguro.com/storage/estudios/img.png'),(404503,698277,2860,5673,10484173,'dermatology','2016-12-04','asthma','www.seguro.com/storage/estudios/img.png'),(405791,646294,2860,5673,61941426,'cardiology','2012-06-09','asthma','www.seguro.com/storage/estudios/img.png'),(422471,646294,2860,1586,28381701,'dermatology','2021-12-18','diabetes','www.seguro.com/storage/estudios/img.png'),(426577,512204,2068,6716,28381701,'cardiology','2022-06-20','pneumonia','www.seguro.com/storage/estudios/img.png'),(467266,173816,3426,6149,76074889,'oncology','2019-03-02','pneumonia','www.seguro.com/storage/estudios/img.png'),(480276,917490,8423,7427,68656816,'oncology','2014-10-16','migraine','www.seguro.com/storage/estudios/img.png'),(491417,377903,2860,471,65147404,'dermatology','2017-02-03','migraine','www.seguro.com/storage/estudios/img.png'),(500006,967695,3426,8676,52545748,'orthopedics','2013-07-24','pneumonia','www.seguro.com/storage/estudios/img.png'),(516385,922602,4495,7436,60499427,'cardiology','2014-02-04','asthma','www.seguro.com/storage/estudios/img.png'),(523607,295005,776,7746,58806627,'oncology','2014-03-25','pneumonia','www.seguro.com/storage/estudios/img.png'),(532611,545460,2068,7436,53655125,'cardiology','2020-01-08','asthma','www.seguro.com/storage/estudios/img.png'),(542034,778123,2860,6149,67538284,'dermatology','2013-04-06','migraine','www.seguro.com/storage/estudios/img.png'),(549468,173816,2746,6149,22844894,'neurology','2019-05-24','pneumonia','www.seguro.com/storage/estudios/img.png'),(565484,436406,2860,5673,58806627,'oncology','2019-04-08','migraine','www.seguro.com/storage/estudios/img.png'),(597115,646294,2068,7427,62106515,'dermatology','2019-06-16','diabetes','www.seguro.com/storage/estudios/img.png'),(616681,803352,776,7746,10690610,'dermatology','2020-11-25','pneumonia','www.seguro.com/storage/estudios/img.png'),(625898,774317,6290,4402,36993755,'neurology','2018-06-18','asthma','www.seguro.com/storage/estudios/img.png'),(644800,870857,4495,1586,45360679,'neurology','2022-09-05','diabetes','www.seguro.com/storage/estudios/img.png'),(667973,917490,1364,1688,4020089,'oncology','2014-09-25','diabetes','www.seguro.com/storage/estudios/img.png'),(674440,870857,776,1586,10484173,'orthopedics','2012-12-06','pneumonia','www.seguro.com/storage/estudios/img.png'),(678616,63155,1364,3979,74141795,'oncology','2016-08-06','migraine','www.seguro.com/storage/estudios/img.png'),(679691,545474,1101,471,33452364,'oncology','2019-03-12','diabetes','www.seguro.com/storage/estudios/img.png'),(683724,51373,6290,471,82640069,'orthopedics','2013-08-21','diabetes','www.seguro.com/storage/estudios/img.png'),(697307,967695,1364,7746,57477771,'dermatology','2016-10-30','diabetes','www.seguro.com/storage/estudios/img.png'),(711087,646294,2068,1586,89236650,'cardiology','2019-01-25','flu','www.seguro.com/storage/estudios/img.png'),(727480,646294,1101,6716,74141795,'dermatology','2014-09-03','flu','www.seguro.com/storage/estudios/img.png'),(741164,839251,6290,4402,45360679,'cardiology','2014-08-15','diabetes','www.seguro.com/storage/estudios/img.png'),(770206,765790,1364,4698,22844894,'neurology','2020-08-30','asthma','www.seguro.com/storage/estudios/img.png'),(773466,917040,6290,471,21220038,'cardiology','2017-11-12','migraine','www.seguro.com/storage/estudios/img.png'),(775864,774317,776,5673,33503368,'cardiology','2017-01-05','asthma','www.seguro.com/storage/estudios/img.png'),(779905,173816,776,6149,10484173,'oncology','2018-08-16','diabetes','www.seguro.com/storage/estudios/img.png'),(783426,698277,6290,250,67090697,'cardiology','2014-03-29','asthma','www.seguro.com/storage/estudios/img.png'),(783446,922602,1101,2179,51610016,'neurology','2022-05-20','diabetes','www.seguro.com/storage/estudios/img.png'),(791997,169649,3426,4698,22844894,'dermatology','2017-08-11','flu','www.seguro.com/storage/estudios/img.png'),(794039,546387,3426,250,27441537,'dermatology','2014-04-30','migraine','www.seguro.com/storage/estudios/img.png'),(809122,300867,2068,3993,8201738,'cardiology','2023-09-29','asthma','www.seguro.com/storage/estudios/img.png'),(828271,512204,2860,5673,14281833,'dermatology','2021-02-28','migraine','www.seguro.com/storage/estudios/img.png'),(851236,315217,3426,7699,74585572,'dermatology','2018-07-04','diabetes','www.seguro.com/storage/estudios/img.png'),(862045,278742,1364,3993,51774264,'oncology','2020-11-24','migraine','www.seguro.com/storage/estudios/img.png'),(865634,870857,1364,6716,54323777,'dermatology','2020-03-31','diabetes','www.seguro.com/storage/estudios/img.png'),(870728,440759,1101,8676,57167328,'orthopedics','2019-03-14','diabetes','www.seguro.com/storage/estudios/img.png'),(878674,765790,4495,2021,22844894,'orthopedics','2018-06-16','pneumonia','www.seguro.com/storage/estudios/img.png'),(879990,917490,3426,1688,73073836,'oncology','2014-07-14','diabetes','www.seguro.com/storage/estudios/img.png'),(902718,870857,3426,1688,83207748,'neurology','2013-02-24','flu','www.seguro.com/storage/estudios/img.png'),(910426,462418,776,7746,78286038,'dermatology','2023-03-17','diabetes','www.seguro.com/storage/estudios/img.png'),(934882,698277,1364,2021,82640069,'orthopedics','2023-04-09','diabetes','www.seguro.com/storage/estudios/img.png'),(946754,295005,3426,4634,41621516,'dermatology','2014-09-06','asthma','www.seguro.com/storage/estudios/img.png'),(947795,778123,1101,7436,65414884,'dermatology','2022-10-15','pneumonia','www.seguro.com/storage/estudios/img.png'),(950271,940948,2746,7427,69453451,'cardiology','2016-07-04','migraine','www.seguro.com/storage/estudios/img.png'),(960281,581061,776,5673,87225369,'orthopedics','2019-04-26','asthma','www.seguro.com/storage/estudios/img.png'),(985700,774317,4495,4402,30954371,'orthopedics','2014-01-27','migraine','www.seguro.com/storage/estudios/img.png'),(994680,545460,6290,5673,64493691,'neurology','2022-05-17','pneumonia','www.seguro.com/storage/estudios/img.png');
/*!40000 ALTER TABLE `estudios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instituciones`
--

DROP TABLE IF EXISTS `instituciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `instituciones` (
  `id_inst` int unsigned NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_inst`),
  UNIQUE KEY `id_inst_UNIQUE` (`id_inst`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instituciones`
--

LOCK TABLES `instituciones` WRITE;
/*!40000 ALTER TABLE `instituciones` DISABLE KEYS */;
INSERT INTO `instituciones` VALUES (776,'City Clinic'),(1101,'Swiss Medical'),(1364,'Hospital del quemado'),(2068,'La trinidad'),(2746,'Santa Isabel'),(2860,'Hospital Aleman'),(3426,'Maple Grove Medical'),(4495,'Fundacion Favaloro'),(6290,'Sunset Medical'),(8423,'Hospital Italiano');
/*!40000 ALTER TABLE `instituciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logs`
--

DROP TABLE IF EXISTS `logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `logs` (
  `id_log` int unsigned NOT NULL AUTO_INCREMENT,
  `usuario` varchar(50) DEFAULT NULL,
  `tabla` varchar(50) DEFAULT NULL,
  `accion` varchar(50) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  PRIMARY KEY (`id_log`),
  UNIQUE KEY `id_log_UNIQUE` (`id_log`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logs`
--

LOCK TABLES `logs` WRITE;
/*!40000 ALTER TABLE `logs` DISABLE KEYS */;
INSERT INTO `logs` VALUES (1,'root@localhost','paciente','insert','2024-01-09','22:39:02');
/*!40000 ALTER TABLE `logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicos`
--

DROP TABLE IF EXISTS `medicos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicos` (
  `mat` int unsigned NOT NULL,
  `id_inst` int unsigned NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `Esp` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`mat`),
  UNIQUE KEY `mat_UNIQUE` (`mat`),
  KEY `id_inst` (`id_inst`),
  CONSTRAINT `medicos_ibfk_1` FOREIGN KEY (`id_inst`) REFERENCES `instituciones` (`id_inst`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicos`
--

LOCK TABLES `medicos` WRITE;
/*!40000 ALTER TABLE `medicos` DISABLE KEYS */;
INSERT INTO `medicos` VALUES (10639,1101,'Robb McLelland','gastroenterology'),(51373,2746,'Hermina Goldsbury','dermatology'),(63155,776,'Kitti Bilbey','orthopedics'),(63527,776,'Cam Tanman','dermatology'),(96221,2068,'Eddie Bryan','cardiology'),(105602,4495,'Amie Hindenburg','gastroenterology'),(136272,6290,'Camel Gilardi','orthopedics'),(169649,3426,'Maudie Audenis','orthopedics'),(173816,8423,'Coretta Bakesef','dermatology'),(174992,2746,'Emyle Johnston','orthopedics'),(182614,2860,'Saw Cayser','gastroenterology'),(211637,8423,'Chauncey Probin','gastroenterology'),(255771,2068,'Jard Dominici','orthopedics'),(278742,2860,'Teodora Bowmer','neurology'),(295005,1364,'Berkly Axtens','cardiology'),(300867,6290,'Merrie Felix','cardiology'),(304067,4495,'Fredrika Baily','orthopedics'),(315217,6290,'Emilee Barrow','gastroenterology'),(334888,4495,'Keeley Burleton','neurology'),(351369,776,'Estevan Jerrans','neurology'),(377903,1101,'Danna Findlay','cardiology'),(400619,1101,'Drusi Shankle','dermatology'),(436406,2746,'Marilyn Southouse','neurology'),(440759,2068,'Rene Gerhartz','gastroenterology'),(462418,1101,'Rees Aplin','orthopedics'),(483672,3426,'Bent Dunseath','neurology'),(512204,2860,'Aloysius Cradey','dermatology'),(545460,2746,'Risa Simister','gastroenterology'),(545474,1364,'Sheba Talbot','gastroenterology'),(546387,1364,'Glenna de Guerre','neurology'),(581061,1364,'Sukey Konertz','dermatology'),(646294,2746,'Kaine Flea','cardiology'),(698277,2068,'Petronia Karlolczak','dermatology'),(763004,3426,'Carlo Massie','dermatology'),(765790,3426,'Giorgi Getten','gastroenterology'),(774317,4495,'Benedict Berick','cardiology'),(774670,4495,'Jeth Hirtz','dermatology'),(778123,8423,'Edmon Leethem','neurology'),(803352,1101,'Sasha Pummery','neurology'),(808723,1364,'Patrice Impy','orthopedics'),(839251,6290,'Ferdinand Ruberti','neurology'),(870857,2860,'Tiebold Duffrie','orthopedics'),(881636,776,'Harmonie Ilyinski','gastroenterology'),(885271,2068,'Danny Kirsop','neurology'),(917040,3426,'Constancy Halton','cardiology'),(917490,8423,'Priscella Reinbeck','cardiology'),(922047,6290,'Shirley Hansbury','dermatology'),(922602,8423,'Charmion Canwell','orthopedics'),(940948,776,'Emmerich Darrigoe','cardiology'),(967695,2860,'Yolanthe Schriren','cardiology');
/*!40000 ALTER TABLE `medicos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pacientes`
--

DROP TABLE IF EXISTS `pacientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pacientes` (
  `DNI` int unsigned NOT NULL AUTO_INCREMENT,
  `id_seg` int unsigned NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `plan` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`DNI`),
  UNIQUE KEY `DNI_UNIQUE` (`DNI`),
  KEY `id_seg` (`id_seg`),
  CONSTRAINT `pacientes_ibfk_1` FOREIGN KEY (`id_seg`) REFERENCES `seguro` (`id_seg`)
) ENGINE=InnoDB AUTO_INCREMENT=98992099 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pacientes`
--

LOCK TABLES `pacientes` WRITE;
/*!40000 ALTER TABLE `pacientes` DISABLE KEYS */;
INSERT INTO `pacientes` VALUES (2101411,4634,'Powell Rimington','RKR-1'),(3174656,1586,'Gabriellia Haberfield','HD-8'),(4020089,7746,'Gage Jedrzaszkiewicz','DW-1'),(5583783,3979,'Adelina Popley','OX-3'),(7209476,2179,'Nerta Thirlwall','XU-7'),(8033642,7746,'Mair Bradie','XD-6'),(8201738,2021,'Hodge Turbitt','QS-7'),(10008053,2179,'Nananne Anthony','TA-1'),(10484173,7699,'Clay Lethebridge','XG-9'),(10690610,4698,'Thia Clackson','FA-4'),(12716747,1688,'Ranice Lavens','GM-7'),(14281833,7746,'Pren Lacasa','KT-9'),(21055563,3979,'Rosella Pughsley','YI-2'),(21220038,3993,'Giraud Romer','LH-7'),(22844894,4698,'Cathe Carbin','QC-6'),(24313407,5673,'Dorian Jezard','SF-0'),(27441537,6716,'Ludovika Gaskins','XX-1'),(28381701,1586,'Eva Hayle','GY-6'),(30954371,3993,'Hallie Bowcock','RO-4'),(32408281,471,'Darya Hofton','MP-6'),(33083614,4634,'Neal Scottesmoor','RKR-2'),(33452364,7746,'Rosemarie Iles','PV-4'),(33503368,6149,'Hoebart Coats','XB-4'),(35767971,9632,'Mandel Delgardillo','VU-4'),(36993755,9632,'Sydney McMorran','YX-7'),(38061391,8676,'Kittie Mantram','YY-5'),(40469283,3979,'Anne-corinne Blaisdale','KD-4'),(41606741,6716,'Renard Portwaine','GV-2'),(41621516,1586,'Rachael Hathway','CT-2'),(44582847,4402,'Gay Pople','ZD-6'),(45360679,250,'Lauree Barehead','KJ-7'),(48977225,4698,'Chelsea Olyff','IL-6'),(50561866,7699,'Georgeanna Chadburn','DX-4'),(51610016,6716,'Sarge Writtle','CS-9'),(51774264,4402,'Irma Lippiatt','ZW-7'),(52545748,7427,'Benedikta Harniman','VP-9'),(53419688,2021,'Leontine Ralfe','DD-4'),(53655125,2021,'Noe Richardt','MC-1'),(54323777,250,'Sonia Martinyuk','KX-4'),(54964745,6149,'Claude Oldcote','LX-2'),(55896620,7427,'Annissa Scuffham','IP-5'),(55909164,8676,'Claire Goves','AM-9'),(56603356,1688,'Selinda Alesin','QZ-8'),(56766066,4698,'Locke Drewes','RZ-2'),(57167328,3979,'Kermie De la Zenne','RL-9'),(57194401,7699,'Adriano Mungham','IF-4'),(57477771,4698,'Shandee Scotchford','GF-7'),(58806627,9632,'Odele Crummay','BX-0'),(58910446,3979,'Korey Corryer','CV-8'),(60223224,7699,'Pepillo Peck','EW-1'),(60499427,4698,'Svend Larwood','OH-4'),(60858373,4402,'Drugi Whitnall','XG-9'),(61126785,1586,'Tommi Emmatt','KR-4'),(61941426,2021,'Arlene Hexam','PZ-1'),(62106515,2021,'Joella Cowie','KB-6'),(62189214,471,'Kin Skittles','TC-7'),(62753801,7436,'Nicolas Kemwall','LO-1'),(64493691,4698,'Angelico Dendon','LM-1'),(65147404,471,'Pete Jaquin','PI-0'),(65414884,1586,'Raynor Drohane','HL-3'),(67042253,4698,'Leena Platfoot','SK-4'),(67090697,4402,'Oswell Scola','SB-8'),(67538284,4402,'Erv Muccino','FW-6'),(68656816,7436,'Casey Cerro','AM-9'),(68956196,7436,'Eb Bolsover','RU-2'),(69182320,7427,'Berny Sawden','RD-8'),(69453451,4698,'Stafford Martinec','QH-5'),(72343432,7436,'Sheeree Blazek','QP-5'),(73073836,1688,'Riccardo Relfe','HG-7'),(73772106,4634,'Randa Lapping','RKR-1'),(73886150,471,'Pat Candie','KK-3'),(74141795,4402,'Payton Dufton','HQ-4'),(74585572,7436,'Caritta Stoodley','EG-1'),(74932911,250,'Gabie Schwant','XN-4'),(76074889,1688,'Minette Braine','TG-8'),(76713278,4402,'Tonnie Loddy','WT-1'),(77087233,4402,'Gaston Jubb','WK-2'),(77637957,8676,'Ricky Faux','KT-8'),(78286038,4634,'Wayne Leftley','RKR-3'),(78340395,2021,'Alane Firth','ZG-3'),(81631135,2021,'Alwyn Berard','JW-7'),(82640069,7699,'Murielle Frome','SF-4'),(83207748,2021,'Melly Lembke','IS-3'),(85089793,2021,'Salomon Reary','MF-7'),(85594805,2021,'Aundrea Reihill','UC-9'),(85693276,2179,'Gustavus Bettanay','NK-8'),(86900255,4402,'Amye Lahrs','BI-3'),(87225369,1688,'Celestine Arangy','YU-5'),(89236650,2021,'Eyde Lewsie','GC-0'),(89464067,8676,'Brynn Goligly','VZ-4'),(89514432,4698,'Wendeline Anfrey','WK-1'),(95683098,471,'Gayle Killbey','RJ-5'),(95703717,3993,'Rossy Soldi','GO-1'),(96295968,1586,'Becka Basili','IR-1'),(96666244,7746,'Philbert Congreave','NX-8'),(97734833,7427,'Catie Fripp','YT-7'),(98234423,4402,'Jonathon Gritsunov','RQ-0'),(98512304,4634,'Foster Burrill','RKR-1'),(98992098,3993,'Pietro Matoshin','ER-8');
/*!40000 ALTER TABLE `pacientes` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `paciente_BEFORE_INSERT` BEFORE INSERT ON `pacientes` FOR EACH ROW BEGIN
INSERT INTO logs (usuario, tabla, accion, fecha, hora) 
VALUES(user(), "paciente", "insert", CURDATE(), curtime());
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `pacientes_BEFORE_DELETE` BEFORE DELETE ON `pacientes` FOR EACH ROW BEGIN
DELETE FROM estudios WHERE DNI = OLD.DNI;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `seguro`
--

DROP TABLE IF EXISTS `seguro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seguro` (
  `id_seg` int unsigned NOT NULL AUTO_INCREMENT,
  `id_inst` int unsigned NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_seg`),
  UNIQUE KEY `id_seg_UNIQUE` (`id_seg`),
  KEY `id_inst` (`id_inst`),
  CONSTRAINT `seguro_ibfk_1` FOREIGN KEY (`id_inst`) REFERENCES `instituciones` (`id_inst`)
) ENGINE=InnoDB AUTO_INCREMENT=9633 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seguro`
--

LOCK TABLES `seguro` WRITE;
/*!40000 ALTER TABLE `seguro` DISABLE KEYS */;
INSERT INTO `seguro` VALUES (250,8423,'McDermott Inc'),(471,2860,'Heaney Group'),(1586,2860,'Dooley, Metz and Legros'),(1688,2746,'Cummerata, Leuschke and Mante'),(2021,4495,'Kessler LLC'),(2179,4495,'Kozey, Macejkovic and Ledner'),(3979,776,'Stehr LLC'),(3993,1101,'Schuppe-Shanahan'),(4402,2746,'Wehner-Hamill'),(4634,1364,'Reichel, Kulas and Rogahn'),(4698,2068,'Champlin, Schroeder and Adams'),(5673,776,'Gusikowski-Steuber'),(6149,3426,'Crist, Abbott and Kuhlman'),(6716,6290,'Zulauf-Cruickshank'),(7427,2068,'Will Group'),(7436,1101,'Baumbach, Casper and Kirlin'),(7699,3426,'Monahan-Lindgren'),(7746,8423,'Friesen-Kris'),(8676,1364,'Koss-Halvorson'),(9632,6290,'Zulauf-Tillman');
/*!40000 ALTER TABLE `seguro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vista_capacidadcardiaca`
--

DROP TABLE IF EXISTS `vista_capacidadcardiaca`;
/*!50001 DROP VIEW IF EXISTS `vista_capacidadcardiaca`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_capacidadcardiaca` AS SELECT 
 1 AS `Identificacion`,
 1 AS `nombre`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_cardiologos`
--

DROP TABLE IF EXISTS `vista_cardiologos`;
/*!50001 DROP VIEW IF EXISTS `vista_cardiologos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_cardiologos` AS SELECT 
 1 AS `mat`,
 1 AS `nombre`,
 1 AS `Esp`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_estudiosmedico`
--

DROP TABLE IF EXISTS `vista_estudiosmedico`;
/*!50001 DROP VIEW IF EXISTS `vista_estudiosmedico`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_estudiosmedico` AS SELECT 
 1 AS `id_est`,
 1 AS `mat`,
 1 AS `id_inst`,
 1 AS `DNI`,
 1 AS `Fecha`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_pacientesestudios`
--

DROP TABLE IF EXISTS `vista_pacientesestudios`;
/*!50001 DROP VIEW IF EXISTS `vista_pacientesestudios`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_pacientesestudios` AS SELECT 
 1 AS `DNI`,
 1 AS `nombre`,
 1 AS `plan`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_pacientesseguro`
--

DROP TABLE IF EXISTS `vista_pacientesseguro`;
/*!50001 DROP VIEW IF EXISTS `vista_pacientesseguro`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_pacientesseguro` AS SELECT 
 1 AS `DNI`,
 1 AS `nombre`,
 1 AS `plan`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'seguros_db'
--

--
-- Dumping routines for database 'seguros_db'
--
/*!50003 DROP FUNCTION IF EXISTS `BuscarPorNombre` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `BuscarPorNombre`(nombre_buscar VARCHAR(50)) RETURNS int
    DETERMINISTIC
BEGIN
    DECLARE dcumento INT;

    -- Realizar la búsqueda en la tabla
    SELECT dni INTO dcumento FROM pacientes WHERE nombre = nombre_buscar;

    -- Retornar el resultado
    RETURN dcumento;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `especialidadMedico` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `especialidadMedico`(matricula VARCHAR(50)) RETURNS varchar(50) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
    DECLARE especialidad VARCHAR(50);

    -- Realizar la búsqueda en la tabla
    SELECT Esp INTO especialidad FROM medicos WHERE mat = matricula;

    -- Retornar el resultado
    RETURN especialidad;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `EliminarFilasAntiguas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `EliminarFilasAntiguas`()
BEGIN
    -- Definimos la fecha límite (hoy menos 10 años)
    DECLARE fecha_limite DATE;
    SET fecha_limite = DATE_SUB(CURDATE(), INTERVAL 10 YEAR);

    -- Eliminamos las filas con mas de 10 años de antiguedad
    DELETE FROM estudios
    WHERE Fecha < fecha_limite;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `medic_area_order` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `medic_area_order`(Referencia VARCHAR(50))
BEGIN
IF Referencia <> '' THEN 
		SET @area_order = concat('WHERE Esp = "', Referencia, '";');
        
    ELSE 
        SET @area_order = '';
    END IF;

-- Traemos todos los estudios pertenecientes al area indicada o todos ellos en caso de no indicarla

    SET @clausula = concat('SELECT * FROM estudios ', @area_order);
    PREPARE runSQL FROM @clausula;
    EXECUTE runSQL;
    DEALLOCATE PREPARE runSQL;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `vista_capacidadcardiaca`
--

/*!50001 DROP VIEW IF EXISTS `vista_capacidadcardiaca`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_capacidadcardiaca` AS select distinct `p`.`DNI` AS `Identificacion`,`p`.`nombre` AS `nombre` from (`pacientes` `p` join `estudios` `e` on((`p`.`DNI` = `e`.`DNI`))) where (`e`.`Esp` = 'cardiology') union select distinct `m`.`mat` AS `mat`,`m`.`nombre` AS `nombre` from (`medicos` `m` join `estudios` `e` on((`m`.`mat` = `e`.`mat`))) where (`e`.`Esp` = 'cardiology') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_cardiologos`
--

/*!50001 DROP VIEW IF EXISTS `vista_cardiologos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_cardiologos` AS select `medicos`.`mat` AS `mat`,`medicos`.`nombre` AS `nombre`,`medicos`.`Esp` AS `Esp` from `medicos` where (`medicos`.`Esp` = 'cardiology') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_estudiosmedico`
--

/*!50001 DROP VIEW IF EXISTS `vista_estudiosmedico`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_estudiosmedico` AS select distinct `e`.`id_est` AS `id_est`,`e`.`mat` AS `mat`,`e`.`id_inst` AS `id_inst`,`e`.`DNI` AS `DNI`,`e`.`Fecha` AS `Fecha` from (`estudios` `e` join `medicos` `m` on((`e`.`mat` = `m`.`mat`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_pacientesestudios`
--

/*!50001 DROP VIEW IF EXISTS `vista_pacientesestudios`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_pacientesestudios` AS select distinct `p`.`DNI` AS `DNI`,`p`.`nombre` AS `nombre`,`p`.`plan` AS `plan` from (`pacientes` `p` join `estudios` `e` on((`p`.`DNI` = `e`.`DNI`))) where (`e`.`DNI` <> '') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_pacientesseguro`
--

/*!50001 DROP VIEW IF EXISTS `vista_pacientesseguro`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_pacientesseguro` AS select distinct `p`.`DNI` AS `DNI`,`p`.`nombre` AS `nombre`,`p`.`plan` AS `plan` from (`pacientes` `p` join `seguro` `s` on((`p`.`id_seg` = `s`.`id_seg`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-20 11:52:57
