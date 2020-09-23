 /*
 --- Create table with 3 params ---
 SELECT * FROM celebs;
 CREATE TABLE celebs (
   id INTEGER, 
   name TEXT, 
   age INTEGER
); 

*/

/*
---- Insert statement to the table ----
INSERT INTO celebs (id, name, age)
VALUES (1, 'Justin Beiber', 22);

INSERT INTO celebs (id, name, age) 
VALUES (2, 'Beyonce Knowles', 33); 

INSERT INTO celebs (id, name, age) 
VALUES (3, 'Jeremy Lin', 26); 

INSERT INTO celebs (id, name, age) 
VALUES (4, 'Taylor Swift', 26); 

SELECT name FROM celebs;

*/

/*
---- Select statement to fetch data from the table
SELECT name FROM celebs;

*/

/*
---- Alter ! The ALTER TABLE statement adds a new column to a table
ALTER TABLE celebs 
ADD COLUMN twitter_handle TEXT; 

SELECT * FROM celebs;

*/

/*
---- The UPDATE statement edits a row in a table\
UPDATE celebs 
SET twitter_handle = '@taylorswift13' 
WHERE id = 4; 

SELECT * FROM celebs;

*/

/*
---- The DELETE FROM statement deletes one or more rows from a table
DELETE FROM celebs
WHERE twitter_handle is NULL;

SELECT * FROM celebs;

*/

/*
---- Constraints that add information about how a column can be used are invoked after specifying the data type for a column
CREATE TABLE awards (
  id INTEGER PRIMARY KEY,
  recipient TEXT NOT NULL,
  award_name TEXT DEFAULT 'Grammy'
);

*/

/*
---- AS is a keyword in SQL that allows you to rename a column or table using an alias
SELECT imdb_rating AS 'IMDB Result'
FROM movies

*/

/*

---- DISTINCT is used to return unique values in the output
SELECT DISTINCT year  
FROM movies;

*/

/*

---- WHERE clause filters the result set to only include rows where the following condition is true
SELECT * 
FROM movies
WHERE year > 2014;

*/

/*

---- LIKE can be a useful operator when you want to compare similar values.
SELECT * 
FROM movies
WHERE name LIKE 'Se_en';

*/

/*

---- Like II The percentage sign % is another wildcard character that can be used with LIKE
SELECT * 
FROM movies
WHERE name LIKE 'The %';

*/

/*

---- Is Null Unknown values are indicated by NULL
SELECT name
FROM movies
WHERE imdb_rating IS NULL;

*/

/*

---- The BETWEEN operator is used in a WHERE clause to filter the result set within a certain range
SELECT *
FROM movies
WHERE year BETWEEN 1985 AND 1990
  AND genre = 'horror';

*/

/*

---- OR
Similar to AND, the OR operator can also be used to combine multiple conditions in WHERE, but there is a fundamental difference:

AND operator displays a row if all the conditions are true.
OR operator displays a row if any condition is true.
SELECT *
FROM movies
WHERE genre = 'romance'
   OR genre = 'comedy';

*/

/*
---- We can sort the results using ORDER BY, either alphabetically or numerically
---- DESC is a keyword used in ORDER BY to sort the results in descending order (high to low or Z-A).
---- ASC is a keyword used in ORDER BY to sort the results in ascending order (low to high or A-Z).
SELECT name, year, imdb_rating
FROM movies
ORDER BY imdb_rating DESC; 
*/

/*
---- LIMIT is a clause that lets you specify the maximum number of rows the result set will have. 
---- This saves space on our screen and makes our queries run faster.
SELECT *
FROM movies
ORDER BY imdb_rating DESC
LIMIT 3;

*/

/*
---- Case
A CASE statement allows us to create different outputs (usually in the SELECT statement). It is SQL’s way of handling if-then logic
SELECT name,
 CASE
  WHEN imdb_rating > 8 THEN 'Fantastic'
  WHEN imdb_rating > 6 THEN 'Poorly Received'
  ELSE 'Avoid at All Costs'
 END AS 'Review'
FROM movies;

SELECT name,
 CASE
  WHEN genre = 'romance' THEN 'Chill'
  WHEN genre = 'comedy' THEN 'Chill'
  ELSE 'Intense'
 END AS 'Mood'
FROM movies;

*/

/*
---- Max / Min
The MAX() and MIN() functions return the highest and lowest values in a column, respectively.
SELECT MAX(price)
FROM fake_apps;

SELECT Min(downloads)
FROM fake_apps;
*/

