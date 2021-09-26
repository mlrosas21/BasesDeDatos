SELECT customer_id, SUM(amount), COUNT(rental_id) 
FROM payment
GROUP BY customer_id
ORDER BY SUM(amount) DESC
LIMIT 10


