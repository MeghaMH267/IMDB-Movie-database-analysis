USE project_movie_database;

SHOW TABLES;
DESC directors;
DESC movies;
SELECT *
FROM movies;
SELECT *
FROM directors;
SELECT COUNT(*) AS Total_Movies
FROM movies;
SELECT *
FROM directors
WHERE name IN ('James Cameron',
               'Luc Besson',
               'John Woo');

SELECT *
FROM directors
WHERE name LIKE 'S%';

SELECT COUNT(*) AS Female_Directors
FROM directors
WHERE gender = 1;

SELECT *
From directors
WHERE gender = 1
ORDER BY name
LIMIT 9,1;

SELECT *
From movies
ORDER BY popularity DESC
LIMIT 3;
SELECT title,
       popularity
FROM movies
ORDER BY popularity DESC
LIMIT 3;

SELECT title,
       budget,
       revenue,
       (revenue - budget) AS profit
From movies
ORDER BY profit DESC
LIMIT 3;

SELECT title,
       vote_average
FROM movies
WHERE release_date >= '2000-01-01'
ORDER BY vote_average DESC
LIMIT 1;

SELECT m.title
FROM movies m
JOIN directors d
ON m.director_id = d.id
WHERE d.name = 'Brenda Chapman';

SELECT d.name,
       COUNT(*) AS movie_count
FROM movies m
JOIN directors d
ON m.director_id = d.id
GROUP BY d.id,d.name
ORDER BY movie_count DESC
LIMIT 1;

SELECT d.name,
       SUM(m.revenue - m.budget) AS total_profit
FROM movies m
JOIN directors d
ON m.director_id = d.id
GROUP BY d.id,d.name
ORDER BY total_profit DESC
LIMIT 1;

