SELECT *
FROM rental
WHERE rental_date between '2005-05-01 00:00:00' AND '2005-05-31 23:59:59'
ORDER BY rental_date 