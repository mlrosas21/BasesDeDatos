SELECT a.apellido, a.nombre, COUNT(ap.pelicula_id) FROM artista_x_pelicula ap 
INNER JOIN artista a ON a.id = ap.artista_id
INNER JOIN pelicula p ON p.id = ap.pelicula_id
GROUP BY ap.artista_id
HAVING COUNT(ap.pelicula_id) >= 2