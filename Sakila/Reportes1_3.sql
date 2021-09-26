SELECT title as 'Título', release_year as 'Año lanzamiento', description as 'Descripción'
FROM film
WHERE rental_duration > 5
