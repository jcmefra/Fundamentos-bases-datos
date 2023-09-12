-- Create table for characters
CREATE TABLE player_character (
    CharacterID INT AUTO_INCREMENT PRIMARY KEY,
    CharacterName VARCHAR(255) NOT NULL,
    PlayerID INT,
    CharacterLevel INT,
    CharacterClass VARCHAR(50),
    CharacterExperience INT,
    FOREIGN KEY (PlayerID) REFERENCES Player(PlayerID)
);

-- Insert 50 characters for the 50 players
INSERT INTO player_character (CharacterName, PlayerID, CharacterLevel, CharacterClass, CharacterExperience)
SELECT
    CONCAT(
        'Character',
        CHAR(65 + FLOOR(RAND() * 26)), -- Random uppercase letter
        FLOOR(100 + RAND() * 900) -- Random 3-digit number
    ),
    PlayerID,
    FLOOR(1 + RAND() * 50), -- Random character level between 1 and 50
    CASE ROUND(RAND() * 2)
        WHEN 0 THEN 'Warrior'
        WHEN 1 THEN 'Mage'
        ELSE 'Rogue'
    END,
    FLOOR(0 + RAND() * 10000) -- Random experience points between 0 and 10,000
FROM player
LIMIT 50;
