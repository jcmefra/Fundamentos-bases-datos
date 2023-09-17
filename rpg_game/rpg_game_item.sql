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
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item` (
  `ItemID` int NOT NULL AUTO_INCREMENT,
  `ItemName` varchar(255) NOT NULL,
  `ItemType` varchar(50) DEFAULT NULL,
  `Description` text,
  `Value` int DEFAULT NULL,
  PRIMARY KEY (`ItemID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` VALUES (1,'Sword of Flames','Weapon','A legendary sword imbued with the power of fire. It deals fiery damage to foes and can ignite them in battle.',1000),(2,'Elven Bow','Weapon','An exquisite bow crafted by skilled Elven archers. It grants exceptional accuracy and range in combat.',800),(3,'Dragon Scale Armor','Armor','Armor forged from the scales of a mighty dragon. It offers exceptional protection against fire and physical attacks.',1500),(4,'Healing Potion','Potion','A magical potion that restores health when consumed. It is a valuable tool for adventurers in need.',100),(5,'Amulet of Wisdom','Accessory','An enchanted amulet that enhances the wearer\'s wisdom and magical abilities. A favorite of spellcasters.',750),(6,'Ring of Invisibility','Accessory','A mystical ring that grants the power of invisibility to its wearer. Perfect for stealthy maneuvers.',1200),(7,'Scroll of Teleportation','Scroll','A parchment inscribed with a teleportation spell. It allows the user to instantly travel to a known location.',500),(8,'Elixir of Strength','Potion','A potent elixir that temporarily boosts the drinker\'s strength and physical prowess.',200),(9,'Dagger of Shadows','Weapon','A sleek dagger with a blade made from shadow essence. It can inflict silent and deadly strikes.',900),(10,'Helmet of Enlightenment','Armor','A helmet infused with wisdom. It provides protection against mind-affecting magic and confusion.',650),(11,'Staff of Lightning','Weapon','A staff crackling with electrical energy. It can unleash devastating lightning bolts in battle.',1100),(12,'Potion of Invisibility','Potion','A potion that renders the drinker invisible for a limited time. Useful for espionage and evasion.',250),(13,'Shield of Protection','Armor','A shield that offers enhanced protection against physical and magical attacks. A stalwart defender\'s choice.',850),(14,'Scroll of Fireball','Scroll','A scroll containing the powerful fireball spell. It can create explosive fire damage when cast.',600),(15,'Boots of Swiftness','Accessory','Boots that enhance the wearer\'s speed and agility. Ideal for swift escapes and rapid maneuvers.',700),(16,'Vial of Poison','Potion','A vial filled with a deadly poison. It can be applied to weapons for covert and lethal attacks.',300),(17,'Scepter of Healing','Weapon','A scepter with the ability to heal wounds and cure ailments. A trusted tool for benevolent healers.',950),(18,'Tome of Knowledge','Accessory','A tome filled with ancient knowledge and spells. It enhances the user\'s learning and magical abilities.',1300),(19,'Elixir of Invisibility','Potion','A refined elixir that grants invisibility for an extended period, allowing for prolonged stealth.',450),(20,'Blessed Hammer','Weapon','A divine hammer imbued with holy power. It deals radiant damage to undead and evil creatures.',1400);
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
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
