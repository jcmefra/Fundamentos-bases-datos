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
-- Table structure for table `player_character`
--

DROP TABLE IF EXISTS `player_character`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `player_character` (
  `CharacterID` int NOT NULL AUTO_INCREMENT,
  `CharacterName` varchar(255) NOT NULL,
  `PlayerID` int DEFAULT NULL,
  `CharacterLevel` int DEFAULT NULL,
  `CharacterClass` varchar(50) DEFAULT NULL,
  `CharacterExperience` int DEFAULT NULL,
  PRIMARY KEY (`CharacterID`),
  KEY `PlayerID` (`PlayerID`),
  CONSTRAINT `player_character_ibfk_1` FOREIGN KEY (`PlayerID`) REFERENCES `player` (`PlayerID`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player_character`
--

LOCK TABLES `player_character` WRITE;
/*!40000 ALTER TABLE `player_character` DISABLE KEYS */;
INSERT INTO `player_character` VALUES (1,'CharacterF234',1,4,'Rogue',4694),(2,'CharacterN299',2,27,'Rogue',3722),(3,'CharacterW357',3,40,'Warrior',581),(4,'CharacterA106',4,47,'Mage',2946),(5,'CharacterQ326',5,19,'Warrior',4850),(6,'CharacterB855',6,1,'Mage',8255),(7,'CharacterK565',7,20,'Mage',7815),(8,'CharacterT422',8,29,'Rogue',1632),(9,'CharacterM975',9,20,'Warrior',9175),(10,'CharacterO957',10,7,'Rogue',7603),(11,'CharacterH280',11,6,'Rogue',5361),(12,'CharacterT227',12,24,'Rogue',9935),(13,'CharacterI761',13,33,'Warrior',2137),(14,'CharacterZ309',14,13,'Mage',7907),(15,'CharacterL876',15,49,'Mage',4910),(16,'CharacterP603',16,49,'Warrior',990),(17,'CharacterW182',17,42,'Rogue',7928),(18,'CharacterK666',18,48,'Rogue',3176),(19,'CharacterC587',19,21,'Mage',9243),(20,'CharacterI875',20,17,'Warrior',2442),(21,'CharacterC740',21,15,'Mage',7127),(22,'CharacterP938',22,41,'Mage',9589),(23,'CharacterY896',23,29,'Warrior',2508),(24,'CharacterR674',24,8,'Rogue',9054),(25,'CharacterX799',25,10,'Mage',5475),(26,'CharacterW712',26,41,'Rogue',5620),(27,'CharacterV470',27,30,'Rogue',32),(28,'CharacterT704',28,8,'Mage',1999),(29,'CharacterV513',29,44,'Rogue',916),(30,'CharacterQ975',30,46,'Mage',5852),(31,'CharacterY875',31,27,'Warrior',9424),(32,'CharacterJ144',32,7,'Mage',9538),(33,'CharacterJ115',33,49,'Mage',8629),(34,'CharacterB777',34,28,'Mage',198),(35,'CharacterM406',35,14,'Mage',6638),(36,'CharacterL326',36,46,'Rogue',3043),(37,'CharacterC611',37,28,'Warrior',6534),(38,'CharacterC488',38,47,'Mage',8212),(39,'CharacterD371',39,3,'Mage',5433),(40,'CharacterS897',40,17,'Rogue',8075),(41,'CharacterE492',41,34,'Warrior',1046),(42,'CharacterM996',42,30,'Rogue',1381),(43,'CharacterT346',43,8,'Rogue',3016),(44,'CharacterQ404',44,38,'Mage',3515),(45,'CharacterP962',45,50,'Warrior',2413),(46,'CharacterC769',46,22,'Rogue',5053),(47,'CharacterQ683',47,18,'Rogue',7983),(48,'CharacterS182',48,19,'Mage',7211),(49,'CharacterX447',49,11,'Rogue',6594),(50,'CharacterT736',50,17,'Mage',5075);
/*!40000 ALTER TABLE `player_character` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-17 16:38:51
