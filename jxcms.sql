-- MySQL dump 10.13  Distrib 5.7.42, for Linux (x86_64)
--
-- Host: localhost    Database: jxcms
-- ------------------------------------------------------
-- Server version	5.7.42-0ubuntu0.18.04.1-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- Table structure for table `jx_class`
--

DROP TABLE IF EXISTS `jx_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jx_class` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jx_class`
--

LOCK TABLES `jx_class` WRITE;
/*!40000 ALTER TABLE `jx_class` DISABLE KEYS */;
INSERT INTO `jx_class` VALUES (1,'2211'),(2,'2210');
/*!40000 ALTER TABLE `jx_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jx_score`
--

DROP TABLE IF EXISTS `jx_score`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jx_score` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stuId` int(11) NOT NULL,
  `testId` int(11) NOT NULL,
  `subjectId` int(11) NOT NULL,
  `score` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jx_score`
--

LOCK TABLES `jx_score` WRITE;
/*!40000 ALTER TABLE `jx_score` DISABLE KEYS */;
INSERT INTO `jx_score` VALUES (1,1,1,1,90),(2,1,1,2,80),(3,1,2,1,85),(4,1,2,2,84),(5,2,1,1,78),(6,2,1,2,88),(7,2,2,1,89),(8,2,2,2,94),(9,3,1,1,68),(10,3,1,2,78),(11,3,2,1,69),(12,3,2,2,64),(13,4,1,1,81),(14,4,1,2,77),(15,4,2,1,59),(16,4,2,2,48),(17,1,1,1,100),(18,1,1,1,100),(19,1,1,1,100),(20,1,1,1,100),(21,1,1,1,100),(22,1,1,1,100),(23,1,1,1,100),(24,1,1,1,100),(25,1,1,1,100),(26,1,1,1,100),(27,1,1,1,100),(28,1,1,1,100);
/*!40000 ALTER TABLE `jx_score` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jx_stu`
--

DROP TABLE IF EXISTS `jx_stu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jx_stu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `classId` int(11) NOT NULL,
  `name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `age` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jx_stu`
--

LOCK TABLES `jx_stu` WRITE;
/*!40000 ALTER TABLE `jx_stu` DISABLE KEYS */;
INSERT INTO `jx_stu` VALUES (1,1,'张四',18),(2,1,'李四',19),(3,2,'王五',20);
/*!40000 ALTER TABLE `jx_stu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jx_subject`
--

DROP TABLE IF EXISTS `jx_subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jx_subject` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jx_subject`
--

LOCK TABLES `jx_subject` WRITE;
/*!40000 ALTER TABLE `jx_subject` DISABLE KEYS */;
INSERT INTO `jx_subject` VALUES (1,'网工'),(2,'运维');
/*!40000 ALTER TABLE `jx_subject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jx_test`
--

DROP TABLE IF EXISTS `jx_test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jx_test` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jx_test`
--

LOCK TABLES `jx_test` WRITE;
/*!40000 ALTER TABLE `jx_test` DISABLE KEYS */;
INSERT INTO `jx_test` VALUES (1,'期中考试'),(2,'期末考试');
/*!40000 ALTER TABLE `jx_test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- GTID state at the end of the backup 
--

SET @@GLOBAL.GTID_PURGED='ff0b8268-3e2f-11ef-9018-000c29aaf2a5:1-26';
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-14  7:15:27
