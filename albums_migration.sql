USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE IF NOT EXISTS albums(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(100) DEFAULT 'Unknown',
    `name` VARCHAR(100),
    release_date SMALLINT UNSIGNED,
    genre VARCHAR(100),
    sales FLOAT,
    PRIMARY KEY (id)
);

-- INSTRUCTOR USED:
-- release_date SMALLINT UNSIGNED (instead of just date)