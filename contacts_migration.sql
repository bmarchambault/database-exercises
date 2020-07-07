USE codeup_test_db;

DROP TABLE IF EXISTS contacts;

CREATE TABLE IF NOT EXISTS contacts(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `Name` VARCHAR(100) NOT NULL,
    Email VARCHAR(100),
    `Phone Number` VARCHAR(12) NOT NULL,
    `Created At` DATETIME,
    `Updated At` DATETIME,
    PRIMARY KEY (id)
);