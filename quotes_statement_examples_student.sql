USE quotes_db;


/*********************** SELECT ***********************/
-- find and return rows from tables
-- TODO TOGETHER: View the author last name and the quote from quotes. Before the output, add a caption explaining the results.
SELECT author_last_name, quote FROM quotes;

-- TODO TOGETHER: Select all information from the quotes table. Before the output, add a caption explaining the results.
-- a misc output is the first set in quotes of the following caption syntax:
SELECT 'This is all the info from the quotes table' AS 'caption results';
-- copy and paste above into mysql terminal prompt.

-- Notice how the id has been auto-incrementing on each insert.
SELECT * FROM quotes;


/*********************** WHERE ***********************/

-- TODO TOGETHER: View quotes by Douglas Adams.
-- SELECT quote FROM quotes WHERE author_last_name = 'Adams';
-- format above like:
SELECT quote
FROM quotes
WHERE author_last_name = 'Adams';
-- if you want everything - change the word quote to a *

-- TODO TOGETHER: View quotes by Douglas Adams. Add a caption
SELECT quotes AS 'Douglas Adams Quotes' FROM quotes WHERE author_last_name = 'Adams';


-- TODO TOGETHER: View quote with primary key (in this case id) of 5
SELECT * FROM quotes WHERE id = 5;

-- TODO TOGETHER: Select all from quotes where quote contains(is like) "the"

SELECT * FROM quotes WHERE quote LIKE '%the%';



/*********************** UPDATE ***********************/
-- update existing rows of data
-- must include a where clause:
-- syntax:  UPDATE table_name SET column1 = 'value1', column2 = 'value2' WHERE columnA = 'valueA';
-- TODO TOGETHER: View all quotes


-- TODO TOGETHER: Update quote 4 to first name = Samuel and last name = Clemens
-- view everything to find what you want to update:
SELECT * FROM quotes WHERE id = 4;
-- test that you can single out what you want to change.
SELECT author_first_name, author_last_name FROM quotes WHERE id = 4;
-- update:
UPDATE quotes SET author_first_name = 'Samuel', author_last_name = 'Clemens' WHERE id = 4;

/*********************** DELETE ***********************/
-- syntax:  DELETE FROM table_name WHERE column_name = 'value';
-- no going back.  use a select statement to make sure you are accessing the correct data.
-- TODO TOGETHER: Delete quote with id 3. Then view the output.
-- see all table data to determine target:
SELECT * FROM quotes;
-- ensure that you're targeting the correct data:
SELECT * FROM quotes WHERE id = 3;
--delete that data
DELETE FROM quotes WHERE id = 3;
--confirm deletion:
SELECT * FROM quotes;
/*********************** TRUNCATE ***********************/
-- TODO TOGETHER: Truncate quotes table.... there is no going back! Deletes all records.
--removes all data from the table
--TRUNCATE table_name;
--useful when developing
TRUNCATE quotes;
