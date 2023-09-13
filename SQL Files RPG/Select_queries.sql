-- Selecting all from a table
SELECT *
FROM achievement;

-- Selecting certain fields of a table
SELECT ItemID, ItemName, Description
FROM item;

-- Changing field display name using AS
SELECT ItemID AS ID, ItemName AS Item, Description
FROM item;

-- Display certain information (it's temporary), here we display how many achievements are 
SELECT COUNT(*) AS num_items
FROM achievement;

-- Selecting how many players-per-country don't have a guild yet
SELECT country, COUNT(*) AS total
FROM player
WHERE GuildID IS NULL
GROUP BY country
HAVING total >= 2
ORDER BY total DESC;

