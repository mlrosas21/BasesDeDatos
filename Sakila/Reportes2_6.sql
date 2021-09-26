SELECT inventory_id, COUNT(rental_id)
FROM rental
GROUP BY inventory_id
ORDER BY count(rental_id) DESC
limit 5

