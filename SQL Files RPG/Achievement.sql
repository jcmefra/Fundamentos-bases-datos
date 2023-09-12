CREATE TABLE Achievement (
    AchievementID INT AUTO_INCREMENT PRIMARY KEY,
    AchievementName VARCHAR(255) NOT NULL,
    Description TEXT,
    AchievementPoints INT
);

INSERT INTO Achievement (AchievementName, Description, AchievementPoints)
VALUES
    ('Master of the Sword',
     'Achieve mastery in swordsmanship by defeating challenging foes with your blade. A true swordmaster!',
     50),

    ('Explorer Extraordinaire',
     'Explore every nook and cranny of the game world, uncovering hidden treasures and secrets.',
     75),

    ('Mage Supreme',
     'Master the arcane arts of magic by learning and casting a wide range of powerful spells.',
     60),

    ('Monster Slayer',
     'Defeat a horde of legendary monsters, from fire-breathing dragons to ancient behemoths.',
     80),

    ('Treasure Hunter',
     'Hunt down rare and valuable treasures hidden in the darkest dungeons and the most remote corners of the world.',
     70),

    ('Hero of the Realm',
     'Complete the epic questline, vanquish the ultimate evil, and become the true hero of the realm.',
     100),

    ('Legendary Alchemist',
     'Unlock the secrets of alchemy and create potent potions and elixirs with mystical properties.',
     55),

    ('Guild Leader',
     'Establish and lead your own guild, guiding your fellow adventurers to glory and fame.',
     90),

    ('Master of Stealth',
     'Become a master of stealth and espionage, infiltrating enemy strongholds and remaining unseen.',
     65),

    ('Epic Quest Champion',
     'Complete a series of epic quests that challenge your skills and determination as a hero.',
     85);

-- Inserted data for 10 cool achievements
