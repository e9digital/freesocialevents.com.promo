-- MySQL dump 10.13  Distrib 5.1.41, for debian-linux-gnu (i486)
--
-- Host: localhost    Database: freesocialevents
-- ------------------------------------------------------
-- Server version	5.1.41-3ubuntu12.6-log

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
-- Table structure for table `signups`
--

DROP TABLE IF EXISTS `signups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `signups` (
  `email` varchar(255) DEFAULT NULL,
  `zipcode` varchar(32) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `signups`
--

LOCK TABLES `signups` WRITE;
/*!40000 ALTER TABLE `signups` DISABLE KEYS */;
INSERT INTO `signups` VALUES ('Skrabo@hotmail.com','32765','',''),('sharon.ziegler@gmail.com','11375','mmasharon','Sharon Ziegler'),('strozme@hotmail.com','32828','',''),('stroz0045@hotmail.com','32828','','Jacklynn Roney Stroz'),('jina@e9digital.com','10018','',''),('numbers1311407@gmail.com','10016','',''),('stacyemail@gmail.com','11106','',''),('','','',''),('erin.m.orourke@gmail.com','10128','',''),('erin.m.orourke@gmail.com','10128','',''),('maesterpoet@hotmail.com','11204','',''),('AlgonguinJCalhoun@gmail.com','11101','',''),('bronxlatino@puertoricosun.com','10451','bronxlatino','Clarisel Gonzalez'),('jorgeotoya@yahoo.com','20036','','Jorge Otoya'),('paglia.paul@gmail.com','11215','Paul Paglia','Paul Paglia'),('erin.m.orourke@gmail.com','10128','',''),('velsny@yahoo.com','10023','',''),('meetselin@gmail.com','10014','',''),('afcorrea14@gmail.com','33414','','Andres Correa'),('jina@e9digital.com','10018','','');
/*!40000 ALTER TABLE `signups` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2010-12-29 15:40:32
