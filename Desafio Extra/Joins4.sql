SELECT p.titulo as 'PELICULAS SIN ACTORES ASIGNADOS'
FROM pelicula as p
LEFT JOIN artista_x_pelicula ap
ON p.id = ap.pelicula_id
WHERE ap.artista_id IS NULL
