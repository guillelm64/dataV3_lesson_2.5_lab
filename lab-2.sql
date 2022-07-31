-- 1.Select all the actors with the first name ‘Scarlett’
USE sakila;
SELECT * FROM actor
WHERE first_name = 'Scarlett';

-- 2.How many films (movies) are available for rent and how many films have been rented?
SELECT count(inventory_id) FROM inventory;
SELECT count(rental_id) FROM rental;

-- 3.What are the shortest and longest movie duration? Name the values max_duration and min_duration
SELECT max(length) AS 'Longest', min(length) AS 'Shortest' FROM film;

-- 4.What's the average movie duration expressed in format (hours, minutes)?
SELECT time_format(AVG(length), '%h:%i') AS 'Avg_duration' FROM film;

-- 5.How many distinct (different) actors' last names are there?
SELECT COUNT(DISTINCT(last_name)) FROM actor;

-- 6.Since how many days has the company been operating (check DATEDIFF() function)?


SELECT DateDiff( day, '2005-05-24 22:53:30', '2006-02-14 15:16:03') 
AS running_days;



--  7.Show rental info with additional columns month and weekday. Get 20 results.
SELECT *, DATEDIFF( month, '2005-05-24', '2006-02-14') AS MONTHS, 
DateDiff( day, '2005-05-24 22:53:30', '2006-02-14 15:16:03') AS DAYS FROM rental
LIMIT 20;

-- 8.Add an additional column day_type with values 'weekend' and 'workday' depending on the rental day of the week.
SELECT weekday('2005-05-24') from rental;

-- 9.Get release years
SELECT DISTINCT release_year FROM film;


-- 10. Get all films with ARMAGEDDON in the title
SELECT * FROM film 
WHERE title LIKE '%ARMAGEDDON%';

-- 11. Get all films which title ends with APOLLO
SELECT * FROM film
WHERE title REGEXP('APOLLO$');

-- 12. Get 10 the longest films
SELECT * FROM film
ORDER BY length DESC
LIMIT 10;

-- 13. How many films include Behind the Scenes content?
SELECT count(special_features) FROM film
WHERE special_features LIKE '%Behind the Scenes%';




