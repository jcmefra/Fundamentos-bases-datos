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

--
-- Table structure for table `developer`
--

DROP TABLE IF EXISTS `developer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `developer` (
  `DeveloperID` int NOT NULL AUTO_INCREMENT,
  `DeveloperName` varchar(255) NOT NULL,
  PRIMARY KEY (`DeveloperID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `developer`
--

LOCK TABLES `developer` WRITE;
/*!40000 ALTER TABLE `developer` DISABLE KEYS */;
INSERT INTO `developer` VALUES (1,'Usiboft Game Studios');
/*!40000 ALTER TABLE `developer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `game`
--

DROP TABLE IF EXISTS `game`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `game` (
  `GameID` int NOT NULL AUTO_INCREMENT,
  `Title` varchar(255) NOT NULL,
  `ReleaseDate` date DEFAULT NULL,
  `Genre` varchar(50) DEFAULT NULL,
  `PublisherID` int DEFAULT NULL,
  `DeveloperID` int DEFAULT NULL,
  PRIMARY KEY (`GameID`),
  KEY `PublisherID` (`PublisherID`),
  KEY `DeveloperID` (`DeveloperID`),
  CONSTRAINT `game_ibfk_1` FOREIGN KEY (`PublisherID`) REFERENCES `publisher` (`PublisherID`),
  CONSTRAINT `game_ibfk_2` FOREIGN KEY (`DeveloperID`) REFERENCES `developer` (`DeveloperID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `game`
--

LOCK TABLES `game` WRITE;
/*!40000 ALTER TABLE `game` DISABLE KEYS */;
INSERT INTO `game` VALUES (1,'EpicQuest: Realm of Legends','2023-09-11','Fantasy RPG',1,1);
/*!40000 ALTER TABLE `game` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guild`
--

DROP TABLE IF EXISTS `guild`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `guild` (
  `GuildID` int NOT NULL AUTO_INCREMENT,
  `GuildName` varchar(255) NOT NULL,
  `GuildCreationDate` date DEFAULT NULL,
  PRIMARY KEY (`GuildID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guild`
--

LOCK TABLES `guild` WRITE;
/*!40000 ALTER TABLE `guild` DISABLE KEYS */;
INSERT INTO `guild` VALUES (1,'Blades of Valor','2023-09-20'),(2,'Mystic Brotherhood','2023-09-18'),(3,'Shadowhunters','2023-09-16'),(4,'Eternal Guardians','2023-09-14'),(5,'Dragon Slayers','2023-09-12');
/*!40000 ALTER TABLE `guild` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory`
--

DROP TABLE IF EXISTS `inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventory` (
  `InventoryID` int NOT NULL AUTO_INCREMENT,
  `CharacterID` int DEFAULT NULL,
  `ItemID` int DEFAULT NULL,
  `Quantity` int DEFAULT NULL,
  PRIMARY KEY (`InventoryID`),
  KEY `CharacterID` (`CharacterID`),
  KEY `ItemID` (`ItemID`),
  CONSTRAINT `inventory_ibfk_1` FOREIGN KEY (`CharacterID`) REFERENCES `player_character` (`CharacterID`),
  CONSTRAINT `inventory_ibfk_2` FOREIGN KEY (`ItemID`) REFERENCES `item` (`ItemID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory`
--

LOCK TABLES `inventory` WRITE;
/*!40000 ALTER TABLE `inventory` DISABLE KEYS */;
INSERT INTO `inventory` VALUES (1,1,1,3),(2,2,2,1),(3,2,3,2),(4,3,4,1);
/*!40000 ALTER TABLE `inventory` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `location` (
  `LocationID` int NOT NULL AUTO_INCREMENT,
  `LocationName` varchar(255) NOT NULL,
  `Region` varchar(50) DEFAULT NULL,
  `Description` text,
  PRIMARY KEY (`LocationID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
INSERT INTO `location` VALUES (1,'Mystic Forest','Enchanted Woods','The Mystic Forest is a magical and mystical place filled with ancient trees, glowing mushrooms, and mysterious creatures. It is said that powerful spells and hidden treasures can be found deep within the forest.'),(2,'Dragon\'s Peak','Fire Mountains','Dragon\'s Peak is a treacherous volcano located high in the Fire Mountains. It is home to fearsome fire-breathing dragons and is rumored to be the source of powerful dragon magic.'),(3,'Crystal Caves','Crystal Canyon','The Crystal Caves are a breathtaking network of caves adorned with stunning, luminescent crystals. Adventurers come here to harvest the valuable crystal shards and discover hidden chambers.'),(4,'Shadowrealm Abyss','Dark Abyss','The Shadowrealm Abyss is a dark and foreboding abyss shrouded in eternal night. Its depths are inhabited by shadowy creatures and guarded by ancient, malevolent spirits.'),(5,'Elysian Fields','Celestial Plains','The Elysian Fields are a paradise of lush meadows, radiant flowers, and clear, flowing rivers. It is said to be the resting place of heroes and a sanctuary for the virtuous.');
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `playerachievement`
--

DROP TABLE IF EXISTS `playerachievement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `playerachievement` (
  `PlayerAchievementID` int NOT NULL AUTO_INCREMENT,
  `PlayerID` int DEFAULT NULL,
  `AchievementID` int DEFAULT NULL,
  `AchievementDate` date DEFAULT NULL,
  PRIMARY KEY (`PlayerAchievementID`),
  KEY `PlayerID` (`PlayerID`),
  KEY `AchievementID` (`AchievementID`),
  CONSTRAINT `playerachievement_ibfk_1` FOREIGN KEY (`PlayerID`) REFERENCES `player` (`PlayerID`),
  CONSTRAINT `playerachievement_ibfk_2` FOREIGN KEY (`AchievementID`) REFERENCES `achievement` (`AchievementID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playerachievement`
--

LOCK TABLES `playerachievement` WRITE;
/*!40000 ALTER TABLE `playerachievement` DISABLE KEYS */;
INSERT INTO `playerachievement` VALUES (1,1,1,'2023-09-05'),(2,2,2,'2023-09-08'),(3,3,3,'2023-09-10'),(4,4,4,'2023-09-12'),(5,5,5,'2023-09-15');
/*!40000 ALTER TABLE `playerachievement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publisher`
--

DROP TABLE IF EXISTS `publisher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `publisher` (
  `PublisherID` int NOT NULL AUTO_INCREMENT,
  `PublisherName` varchar(255) NOT NULL,
  PRIMARY KEY (`PublisherID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publisher`
--

LOCK TABLES `publisher` WRITE;
/*!40000 ALTER TABLE `publisher` DISABLE KEYS */;
INSERT INTO `publisher` VALUES (1,'MEFRAG Games Co.');
/*!40000 ALTER TABLE `publisher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quest`
--

DROP TABLE IF EXISTS `quest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quest` (
  `QuestID` int NOT NULL AUTO_INCREMENT,
  `QuestName` varchar(255) NOT NULL,
  `QuestDescription` text,
  `QuestLevel` int DEFAULT NULL,
  `QuestReward` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`QuestID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quest`
--

LOCK TABLES `quest` WRITE;
/*!40000 ALTER TABLE `quest` DISABLE KEYS */;
INSERT INTO `quest` VALUES (1,'The Dragon\'s Lair','Defeat the fearsome dragon that guards its lair in the Fire Mountains. Only the bravest can face it!',10,'Dragon Scale Armor'),(2,'The Lost Artifact','Embark on a journey to recover a long-lost artifact hidden in the depths of the Crystal Caves.',8,'Ancient Relic'),(3,'Dark Shadows Rising','Investigate the mysterious resurgence of dark creatures in the Shadowrealm Abyss. Stop the darkness!',12,'Shadowbane Sword'),(4,'The Celestial Trials','Ascend to the Celestial Plains and prove your worth by completing a series of celestial trials.',15,'Elysian Crown'),(5,'Hunt for the Ghost Ship','Sail the treacherous seas and hunt down the legendary ghost ship that haunts the coast.',9,'Spectral Compass');
/*!40000 ALTER TABLE `quest` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-14 22:03:04
