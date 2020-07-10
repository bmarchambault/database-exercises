# Create a database named join_test_db and run the SQL provided in the Join Example DB section above; to create the same setup used for this lesson.
CREATE DATABASE join_test_db;

USE join_test_db;

DROP TABLE IF EXISTS roles;
CREATE TABLE roles (
                       id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                       name VARCHAR(100) NOT NULL,
                       PRIMARY KEY (id)
);
DROP TABLE IF EXISTS users;
CREATE TABLE users (
                       id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                       name VARCHAR(100) NOT NULL,
                       email VARCHAR(100) NOT NULL,
                       role_id INT UNSIGNED DEFAULT NULL,
                       PRIMARY KEY (id),
                       FOREIGN KEY (role_id) REFERENCES roles (id)
);
show tables;
DESCRIBE roles;
SELECT * FROM roles;
DESCRIBE users;

INSERT INTO roles (name) VALUES ('admin');
INSERT INTO roles (name) VALUES ('author');
INSERT INTO roles (name) VALUES ('reviewer');
INSERT INTO roles (name) VALUES ('commenter');

INSERT INTO users (name, email, role_id) VALUES
('bob', 'bob@example.com', 1),
('joe', 'joe@example.com', 2),
('sally', 'sally@example.com', 3),
('adam', 'adam@example.com', 3),
('jane', 'jane@example.com', null),
('mike', 'mike@example.com', null);
#
# Insert 4 new users into the database. One should have a NULL role. The other three should be authors.
INSERT INTO users (name, email, role_id) VALUES
('chris', 'chris@example.com', 2),
('amber', 'amber@example.com', 2),
('henry', 'henry@example.com', 2),
('mary', 'mary@example.com', null);


# Use join, left join, and right join to combine results from the users and roles tables as we did in the lesson. Before you run each query, guess the expected number of results.
SELECT users.name, roles.name
FROM  users
JOIN roles ON users.role_id = roles.id;

SELECT users.name, roles.name
FROM users
LEFT JOIN roles ON users.role_id = roles.id;

SELECT users.name, roles.name
FROM roles
RIGHT JOIN users ON roles.id = role_id;

#
# Although not explicitly covered in the lesson, aggregate functions like count can be used with join queries.
# Use count and the appropriate join type to get a list of roles along with the number of users that have a given role. Hint: You will also need to use group by in the query.



