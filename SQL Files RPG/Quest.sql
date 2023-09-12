CREATE TABLE Quest (
    QuestID INT AUTO_INCREMENT PRIMARY KEY,
    QuestName VARCHAR(255) NOT NULL,
    QuestDescription TEXT,
    QuestLevel INT,
    QuestReward VARCHAR(255)
);

-- Add quests to the "Quest" table with escaped single quotes
INSERT INTO Quest (QuestName, QuestDescription, QuestLevel, QuestReward)
VALUES
    ('The Dragon''s Lair',
     'Defeat the fearsome dragon that guards its lair in the Fire Mountains. Only the bravest can face it!',
     10,
     'Dragon Scale Armor'),

    ('The Lost Artifact',
     'Embark on a journey to recover a long-lost artifact hidden in the depths of the Crystal Caves.',
     8,
     'Ancient Relic'),

    ('Dark Shadows Rising',
     'Investigate the mysterious resurgence of dark creatures in the Shadowrealm Abyss. Stop the darkness!',
     12,
     'Shadowbane Sword'),

    ('The Celestial Trials',
     'Ascend to the Celestial Plains and prove your worth by completing a series of celestial trials.',
     15,
     'Elysian Crown'),

    ('Hunt for the Ghost Ship',
     'Sail the treacherous seas and hunt down the legendary ghost ship that haunts the coast.',
     9,
     'Spectral Compass');

-- Inserted data for quests with escaped single quotes
