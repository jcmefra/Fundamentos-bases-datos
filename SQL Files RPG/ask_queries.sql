-- I want to know how many achievements do players have grouped by level
SELECT player_character.CharacterLevel, COUNT(*) num_achievements
FROM player_character
	INNER JOIN player ON player.PlayerID = player_character.PlayerID
    INNER JOIN playerachievement ON player.PlayerID = playerachievement.PlayerID
    INNER JOIN achievement ON playerachievement.AchievementID = achievement.AchievementID
GROUP BY player_character.CharacterLevel;

-- I want to know which achievements do they have
SELECT player_character.CharacterLevel, group_concat(achievementname) Achievements
FROM player_character
	INNER JOIN player ON player.PlayerID = player_character.PlayerID
    INNER JOIN playerachievement ON player.PlayerID = playerachievement.PlayerID
    INNER JOIN achievement ON playerachievement.AchievementID = achievement.AchievementID
GROUP BY player_character.CharacterLevel;

-- What achievement is not achieved yet
SELECT *
FROM achievement
	LEFT JOIN playerachievement ON achievement.AchievementID = playerachievement.AchievementID
WHERE playerachievement.AchievementID IS NULL;
