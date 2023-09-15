-- Display characters whose ID is higher than 20
SELECT *
FROM player_character
WHERE CharacterID > 20;

-- Filter characters to display only Mages
SELECT *
FROM player_character
WHERE CharacterClass = 'Mage';

-- Display only achievements whose description contain "magic"
SELECT *
FROM achievement
WHERE Description LIKE '%magic%';

-- Display only achievements gotten from 2023-09-12 on
SELECT *
FROM playerachievement
WHERE AchievementDate >= '2023-09-12';

-- " " Between two dates, it can be done with years as well using YEAR(AchievementDate) instead
-- We can also use month by using MONTH(AchievementDate)
SELECT *
FROM playerachievement
WHERE AchievementDate BETWEEN '2023-09-10' AND '2023-09-15';

-- Display users whose GuildID is null
SELECT *
FROM player
WHERE GuildID IS NULL;

-- Display users whose GuildID is not null and and are older than 24 and also are male
SELECT *
FROM player
WHERE GuildID IS NOT NULL
AND Age > 24
AND Gender = 'Male';
