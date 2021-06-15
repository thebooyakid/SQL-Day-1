SELECT COUNT(last_name)
FROM actor
WHERE last_name = 'Wahlberg';
--Question 1 - Answer is 2

SELECT COUNT(amount)
FROM payment
WHERE amount BETWEEN 2.99 and 5.99;
--Question 2 - Answer is 8848

SELECT film_id, COUNT(film_id) as film_ct
FROM inventory
GROUP BY film_id
ORDER BY film_ct DESC;
--Question 3 - well, there seem to be a bunch of them

SELECT last_name
FROM customer
WHERE last_name = 'William';
--Question 4 - answer is 0

SELECT staff_id, COUNT(staff_id)
FROM rental
GROUP BY staff_id;
--Question 5 - answer is employee with staff_id 1

SELECT COUNT(DISTINCT district)
FROM address;
--Question 6 - answer is 378

SELECT film_id, COUNT(film_id) as f
FROM film_actor
GROUP BY film_id
ORDER BY f DESC;
-- Question 7 - answer is film_id 508


SELECT COUNT(last_name)
from customer
WHERE last_name LIKE '%es' AND store_id = 1;
--Question 8 - answer is 13
select * from payment;

SELECT COUNT(rental_id),amount
FROM payment
WHERE customer_id BETWEEN 380 and 430
GROUP BY amount HAVING COUNT(rental_id) > 250;
--Question 9 - answer is 3

SELECT COUNT (DISTINCT rating) 
FROM film;

SELECT rating, COUNT(rating)
FROM film
GROUP BY rating
ORDER BY COUNT(rating);

--Questino 10 - answer is 5 and PG-13


