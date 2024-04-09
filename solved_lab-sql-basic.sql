USE sakila;
# display all available tables:
SHOW tables;

# retrieve all the data from actor, film and customer:
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

# name column retrieve from language and rename as language:
SELECT name AS language FROM language;

#list of employees' first name:
SELECT first_name FROM staff;

#retrieve unique release year:
SELECT DISTINCT release_year FROM film;

# number of stores:
SELECT count(store_id) FROM store;

#number of employees:
SELECT count(staff_id) FROM staff;

#number of films available for rent and rented:
SELECT count(inventory_id) FROM inventory;
SELECT count(rental_id) FROM rental;

#number of distinct last names of the actors:
SELECT count(DISTINCT last_name) FROM actor;

# 10 longest films:
SELECT title FROM film ORDER BY length DESC LIMIT 10;

#retrieve actors with firs name Scarlett
SELECT * FROM actor where first_name in ("SCARLETT");

#retrieve movies that have ARMAGEDDON in their title and longer than 100 minutes:
SELECT * FROM film where title like ("ARMAGEDDON") and length > 100;

# number of films that include behind the scenes content:
SELECT count(case special_features when "Behind the Scenes" then 1 else 0 end) from film;
