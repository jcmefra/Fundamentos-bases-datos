-- Create a composed query to display achievements per year grouped by the year within the first achievement ocurred
SELECT new_table_projection.date, COUNT(*) AS achievement_count
FROM (
	SELECT DATE(MIN(AchievementDate)) AS date, YEAR (AchievementDate) AS Achievement_year
    FROM playerachievement
    GROUP BY Achievement_year
) AS new_table_projection
GROUP BY new_table_projection.date 
ORDER BY new_table_projection.date; 

-- Another composed query
SELECT *
FROM PlayerAchievement
WHERE AchievementDate = (
	SELECT MAX(AchievementDate)
    FROM PlayerAchievement
);