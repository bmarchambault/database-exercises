USE quotes_db;

-- doesn't delete the table just removing existing data inside the table
TRUNCATE quotes;

/*to run this:  mysql -u bobbiearchambault -p < quotes_seeder.sql
SELECT * FROM quotes
 */


# This is an example of a single record being added to db
INSERT INTO quotes (author_first_name, author_last_name, quote)
VALUES ('Douglas', 'Adams', 'I love deadlines. I love the whooshing noise they make as they go by.');


# This is an example of multiple records being added to db
INSERT INTO quotes (author_first_name, author_last_name, quote)
VALUES  ('Douglas', 'Adams', 'Don''t panic'),
        ('Douglas', 'Adams', 'Time is an illusion. Lunchtime doubly so.'),
        ('Mark', 'Twain', 'Clothes make the man. Naked people have little or no influence on society.'),
        ('Kurt', 'Vonnegut', 'The universe is a big place, perhaps the biggest.');

# This is an example of a default value being added
INSERT INTO quotes (author_first_name, author_last_name, quote)
VALUES (DEFAULT, 'Orsinger', 'TAKE THE LOOP OUT!');

INSERT INTO quotes (author_last_name, quote)
VALUES ('Iroh', "Sharing tea is fun!");

INSERT INTO quotes (author_last_name, quote)
VALUES ('unknown', "Never aurgue with an idiot.  They'll drag you down to their level, then beat you with experience.");