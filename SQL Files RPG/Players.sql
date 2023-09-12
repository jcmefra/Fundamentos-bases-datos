CREATE TABLE Player (
    PlayerID INT AUTO_INCREMENT PRIMARY KEY,
    PlayerName VARCHAR(255) NOT NULL,
    Age INT,
    Gender ENUM('Male', 'Female', 'Non Specified') NOT NULL,
    Country VARCHAR(50)
);

INSERT INTO Player (PlayerName, Age, Gender, Country)
VALUES
    ('Player1', 25, 'Male', 'USA'),
    ('Player2', 30, 'Female', 'Canada'),
    ('Player3', 22, 'Male', 'UK'),
    ('Player4', 28, 'Non Specified', 'Australia'),
    ('Player5', 26, 'Female', 'Germany'),
    ('Player6', 24, 'Male', 'France'),
    ('Player7', 32, 'Male', 'Spain'),
    ('Player8', 29, 'Female', 'Italy'),
    ('Player9', 27, 'Non Specified', 'Japan'),
    ('Player10', 23, 'Male', 'Brazil'),
    ('Player11', 35, 'Male', 'Mexico'),
    ('Player12', 28, 'Female', 'Argentina'),
    ('Player13', 31, 'Male', 'Russia'),
    ('Player14', 26, 'Male', 'India'),
    ('Player15', 29, 'Female', 'China'),
    ('Player16', 24, 'Non Specified', 'South Africa'),
    ('Player17', 27, 'Male', 'Egypt'),
    ('Player18', 33, 'Male', 'Nigeria'),
    ('Player19', 30, 'Female', 'Kenya'),
    ('Player20', 28, 'Male', 'Saudi Arabia'),
    ('Player21', 26, 'Male', 'United Arab Emirates'),
    ('Player22', 24, 'Female', 'South Korea'),
    ('Player23', 25, 'Female', 'Canada'),
    ('Player24', 27, 'Non Specified', 'Germany'),
    ('Player25', 29, 'Male', 'Australia'),
    ('Player26', 32, 'Male', 'France'),
    ('Player27', 28, 'Female', 'Spain'),
    ('Player28', 30, 'Male', 'Italy'),
    ('Player29', 26, 'Female', 'Japan'),
    ('Player30', 24, 'Male', 'Brazil'),
    ('Player31', 25, 'Male', 'Mexico'),
    ('Player32', 22, 'Female', 'Argentina'),
    ('Player33', 27, 'Male', 'Russia'),
    ('Player34', 28, 'Male', 'India'),
    ('Player35', 29, 'Female', 'China'),
    ('Player36', 30, 'Non Specified', 'South Africa'),
    ('Player37', 31, 'Male', 'Egypt'),
    ('Player38', 28, 'Male', 'Nigeria'),
    ('Player39', 33, 'Female', 'Kenya'),
    ('Player40', 24, 'Male', 'Saudi Arabia'),
    ('Player41', 26, 'Female', 'United Arab Emirates'),
    ('Player42', 29, 'Male', 'South Korea'),
    ('Player43', 31, 'Female', 'USA'),
    ('Player44', 27, 'Non Specified', 'UK'),
    ('Player45', 26, 'Male', 'Canada'),
    ('Player46', 25, 'Female', 'Germany'),
    ('Player47', 24, 'Male', 'France'),
    ('Player48', 30, 'Male', 'Spain'),
    ('Player49', 29, 'Female', 'Italy'),
    ('Player50', 28, 'Male', 'Japan');


UPDATE player
SET PlayerName = "Admin_Game1997", Age = 26
WHERE PlayerID = 1;

UPDATE player
SET Country = 'Colombia'
WHERE PlayerID = 1;

ALTER TABLE Player
ADD GuildID INT,
ADD FOREIGN KEY (GuildID) REFERENCES Guild(GuildID);

-- Assign players to guilds
-- PlayerID 1 and 2 belong to "Blades of Valor"
UPDATE Player
SET GuildID = 1 -- GuildID for "Blades of Valor"
WHERE PlayerID IN (1, 2);

-- PlayerID 3 and 4 belong to "Mystic Brotherhood"
UPDATE Player
SET GuildID = 2 -- GuildID for "Mystic Brotherhood"
WHERE PlayerID IN (3, 4);

-- PlayerID 5 belongs to "Shadowhunters"
UPDATE Player
SET GuildID = 3 -- GuildID for "Shadowhunters"
WHERE PlayerID = 5;

-- PlayerID 6 and 7 belong to "Eternal Guardians"
UPDATE Player
SET GuildID = 4 -- GuildID for "Eternal Guardians"
WHERE PlayerID IN (6, 7);

-- PlayerID 8 and 9 belong to "Dragon Slayers"
UPDATE Player
SET GuildID = 5 -- GuildID for "Dragon Slayers"
WHERE PlayerID IN (8, 9);

