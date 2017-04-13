-- MySQL dump 10.16  Distrib 10.1.22-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: result
-- ------------------------------------------------------
-- Server version	10.1.22-MariaDB-1~xenial

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

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `courses` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `course_code` varchar(10) DEFAULT NULL,
  `course_title` varchar(255) DEFAULT NULL,
  `course_weight` int(11) DEFAULT NULL,
  `level` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` VALUES (1,'BIO101','Diversity in living organisms',3,1),(2,'CHM101','General Chemistiry 1',3,1),(3,'CSC101','Introduction to Computer Science',3,1),(4,'GST112','Philosophy, Logic and Crititcal Thinking',2,1),(5,'GST121','Use of Library, Study Skills and Information Communication Technonlogy',2,1),(6,'GST111','Use of English',2,1),(7,'MTH101','Elementary Mathematics 1',3,1),(8,'MTH103','Elementary Mathematics 3',3,1);
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grades`
--

DROP TABLE IF EXISTS `grades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `grade` varchar(10) NOT NULL,
  `grade_point` float DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grades`
--

LOCK TABLES `grades` WRITE;
/*!40000 ALTER TABLE `grades` DISABLE KEYS */;
INSERT INTO `grades` VALUES (1,'F',0,'Fail'),(2,'E',1,'Pass'),(3,'D',2,'Pass'),(4,'C',3,'Pass'),(5,'B',4,'Pass'),(6,'A',5,'Pass');
/*!40000 ALTER TABLE `grades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quiz`
--

DROP TABLE IF EXISTS `quiz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quiz` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(255) DEFAULT NULL,
  `answer` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quiz`
--

LOCK TABLES `quiz` WRITE;
/*!40000 ALTER TABLE `quiz` DISABLE KEYS */;
INSERT INTO `quiz` VALUES (1,'How many credits is CSC101','3'),(2,'What would be your gp if you had B in a course','4');
/*!40000 ALTER TABLE `quiz` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `result`
--

DROP TABLE IF EXISTS `result`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `result` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `student_id` int(11) DEFAULT NULL,
  `session` varchar(255) DEFAULT NULL,
  `level` tinyint(4) DEFAULT NULL,
  `semester` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `result`
--

LOCK TABLES `result` WRITE;
/*!40000 ALTER TABLE `result` DISABLE KEYS */;
INSERT INTO `result` VALUES (1,1,'2013/2014',1,1),(2,2,'2013/2014',1,1),(3,3,'2013/2014',1,1),(4,4,'2013/2014',1,1),(5,5,'2013/2014',1,1),(6,6,'2013/2014',1,1),(7,7,'2013/2014',1,1),(8,8,'2013/2014',1,1),(9,9,'2013/2014',1,1),(10,10,'2013/2014',1,1),(11,11,'2013/2014',1,1),(12,12,'2013/2014',1,1),(13,13,'2013/2014',1,1),(14,14,'2013/2014',1,1),(15,15,'2013/2014',1,1),(16,16,'2013/2014',1,1),(17,17,'2013/2014',1,1),(18,18,'2013/2014',1,1),(19,19,'2013/2014',1,1),(20,20,'2013/2014',1,1),(21,21,'2013/2014',1,1),(22,22,'2013/2014',1,1),(23,23,'2013/2014',1,1),(24,24,'2013/2014',1,1),(25,25,'2013/2014',1,1),(26,1,'2013/2014',1,2),(27,2,'2013/2014',1,2),(28,3,'2013/2014',1,2),(29,4,'2013/2014',1,2),(30,5,'2013/2014',1,2),(31,6,'2013/2014',1,2),(32,7,'2013/2014',1,2),(33,8,'2013/2014',1,2),(34,9,'2013/2014',1,2),(35,10,'2013/2014',1,2),(36,11,'2013/2014',1,2),(37,12,'2013/2014',1,2),(38,13,'2013/2014',1,2),(39,14,'2013/2014',1,2),(40,15,'2013/2014',1,2),(41,16,'2013/2014',1,2),(42,17,'2013/2014',1,2),(43,18,'2013/2014',1,2),(44,19,'2013/2014',1,2),(45,20,'2013/2014',1,2),(46,21,'2013/2014',1,2),(47,22,'2013/2014',1,2),(48,23,'2013/2014',1,2),(49,24,'2013/2014',1,2),(50,25,'2013/2014',1,2);
/*!40000 ALTER TABLE `result` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `result_summary`
--

DROP TABLE IF EXISTS `result_summary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `result_summary` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `result_id` bigint(20) unsigned DEFAULT NULL,
  `course_id` bigint(20) unsigned DEFAULT NULL,
  `grade_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `result_summary`
--

LOCK TABLES `result_summary` WRITE;
/*!40000 ALTER TABLE `result_summary` DISABLE KEYS */;
INSERT INTO `result_summary` VALUES (1,1,1,3),(2,1,2,1),(3,1,3,6),(4,1,4,1),(5,1,5,6),(6,2,1,1),(7,2,2,2),(8,2,3,2),(9,2,4,3),(10,2,5,1),(11,3,1,2),(12,3,2,3),(13,3,3,2),(14,3,4,1),(15,3,5,4),(16,4,1,5),(17,4,2,4),(18,4,3,1),(19,4,4,3),(20,4,5,5),(21,5,1,2),(22,5,2,3),(23,5,3,2),(24,5,4,2),(25,5,5,1),(26,6,1,1),(27,6,2,4),(28,6,3,6),(29,6,4,4),(30,6,5,3),(31,7,1,4),(32,7,2,6),(33,7,3,3),(34,7,4,3),(35,7,5,1),(36,8,1,3),(37,8,2,3),(38,8,3,2),(39,8,4,4),(40,8,5,5),(41,9,1,3),(42,9,2,5),(43,9,3,2),(44,9,4,4),(45,9,5,5),(46,10,1,6),(47,10,2,3),(48,10,3,3),(49,10,4,1),(50,10,5,6),(51,11,1,1),(52,11,2,2),(53,11,3,3),(54,11,4,2),(55,11,5,4),(56,12,1,3),(57,12,2,2),(58,12,3,2),(59,12,4,3),(60,12,5,5),(61,13,1,4),(62,13,2,6),(63,13,3,5),(64,13,4,1),(65,13,5,2),(66,14,1,5),(67,14,2,3),(68,14,3,5),(69,14,4,6),(70,14,5,6),(71,15,1,4),(72,15,2,2),(73,15,3,5),(74,15,4,5),(75,15,5,6),(76,16,1,4),(77,16,2,5),(78,16,3,3),(79,16,4,6),(80,16,5,5),(81,17,1,2),(82,17,2,6),(83,17,3,1),(84,17,4,4),(85,17,5,1),(86,18,1,4),(87,18,2,1),(88,18,3,3),(89,18,4,5),(90,18,5,3),(91,19,1,2),(92,19,2,3),(93,19,3,2),(94,19,4,6),(95,19,5,3),(96,20,1,4),(97,20,2,5),(98,20,3,6),(99,20,4,2),(100,20,5,4),(101,21,1,5),(102,21,2,5),(103,21,3,6),(104,21,4,4),(105,21,5,3),(106,22,1,6),(107,22,2,1),(108,22,3,2),(109,22,4,2),(110,22,5,6),(111,23,1,6),(112,23,2,3),(113,23,3,5),(114,23,4,6),(115,23,5,1),(116,24,1,6),(117,24,2,4),(118,24,3,2),(119,24,4,3),(120,24,5,2),(121,25,1,4),(122,25,2,5),(123,25,3,5),(124,25,4,6),(125,25,5,5),(126,26,6,4),(127,26,7,1),(128,26,8,5),(129,27,6,1),(130,27,7,6),(131,27,8,4),(132,28,6,5),(133,28,7,1),(134,28,8,5),(135,29,6,6),(136,29,7,4),(137,29,8,3),(138,30,6,2),(139,30,7,5),(140,30,8,4),(141,31,6,5),(142,31,7,4),(143,31,8,5),(144,32,6,2),(145,32,7,4),(146,32,8,5),(147,33,6,3),(148,33,7,2),(149,33,8,4),(150,34,6,4),(151,34,7,4),(152,34,8,4),(153,35,6,6),(154,35,7,1),(155,35,8,5),(156,36,6,5),(157,36,7,5),(158,36,8,5),(159,37,6,3),(160,37,7,5),(161,37,8,5),(162,38,6,1),(163,38,7,3),(164,38,8,6),(165,39,6,5),(166,39,7,2),(167,39,8,3),(168,40,6,2),(169,40,7,3),(170,40,8,2),(171,41,6,6),(172,41,7,2),(173,41,8,6),(174,42,6,4),(175,42,7,4),(176,42,8,3),(177,43,6,3),(178,43,7,1),(179,43,8,5),(180,44,6,6),(181,44,7,4),(182,44,8,2),(183,45,6,4),(184,45,7,4),(185,45,8,3),(186,46,6,2),(187,46,7,2),(188,46,8,1),(189,47,6,6),(190,47,7,5),(191,47,8,5),(192,48,6,5),(193,48,7,6),(194,48,8,1),(195,49,6,4),(196,49,7,5),(197,49,8,3),(198,50,6,1),(199,50,7,1),(200,50,8,6);
/*!40000 ALTER TABLE `result_summary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `matric_number` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (1,'Alhassan Ado Abdulaziz','FSC/CSC/13/0001','test'),(2,'Mustapha Ado Nasir','FSC/CSC/13/0002','test'),(3,'Mustapha Dauda','FSC/CSC/13/0003','test'),(4,'Dauda Muhammad','FSC/CSC/13/0004','test'),(5,'Sunusi Aliyu','FSC/CSC/13/0005','test'),(6,'Dauda Lawan','FSC/CSC/13/0006','test'),(7,'Nasir Zakari','FSC/CSC/13/0007','test'),(8,'Aliyu Sunusi','FSC/CSC/13/0008','test'),(9,'Faruk Aliyu','FSC/CSC/13/0009','test'),(10,'Hashim Garba','FSC/CSC/13/0010','test'),(11,'Faruk Bala Hashim','FSC/CSC/13/0011','test'),(12,'Muhammad Dauda','FSC/CSC/13/0012','test'),(13,'Faruk Bala Alhassan','FSC/CSC/13/0013','test'),(14,'Aliyu Alhassan Garba','FSC/CSC/13/0014','test'),(15,'Bala Bala Abdulaziz','FSC/CSC/13/0015','test'),(16,'Abdulmalik Garba Dauda','FSC/CSC/13/0016','test'),(17,'Abdulaziz Lawan','FSC/CSC/13/0017','test'),(18,'Bala Zakari Abdulaziz','FSC/CSC/13/0018','test'),(19,'Lawan Sunusi','FSC/CSC/13/0019','test'),(20,'Zakari Sunusi','FSC/CSC/13/0020','test'),(21,'Garba Mustapha','FSC/CSC/13/0021','test'),(22,'Nasir Muhammad Lawan','FSC/CSC/13/0022','test'),(23,'Alhassan Faruk','FSC/CSC/13/0023','test'),(24,'Alhassan Lawan','FSC/CSC/13/0024','test'),(25,'Abdulaziz Zakari Lawan','FSC/CSC/13/0025','test');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-04-13 16:38:43
