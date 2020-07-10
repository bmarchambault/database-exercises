# USE your employees database.
USE employees;
# DESCRIBE each table and inspect the keys and see which columns have indexes and keys.
SHOW TABLES;
DESCRIBE departments;
DESCRIBE dept_emp;
DESCRIBE dept_manager;
DESCRIBE employees;
DESCRIBE salaries;
DESCRIBE titles;

# USE your codeup_test_db database.
USE codeup_test_db;
SHOW TABLES ;
DESCRIBE albums;
# Add an index to make sure all album names combined with the artist are unique. Try to add duplicates to test the constraint.
ALTER TABLE albums
    ADD UNIQUE unique_artist_album(`artist`, `name` );

DESCRIBE albums;
