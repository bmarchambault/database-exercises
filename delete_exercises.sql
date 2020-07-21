USE codeup_test_db;

-- Open up albums_seeder.sql, after your USE statement, add a TRUNCATE query to delete all records from the table before inserting.
-- Test your change and make sure you no longer get any duplicate records when running albums_seeder.sql.


-- Write SELECT statements for each with captions:
-- Convert the SELECT statements to DELETE.
-- Use the MySQL command line client to make sure your records really were removed.

-- Albums released after 1991
SELECT 'albums' AS 'released after 1991';
SELECT * FROM albums WHERE release_date >=1992;
DELETE FROM albums WHERE release_date >=1992;
-- Albums with the genre 'disco'
SELECT 'albums' AS 'disco genre';
SELECT * FROM albums WHERE genre = 'disco';
DELETE FROM albums WHERE genre = 'disco';
-- Albums by 'Whitney Houston' (...or maybe an artist of your choice)
SELECT 'albums' AS 'Metallica';
SELECT * FROM albums WHERE artist = 'Metallica';
DELETE FROM albums WHERE artist = 'Metallica';
