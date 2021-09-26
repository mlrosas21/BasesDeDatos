SELECT * FROM artista  a
LEFT JOIN artista_x_pelicula  ap
ON a.id = ap.artista_id
WHERE ap.pelicula_id IS NULL