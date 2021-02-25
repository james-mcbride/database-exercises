USE codeup_test_db;
SELECT name FROM albums WHERE artist='Pink Floyd';
SELECT release_date AS 'Release Date of Thriller'  FROM albums WHERE name='Thriller';
SELECT genre AS 'Genre of Pink Floyd'  FROM albums WHERE name='Back in Black';
SELECT name AS 'albums from 1990s' from albums WHERE release_date>1989 AND release_date<2000;
SELECT name AS 'albums who\'s sales are less than 25m' from albums where sales <25;