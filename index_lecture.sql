USE codeup_test_db;

DROP TABLE IF EXISTS pets;

CREATE TABLE pets(
    id INT UNSIGNED,
    pet_name VARCHAR(30) NOT NULL ,
    owner_name VARCHAR(30),
    age INT
);

DESCRIBE pets;

# add a primary key (modifying the existing table without recreating it)
# you have to fully define it you cant just add whats missing.
ALTER TABLE pets
MODIFY COLUMN id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT;

# drop a primary key (do it in steps.
ALTER TABLE pets
MODIFY COLUMN id INT;

ALTER TABLE pets
DROP PRIMARY KEY ;

SHOW CREATE TABLE pets;

# Define the primary key on the table creation:
DROP TABLE pets;
CREATE TABLE pets(
                     id INT UNSIGNED PRIMARY KEY ,
                     pet_name VARCHAR(30) NOT NULL ,
                     owner_name VARCHAR(30),
                     age INT
);
DESCRIBE pets;

# Define a primary key for mulitple columns (only for demo purposes)
DROP TABLE pets;
CREATE TABLE pets(
                     id INT UNSIGNED,
                     pet_name VARCHAR(30) NOT NULL ,
                     owner_name VARCHAR(30),
                     age INT,
                    PRIMARY KEY (id, age)
);
DESCRIBE pets;

# add a name index - manually, after the fact
ALTER TABLE pets
ADD INDEX `pet_name_key` (pet_name);
# back tics are good practice to separate variable names as well as ensure you don't get a reserved word error.

# Drop name index
ALTER TABLE pets
DROP INDEX pet_name_key;

SHOW INDEX FROM pets;
# ==========UNIQUE INDEX===============

# create pets with unique name and ower

    #create using create table:
DROP TABLE IF EXISTS pets;

CREATE TABLE pets (
    id INT UNSIGNED AUTO_INCREMENT,
    pet_name VARCHAR(30)NOT NULL ,
    owner_name VARCHAR(30),
    age INT,
    PRIMARY KEY (id),
    UNIQUE unique_pn_on (pet_name, owner_name)
);

DESCRIBE pets;

# test unique constraint
INSERT INTO pets (pet_name, owner_name, age)
VALUES ('Buddy', 'Jack Smith', 3);

INSERT INTO pets (pet_name, owner_name, age)
VALUES ('Buddy', 'Carol Smith', 3);

INSERT INTO pets (pet_name, owner_name, age)
VALUES ('Buddy', 'Jack Keller', 3);

# this one will give you a duplicate error even though age is different because pet name and owner name are the same.
INSERT INTO pets (pet_name, owner_name, age)
VALUES ('Buddy', 'Jack Smith', 6);

# ==========================FORIEGN KEYS======================
# by separating respectively relevant data into their own tables, we're able to do a lot more stuff.
DROP TABLE IF EXISTS owners;

CREATE TABLE owners (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY ,
    name VARCHAR(30) NOT NULL ,
    address VARCHAR(255) DEFAULT  'undisclosed'
);

DROP TABLE IF EXISTS pets;

# this table creates an owner id.  that key references the table above.
CREATE TABLE pets (
      id INT UNSIGNED AUTO_INCREMENT,
      pet_name VARCHAR(30)NOT NULL ,
      owner_id INT UNSIGNED,
      age INT,
      PRIMARY KEY (id),
      FOREIGN KEY (owner_id) REFERENCES owners(id)
);

DESCRIBE pets;

INSERT INTO pets (pet_name, owner_id, age)
VALUES ('Puddle', null, 2);

INSERT INTO owners (name, address)
VALUES ('Parker Mike', '1234 Over There');

INSERT INTO owners (name, address)
VALUES ('Dayma Stevens', '1234 That Way');

INSERT INTO owners (name)
VALUES ('Cheryl Andrews');

INSERT INTO pets (pet_name, owner_id, age)
VALUES ('Cow', 2, 2);

INSERT INTO pets (pet_name, owner_id, age)
VALUES ('Spit', 1, 9);

INSERT INTO pets (pet_name, owner_id, age)
VALUES ('Soot', 3, 14);