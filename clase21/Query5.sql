SELECT a.titulo as Album, COUNT(gc.IdGenero) as Géneros FROM generoxcancion gc
JOIN cancion c ON gc.IdCancion=c.idCancion
JOIN genero g ON gc.idGenero=g.idGenero
JOIN album a ON c.IdAlbum=a.idAlbum
GROUP BY gc.IdCancion
HAVING COUNT(gc.IdGenero)>1