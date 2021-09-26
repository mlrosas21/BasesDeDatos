SELECT LOWER(artista) as Artista, filmaciones FROM vi_artista_filmaciones
WHERE filmaciones < 33
AND artista LIKE 'a%'
