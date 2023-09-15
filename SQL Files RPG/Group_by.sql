-- Group items by item type and count how many are
SELECT ItemType, Count(*) Item_Quantity
FROM item
GROUP BY ItemType;

-- Group players by country and count how many are
SELECT Country, Count(*) players_by_country
FROM player
GROUP BY Country;

-- Group players by country and gender
SELECT Gender, Country, count(*) players_quantity
FROM player
GROUP BY Gender, Country;
