-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: rpg_game
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `player`
--

DROP TABLE IF EXISTS `player`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `player` (
  `PlayerID` int NOT NULL AUTO_INCREMENT,
  `PlayerName` varchar(255) NOT NULL,
  `Age` int DEFAULT NULL,
  `Gender` enum('Male','Female','Non Specified') NOT NULL,
  `Country` varchar(50) DEFAULT NULL,
  `GuildID` int DEFAULT NULL,
  PRIMARY KEY (`PlayerID`),
  KEY `GuildID` (`GuildID`),
  CONSTRAINT `player_ibfk_1` FOREIGN KEY (`GuildID`) REFERENCES `guild` (`GuildID`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player`
--

LOCK TABLES `player` WRITE;
/*!40000 ALTER TABLE `player` DISABLE KEYS */;
INSERT INTO `player` VALUES (1,'Admin_Game1997',26,'Male','Colombia',1),(2,'Player2',30,'Female','Canada',1),(3,'Player3',22,'Male','UK',2),(4,'Player4',28,'Non Specified','Australia',2),(5,'Player5',26,'Female','Germany',3),(6,'Player6',24,'Male','France',4),(7,'Player7',32,'Male','Spain',4),(8,'Player8',29,'Female','Italy',5),(9,'Player9',27,'Non Specified','Japan',5),(10,'Player10',23,'Male','Brazil',NULL),(11,'Player11',35,'Male','Mexico',NULL),(12,'Player12',28,'Female','Argentina',NULL),(13,'Player13',31,'Male','Russia',NULL),(14,'Player14',26,'Male','India',NULL),(15,'Player15',29,'Female','China',NULL),(16,'Player16',24,'Non Specified','South Africa',NULL),(17,'Player17',27,'Male','Egypt',NULL),(18,'Player18',33,'Male','Nigeria',NULL),(19,'Player19',30,'Female','Kenya',NULL),(20,'Player20',28,'Male','Saudi Arabia',NULL),(21,'Player21',26,'Male','United Arab Emirates',NULL),(22,'Player22',24,'Female','South Korea',NULL),(23,'Player23',25,'Female','Canada',NULL),(24,'Player24',27,'Non Specified','Germany',NULL),(25,'Player25',29,'Male','Australia',NULL),(26,'Player26',32,'Male','France',NULL),(27,'Player27',28,'Female','Spain',NULL),(28,'Player28',30,'Male','Italy',NULL),(29,'Player29',26,'Female','Japan',NULL),(30,'Player30',24,'Male','Brazil',NULL),(31,'Player31',25,'Male','Mexico',NULL),(32,'Player32',22,'Female','Argentina',NULL),(33,'Player33',27,'Male','Russia',NULL),(34,'Player34',28,'Male','India',NULL),(35,'Player35',29,'Female','China',NULL),(36,'Player36',30,'Non Specified','South Africa',NULL),(37,'Player37',31,'Male','Egypt',NULL),(38,'Player38',28,'Male','Nigeria',NULL),(39,'Player39',33,'Female','Kenya',NULL),(40,'Player40',24,'Male','Saudi Arabia',NULL),(41,'Player41',26,'Female','United Arab Emirates',NULL),(42,'Player42',29,'Male','South Korea',NULL),(43,'Player43',31,'Female','USA',NULL),(44,'Player44',27,'Non Specified','UK',NULL),(45,'Player45',26,'Male','Canada',NULL),(46,'Player46',25,'Female','Germany',NULL),(47,'Player47',24,'Male','France',NULL),(48,'Player48',30,'Male','Spain',NULL),(49,'Player49',29,'Female','Italy',NULL),(50,'Player50',28,'Male','Japan',NULL);
/*!40000 ALTER TABLE `player` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-17 16:38:50
