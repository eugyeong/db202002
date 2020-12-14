-- MySQL dump 10.16  Distrib 10.1.47-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: Chungmu-sportscenter
-- ------------------------------------------------------
-- Server version	10.1.47-MariaDB-0ubuntu0.18.04.1

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
-- Table structure for table `lecture`
--

DROP TABLE IF EXISTS `lecture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lecture` (
  `id_pro` char(10) NOT NULL,
  `name_tch` varchar(10) NOT NULL,
  `name_spr` varchar(40) NOT NULL,
  `name_pro` varchar(50) NOT NULL,
  `id_tch` varchar(10) NOT NULL,
  `day_pro` varchar(5) NOT NULL,
  `time_pro` varchar(20) NOT NULL,
  `place_pro` varchar(20) NOT NULL,
  PRIMARY KEY (`id_pro`,`name_spr`,`name_pro`,`day_pro`,`time_pro`,`place_pro`,`id_tch`,`name_tch`),
  KEY `fk_lecture_1_idx` (`name_pro`),
  KEY `fk_lecture_1_idx1` (`name_spr`),
  KEY `fk_lecture_1_idx2` (`day_pro`),
  KEY `fk_lecture_1_idx3` (`id_tch`,`name_tch`),
  CONSTRAINT `fk_lecture_1` FOREIGN KEY (`id_tch`, `name_tch`) REFERENCES `teacher` (`teacherid`, `name`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `lecture_ibfk_1` FOREIGN KEY (`id_pro`, `name_spr`, `name_pro`, `day_pro`, `time_pro`, `place_pro`) REFERENCES `program` (`program_id`, `sport_name`, `program_name`, `day_lecture`, `time_lecture`, `place_lecture`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lecture`
--

LOCK TABLES `lecture` WRITE;
/*!40000 ALTER TABLE `lecture` DISABLE KEYS */;
INSERT INTO `lecture` VALUES ('Pm02','이유나','필라테스','중급 필라테스','100002','화','18:00-19:00','필라테스1실'),('Se01','이유경','수영','초급 수영','100001','월','14:00-15:00','수영1관');
/*!40000 ALTER TABLE `lecture` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-15  0:01:44
