SELECT c.titulo, c.idCancion, COUNT(pc.idPlaylist) as Playlist FROM playlistxcancion pc
JOIN playlist p ON pc.IdPlaylist=p.idPlaylist
JOIN cancion c ON pc.Idcancion = c.idCancion
GROUP BY pc.Idcancion