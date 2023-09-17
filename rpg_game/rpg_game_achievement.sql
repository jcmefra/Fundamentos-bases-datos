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
-- Table structure for table `achievement`
--

DROP TABLE IF EXISTS `achievement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `achievement` (
  `AchievementID` int NOT NULL AUTO_INCREMENT,
  `AchievementName` varchar(255) NOT NULL,
  `Description` text,
  `AchievementPoints` int DEFAULT NULL,
  PRIMARY KEY (`AchievementID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `achievement`
--

LOCK TABLES `achievement` WRITE;
/*!40000 ALTER TABLE `achievement` DISABLE KEYS */;
INSERT INTO `achievement` VALUES (1,'Master of the Sword','Achieve mastery in swordsmanship by defeating challenging foes with your blade. A true swordmaster!',50),(2,'Explorer Extraordinaire','Explore every nook and cranny of the game world, uncovering hidden treasures and secrets.',75),(3,'Mage Supreme','Master the arcane arts of magic by learning and casting a wide range of powerful spells.',60),(4,'Monster Slayer','Defeat a horde of legendary monsters, from fire-breathing dragons to ancient behemoths.',80),(5,'Treasure Hunter','Hunt down rare and valuable treasures hidden in the darkest dungeons and the most remote corners of the world.',70),(6,'Hero of the Realm','Complete the epic questline, vanquish the ultimate evil, and become the true hero of the realm.',100),(7,'Legendary Alchemist','Unlock the secrets of alchemy and create potent potions and elixirs with mystical properties.',55),(8,'Guild Leader','Establish and lead your own guild, guiding your fellow adventurers to glory and fame.',90),(9,'Master of Stealth','Become a master of stealth and espionage, infiltrating enemy strongholds and remaining unseen.',65),(10,'Epic Quest Champion','Complete a series of epic quests that challenge your skills and determination as a hero.',85);
/*!40000 ALTER TABLE `achievement` ENABLE KEYS */;
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
