-- From and Join can help us to combine tables, PK and FK

-- Left Join Guild and Player (display all guilds and what players they have)
SELECT *
FROM guild
	LEFT JOIN player ON guild.GuildID = player.GuildID;
    
-- Left join Guild and Player (display all guilds that don't have players)
SELECT *
FROM guild
	LEFT JOIN player ON guild.GuildID = player.GuildID
WHERE player.GuildID IS NULL;

-- Right Join Guild and Player (display all players and what guilds are they in including players without guild)
SELECT *
FROM guild
	RIGHT JOIN player ON guild.GuildID = player.GuildID;
    
-- Right Join Guild and Player (display all players that don't have guilds)
SELECT *
FROM guild
	RIGHT JOIN player ON guild.GuildID = player.GuildID
WHERE player.GuildID IS NULL;

-- Inner Join Guild and Player (display only players that have guilds)
SELECT *
FROM guild
	INNER JOIN player ON guild.GuildID = player.GuildID;
    
-- Full Join (Display all guilds and players no matter if they are related or not)
SELECT *
FROM guild
	LEFT JOIN player ON guild.GuildID = player.GuildID
UNION
SELECT *
FROM guild
	RIGHT JOIN player ON guild.GuildID = player.GuildID;
    
-- Symmetric difference (Display only player and guilds that are not related)
SELECT *
FROM guild
	LEFT JOIN player ON guild.GuildID = player.GuildID
WHERE player.GuildID IS NULL
UNION
SELECT *
FROM guild
	RIGHT JOIN player ON guild.GuildID = player.GuildID
WHERE player.GuildID IS NULL;