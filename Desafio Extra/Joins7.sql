SELECT p.id, p.titulo, a.nombre, a.apellido
FROM artista_x_pelicula ap 
INNER JOIN artista a ON a.id = ap.artista_id
RIGHT JOIN pelicula p ON p.id = ap.pelicula_id