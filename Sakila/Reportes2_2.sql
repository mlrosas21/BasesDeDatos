SELECT SUM(amount) as 'Total', count(rental_id) as 'Cantidad', AVG(amount) as 'Importe Promedio'
FROM payment p
