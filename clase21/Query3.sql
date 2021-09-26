SELECT ar.Nombre, c.titulo as Playlist FROM playlistxcancion pc
JOIN playlist p ON pc.IdPlaylist=p.idPlaylist
RIGHT JOIN cancion c ON pc.Idcancion = c.idCancion
JOIN album al ON c.IdAlbum = al.idAlbum
JOIN artista ar ON al.idArtista = ar.idArtista
WHERE pc.Idcancion = c.idCancion IS NULL
ORDER BY ar.Nombre 