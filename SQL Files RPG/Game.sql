CREATE TABLE Game (
    GameID INT AUTO_INCREMENT PRIMARY KEY,
    Title VARCHAR(255) NOT NULL,
    ReleaseDate DATE,
    Genre VARCHAR(50),
    PublisherID INT,
    DeveloperID INT,
    FOREIGN KEY (PublisherID) REFERENCES Publisher(PublisherID),
    FOREIGN KEY (DeveloperID) REFERENCES Developer(DeveloperID)
);

INSERT INTO Game (Title, ReleaseDate, Genre, PublisherID, DeveloperID)
VALUES
    ('EpicQuest: Realm of Legends',
     '2023-09-11',
     'Fantasy RPG',
     1, 1);

