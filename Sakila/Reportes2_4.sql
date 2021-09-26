SELECT customer_id, COUNT(rental_id), SUM(amount)
FROM payment
GROUP BY customer_id
HAVING SUM(amount) > 150

