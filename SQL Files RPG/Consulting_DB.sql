-- Order Character by how many items they have and what items
SELECT pc.CharacterName, COUNT(*) as cant_items, GROUP_CONCAT(ItemName)
FROM player_character AS pc
	INNER JOIN inventory AS inv ON pc.CharacterID = inv.CharacterID
    INNER JOIN item ON inv.ItemID = item.ItemID
GROUP BY pc.CharacterID
ORDER BY cant_items DESC;