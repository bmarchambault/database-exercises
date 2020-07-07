USE codeup_test_db;
-- write queries to find the following information. Before each item, output a caption explaining the results:
--
SELECT * FROM albums;
-- The name of all albums by Pink Floyd.
SELECT 'list of all ablums' AS 'Pink Floyd';
 SELECT album FROM albums WHERE artist = 'Pink Floyd';

-- The year Sgt. Pepper's Lonely Hearts Club Band was released

SELECT 'Sgt. Peppers Lonely Hearts Club' AS 'The Beatles album';
SELECT release_date FROM albums WHERE name = 'Sgt. Peppers Lonely Hearts Club Band';

-- The genre for Nevermind
SELECT 'genre' AS 'the genre of the song Nevermind';
SELECT genre FROM albums WHERE name = 'Nevermind';

-- Which albums were released in the 1990s

SELECT 'list of albums' AS '1990''s' ;
SELECT name FROM albums WHERE release_date BETWEEN 1990 AND 1999 ;
-- Which albums had less than 20 million certified sales
SELECT 'list of albums' AS 'less than 20 million in sales' ;
SELECT name FROM albums WHERE sales >= 20.0 ;

-- All the albums with a genre of "Rock". Why do these query results not include albums with a genre of "Hard rock" or "Progressive rock"?

SELECT 'list of albums' AS 'listed as \'Rock\'';
SELECT name FROM albums WHERE genre = 'rock';