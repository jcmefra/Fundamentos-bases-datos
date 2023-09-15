-- Order Achievement date ascending
SELECT * FROM playerachievement
ORDER BY AchievementDate ASC;

-- Order characters by level descending
SELECT * FROM player_character
ORDER BY CharacterLevel DESC;

-- Display the first 5 items alphabetically ascending
SELECT * FROM item
ORDER BY ItemName ASC
LIMIT 5;

-- Group players by country and gender with a condition (replace WHERE with HAVING)
SELECT Gender, Country, count(*) players_quantity
FROM player
GROUP BY Gender, Country
HAVING players_quantity < 2;

-- Group players by guild and gender doing an inner join
SELECT GuildName, Gender, Count(*) Total_players
FROM guild
	INNER JOIN player ON guild.GuildID = player.GuildID
GROUP BY GuildName, Gender
ORDER BY Total_players DESC;

-- The same as above but Male and Female players are columns
SELECT
    GuildName AS Guild,
    SUM(CASE WHEN Gender = 'Male' THEN 1 ELSE 0 END) AS Male_Players,
    SUM(CASE WHEN Gender = 'Female' THEN 1 ELSE 0 END) AS Female_Players
FROM guild
INNER JOIN player ON guild.GuildID = player.GuildID
GROUP BY GuildName
ORDER BY GuildName;