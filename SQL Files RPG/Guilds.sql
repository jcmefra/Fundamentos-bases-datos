CREATE TABLE Guild (
    GuildID INT AUTO_INCREMENT PRIMARY KEY,
    GuildName VARCHAR(255) NOT NULL,
    GuildCreationDate DATE
);

INSERT INTO Guild (GuildName, GuildCreationDate)
VALUES
    ('Blades of Valor', '2023-09-20'),
    ('Mystic Brotherhood', '2023-09-18'),
    ('Shadowhunters', '2023-09-16'),
    ('Eternal Guardians', '2023-09-14'),
    ('Dragon Slayers', '2023-09-12');

-- Inserted data for cool guilds
