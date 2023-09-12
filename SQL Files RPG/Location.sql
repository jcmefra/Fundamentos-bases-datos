CREATE TABLE Location (
    LocationID INT AUTO_INCREMENT PRIMARY KEY,
    LocationName VARCHAR(255) NOT NULL,
    Region VARCHAR(50),
    Description TEXT
);

-- Add 5 cool locations

INSERT INTO Location (LocationName, Region, Description)
VALUES
    ('Mystic Forest',
     'Enchanted Woods',
     'The Mystic Forest is a magical and mystical place filled with ancient trees, glowing mushrooms, and mysterious creatures. It is said that powerful spells and hidden treasures can be found deep within the forest.'),
     
    ('Dragon''s Peak',
     'Fire Mountains',
     'Dragon''s Peak is a treacherous volcano located high in the Fire Mountains. It is home to fearsome fire-breathing dragons and is rumored to be the source of powerful dragon magic.'),
     
    ('Crystal Caves',
     'Crystal Canyon',
     'The Crystal Caves are a breathtaking network of caves adorned with stunning, luminescent crystals. Adventurers come here to harvest the valuable crystal shards and discover hidden chambers.'),
     
    ('Shadowrealm Abyss',
     'Dark Abyss',
     'The Shadowrealm Abyss is a dark and foreboding abyss shrouded in eternal night. Its depths are inhabited by shadowy creatures and guarded by ancient, malevolent spirits.'),
     
    ('Elysian Fields',
     'Celestial Plains',
     'The Elysian Fields are a paradise of lush meadows, radiant flowers, and clear, flowing rivers. It is said to be the resting place of heroes and a sanctuary for the virtuous.');

-- Inserted data for five cool locations with corrected quotes

-- Inserted data for five cool locations
