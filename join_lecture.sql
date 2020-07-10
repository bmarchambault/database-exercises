USE codeup_test_db;

DROP TABLE IF EXISTS owners;

CREATE TABLE owners (
                        id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY ,
                        name VARCHAR(30) NOT NULL ,
                        address VARCHAR(255) DEFAULT  'undisclosed'
);

DROP TABLE IF EXISTS pets;

CREATE TABLE pets (
                      id INT UNSIGNED AUTO_INCREMENT,
                      name VARCHAR(30)NOT NULL ,
                      owner_id INT UNSIGNED,
                      age INT,
                      PRIMARY KEY (id),
                      FOREIGN KEY (owner_id) REFERENCES owners(id)
);
INSERT INTO owners(name, address)
VALUES ('That Guy', '123 his address' );

INSERT INTO pets(name, owner_id, age)
VALUES ('Spot', 1, 2 );

INSERT INTO pets(name, owner_id, age)
VALUES ('Spit', 2, 8 );
# GET SEEDER INFO FROM INSTRUCTOR AND COPY AND PASTE HERE:

# =======================JOIN CODE===================
USE codeup_test_db;
# List the name and address of a pet (two tables)
SELECT pets.name, owners.address FROM pets
JOIN owners ON pets.owner_id = owners.id;

# inner join:
SELECT pets.name, owners.address FROM pets
INNER JOIN owners ON pets.owner_id = owners.id;

# left join everything from pets table but address that actually match
SELECT pets.name, owners.address FROM pets
LEFT JOIN owners ON pets.owner_id = owners.id;

# right join: shows all address and pet names
SELECT pets.name, owners.address FROM pets
RIGHT JOIN owners ON pets.owner_id = owners.id;
#

# example using employees:
USE employees;

# lets try to find the full name and the department for the employee with an employee id of 10001;
# first look at the tables.  find the path mentally
# remember, from states which table is the left.
# determine what kind of join you want.  left gives you everything from the FROM table and right gives you everything from the right join table.  if you only want one record or smaller selection, just us join or inner join (same thing)
SELECT CONCAT(employees.first_name, ' ', employees.last_name), departments.dept_name
FROM employees
JOIN dept_emp ON dept_emp.emp_no = employees.emp_no
JOIN departments ON departments.dept_no = dept_emp.dept_no
WHERE employees.emp_no = 10001;
