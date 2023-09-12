CREATE TABLE PlayerAchievement (
    PlayerAchievementID INT AUTO_INCREMENT PRIMARY KEY,
    PlayerID INT,
    AchievementID INT,
    AchievementDate DATE,
    FOREIGN KEY (PlayerID) REFERENCES Player(PlayerID),
    FOREIGN KEY (AchievementID) REFERENCES Achievement(AchievementID)
);

INSERT INTO PlayerAchievement (PlayerID, AchievementID, AchievementDate)
VALUES
    (1, 1, '2023-09-05'), -- Player 1 earns 'Master of the Sword' achievement
    (2, 2, '2023-09-08'), -- Player 2 earns 'Explorer Extraordinaire' achievement
    (3, 3, '2023-09-10'), -- Player 3 earns 'Mage Supreme' achievement
    (4, 4, '2023-09-12'), -- Player 4 earns 'Monster Slayer' achievement
    (5, 5, '2023-09-15'); -- Player 5 earns 'Treasure Hunter' achievement

-- Inserted data for player achievements
