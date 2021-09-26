SELECT g.Genero, COUNT(*) as 'Cantidad de canciones que tienen la letra M' FROM generoxcancion gc
JOIN cancion c ON gc.IdCancion = c.idCancion
JOIN genero g ON  gc.IdGenero = g.idGenero
WHERE g.Genero IN ('Rock','Pop')
AND c.titulo LIKE '%m%'
