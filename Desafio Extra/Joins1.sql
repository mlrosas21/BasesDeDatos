SELECT a.nombre, a.apellido, COUNT(ap.pelicula_id)
FROM artista_x_pelicula as ap
INNER JOIN pelicula as p ON ap.pelicula_id = p.id 
INNER JOIN artista as a ON ap.artista_id = a.id
GROUP BY ap.artista_id
HAVING COUNT(ap.pelicula_id) > 1

 