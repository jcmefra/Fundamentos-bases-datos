CREATE TABLE Item (
    ItemID INT AUTO_INCREMENT PRIMARY KEY,
    ItemName VARCHAR(255) NOT NULL,
    ItemType VARCHAR(50),
    Description TEXT,
    Value INT
);

INSERT INTO Item (ItemName, ItemType, Description, Value)
VALUES
    ('Sword of Flames',
     'Weapon',
     'A legendary sword imbued with the power of fire. It deals fiery damage to foes and can ignite them in battle.',
     1000),

    ('Elven Bow',
     'Weapon',
     'An exquisite bow crafted by skilled Elven archers. It grants exceptional accuracy and range in combat.',
     800),

    ('Dragon Scale Armor',
     'Armor',
     'Armor forged from the scales of a mighty dragon. It offers exceptional protection against fire and physical attacks.',
     1500),

    ('Healing Potion',
     'Potion',
     'A magical potion that restores health when consumed. It is a valuable tool for adventurers in need.',
     100),

    ('Amulet of Wisdom',
     'Accessory',
     'An enchanted amulet that enhances the wearer\'s wisdom and magical abilities. A favorite of spellcasters.',
     750),

    ('Ring of Invisibility',
     'Accessory',
     'A mystical ring that grants the power of invisibility to its wearer. Perfect for stealthy maneuvers.',
     1200),

    ('Scroll of Teleportation',
     'Scroll',
     'A parchment inscribed with a teleportation spell. It allows the user to instantly travel to a known location.',
     500),

    ('Elixir of Strength',
     'Potion',
     'A potent elixir that temporarily boosts the drinker\'s strength and physical prowess.',
     200),

    ('Dagger of Shadows',
     'Weapon',
     'A sleek dagger with a blade made from shadow essence. It can inflict silent and deadly strikes.',
     900),

    ('Helmet of Enlightenment',
     'Armor',
     'A helmet infused with wisdom. It provides protection against mind-affecting magic and confusion.',
     650),

    ('Staff of Lightning',
     'Weapon',
     'A staff crackling with electrical energy. It can unleash devastating lightning bolts in battle.',
     1100),

    ('Potion of Invisibility',
     'Potion',
     'A potion that renders the drinker invisible for a limited time. Useful for espionage and evasion.',
     250),

    ('Shield of Protection',
     'Armor',
     'A shield that offers enhanced protection against physical and magical attacks. A stalwart defender\'s choice.',
     850),

    ('Scroll of Fireball',
     'Scroll',
     'A scroll containing the powerful fireball spell. It can create explosive fire damage when cast.',
     600),

    ('Boots of Swiftness',
     'Accessory',
     'Boots that enhance the wearer\'s speed and agility. Ideal for swift escapes and rapid maneuvers.',
     700),

    ('Vial of Poison',
     'Potion',
     'A vial filled with a deadly poison. It can be applied to weapons for covert and lethal attacks.',
     300),

    ('Scepter of Healing',
     'Weapon',
     'A scepter with the ability to heal wounds and cure ailments. A trusted tool for benevolent healers.',
     950),

    ('Tome of Knowledge',
     'Accessory',
     'A tome filled with ancient knowledge and spells. It enhances the user\'s learning and magical abilities.',
     1300),

    ('Elixir of Invisibility',
     'Potion',
     'A refined elixir that grants invisibility for an extended period, allowing for prolonged stealth.',
     450),

    ('Blessed Hammer',
     'Weapon',
     'A divine hammer imbued with holy power. It deals radiant damage to undead and evil creatures.',
     1400);

-- Inserted data for 20 cool items
