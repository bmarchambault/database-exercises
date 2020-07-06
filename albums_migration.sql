USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE IF NOT EXISTS albums(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(100) DEFAULT 'Unknown',
    `name` VARCHAR(100),
    release_date DATE,
    sales FLOAT,
    genre VARCHAR(100),
    PRIMARY KEY (id)
);