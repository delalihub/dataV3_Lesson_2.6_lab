use sakila;
###question 1---
##In the table actor, which are the actors whose last names are not repeated?
SELECT last_name FROM sakila.actor
GROUP BY last_name
HAVING count(*) =1;


###Question2
#Which last names appear more than once?
SELECT last_name
FROM actor
GROUP BY last_name
HAVING COUNT(*) > 1
ORDER BY last_name;

###Question 3
##Using the rental table, find out how many rentals were processed by each employee
SELECT * FROM sakila.rental;
SELECT staff_id as employee, count(inventory_id) FROM sakila.rental
GROUP BY employee;

###question 4
SELECT * FROM sakila.film;
SELECT release_year, count(title) FROM sakila.film
GROUP BY release_year;

###Question 5 Using the film table, find out for each rating how many films were there
SELECT * FROM sakila.film;
SELECT rating, count(title) FROM sakila.film
GROUP BY rating;

###Question 6
## What is the mean length of the film for each rating type. Round 
#off the average lengths to two decimal places
SELECT * FROM sakila.film;
SELECT rating, AVG(length)  FROM sakila.film
GROUP BY rating;

#Question 7
##Which kind of movies (rating) have a mean duration of more than two hours?
SELECT rating, AVG(length)  FROM sakila.film
GROUP BY rating
HAVING AVG(length) > 120;

##Question 8



