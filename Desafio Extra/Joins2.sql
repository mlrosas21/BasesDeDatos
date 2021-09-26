SELECT ap.pelicula_id, COUNT(artista_id)
FROM artista_x_pelicula as ap
INNER JOIN pelicula as p ON ap.pelicula_id = p.id 
INNER JOIN artista as a ON ap.artista_id = a.id
GROUP BY ap.pelicula_id
HAVING COUNT(artista_id) > 1
