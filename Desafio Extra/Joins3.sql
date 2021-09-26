SELECT DISTINCT a.id, a.apellido, a.nombre
FROM artista_x_pelicula as ap
INNER JOIN pelicula as p ON ap.pelicula_id = p.id 
RIGHT JOIN artista as a ON ap.artista_id = a.id