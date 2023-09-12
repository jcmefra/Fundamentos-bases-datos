CREATE TABLE Inventory (
    InventoryID INT AUTO_INCREMENT PRIMARY KEY,
    CharacterID INT,
    ItemID INT,
    Quantity INT,
    FOREIGN KEY (CharacterID) REFERENCES player_character(CharacterID),
    FOREIGN KEY (ItemID) REFERENCES Item(ItemID)
);

-- Add items to a character's inventory
-- CharacterID 1 has 3 Health Potions
INSERT INTO Inventory (CharacterID, ItemID, Quantity)
VALUES
    (1, 1, 3); -- Health Potion (ItemID 1)

-- CharacterID 2 has 1 Elven Bow and 2 Healing Potions
INSERT INTO Inventory (CharacterID, ItemID, Quantity)
VALUES
    (2, 2, 1), -- Elven Bow (ItemID 2)
    (2, 3, 2); -- Healing Potion (ItemID 3)

-- CharacterID 3 has 1 Dragon Scale Armor
INSERT INTO Inventory (CharacterID, ItemID, Quantity)
VALUES
    (3, 4, 1); -- Dragon Scale Armor (ItemID 4)

