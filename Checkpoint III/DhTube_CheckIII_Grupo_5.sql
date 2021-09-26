select COUNT(u.idUsuario) AS CantUsuarios, p.nombre, p.idPais
from usuario AS u
INNER JOIN pais AS p ON u.Pais_idPais = p.idPais
GROUP BY p.idPais

SELECT a.nombre, COUNT(u.Avatar_idAvatar) AS Cantidad
FROM avatar AS a
INNER JOIN usuario AS u ON a.idavatar = u.avatar_idavatar
GROUP BY a.nombre
ORDER BY COUNT(u.Avatar_idAvatar) DESC
LIMIT 5

SELECT u.nombre AS NombreUsuario, v.titulo AS TituloVideo, p.nombre AS TituloPlaylist, DATE_FORMAT(p.fechacreacion,"%Y") AS AnioCreacion
FROM PLAYLIST AS p
INNER JOIN usuario AS u ON p.usuario_idUsuario = u.idUsuario
INNER JOIN playlist_video AS pv ON p.idplaylist = pv.playlist_idplaylist
INNER JOIN video AS v ON v.idvideo = pv.video_idvideo
WHERE p.privado = 0

SELECT e.nombre, COUNT(e.idEtiqueta) AS Cantidad
FROM etiqueta AS e
INNER JOIN video_etiqueta AS ve ON e.idetiqueta = ve.Etiqueta_idEtiqueta
INNER JOIN video AS v ON v.idVideo = ve.video_idvideo
GROUP BY e.nombre
ORDER BY Cantidad ASC
LIMIT 10

SELECT r.fecha, tr.nombre, u.idUsuario, u.nombre, v.titulo FROM reaccion AS r
INNER JOIN tiporeaccion AS tr ON r.TipoReaccion_idTipoReaccion = tr.idTipoReaccion
INNER JOIN usuario AS u ON u.idUsuario = r.Usuario_idUsuario
INNER JOIN video AS v ON v.idVideo = r.video_idvideo
ORDER BY r.fecha DESC
LIMIT 10

SELECT u.idUsuario, u.nombre, COUNT(p.idPlaylist) AS CantPlaylists
FROM usuario AS u
INNER JOIN playlist AS p ON u.idUsuario = p.Usuario_idUsuario
WHERE p.fechaCreacion BETWEEN '2021-01-01 00:00:00' AND '2021-12-31 23:59:59'
GROUP BY u.nombre
HAVING CantPlaylists > 1

SELECT tr.nombre AS 'Nombre de Reacción',
       u.nombre AS 'Nombre de Usuario',
       v.titulo AS 'Título de Video',
       r.fecha AS Fecha
FROM reaccion AS r
INNER JOIN tiporeaccion AS tr ON r.TipoReaccion_idTipoReaccion = tr.idTipoReaccion
INNER JOIN usuario AS u ON r.Usuario_idUsuario = u.idusuario
INNER JOIN video AS v ON r.Video_idVideo = v.idVideo
WHERE r.fecha BETWEEN '2021-01-01' AND '2021-12-31'

SELECT COUNT(idVideo) AS Cantidad,
       privado
FROM video
GROUP BY privado

SELECT u.nombre
FROM usuario AS u
LEFT JOIN playlist AS p ON u.idUsuario = p.Usuario_idUsuario
WHERE p.Usuario_idUsuario IS NULL

SELECT v.titulo, COUNT(r.Video_idVideo) AS cantReacciones, v.cantidadReproducciones
FROM video AS v
LEFT JOIN reaccion AS r ON v.idVideo = r.Video_idVideo
GROUP BY v.titulo
ORDER BY v.titulo

SELECT u.nombre, v.titulo
FROM video AS v
INNER JOIN usuario AS u ON v.Usuario_idUsuario = u.idUsuario
LEFT JOIN playlist_video AS pv ON v.idVideo = pv.Video_idVideo
WHERE pv.Video_idVideo IS NULL

SELECT u.nombre
FROM usuario AS u
LEFT JOIN video AS v ON u.idUsuario = v.Usuario_idUsuario
WHERE v.Usuario_idUsuario IS NULL

SELECT COUNT(r.idReaccion) AS Cantidad,
       tr.nombre AS Reaccion
FROM reaccion AS r
INNER JOIN tiporeaccion AS tr ON r.TipoReaccion_idTipoReaccion = tr.idTipoReaccion
WHERE fecha BETWEEN '2021-01-01' AND '2021-04-01'
GROUP BY TipoReaccion_idTipoReaccion

SELECT v.titulo
FROM video AS v
INNER JOIN usuario AS u ON v.Usuario_idUsuario = u.idUsuario
INNER JOIN pais AS p ON u.Pais_idPais = p.idPais
WHERE u.nombre LIKE '%a%'
AND p.nombre = 'Argentina'

SELECT p.nombre, a.nombre, COUNT(a.idAvatar) AS Ranking
FROM usuario AS u
INNER JOIN avatar AS a ON u.Avatar_idAvatar = a.idAvatar
INNER JOIN pais AS p ON u.Pais_idPais = p.idPais
GROUP BY p.nombre, a.nombre
ORDER BY p.nombre, Ranking DESC



SELECT v.titulo, r.idReaccion, v.cantidadReproducciones
FROM video AS v
LEFT JOIN reaccion AS r ON v.idVideo = r.video_idVideo
WHERE r.idReaccion IS NOT NULL
GROUP BY v.titulo

SELECT v.titulo, u.nombre, p.nombre
FROM video AS v
INNER JOIN usuario AS u ON v.Usuario_idUsuario = u.idUsuario
INNER JOIN pais AS p ON p.idPais = u.Pais_idPais
ORDER BY v.duracion ASC
LIMIT 5

SELECT u.nombre, p.nombre, COUNT(r.idReaccion) AS cantidadReacciones
FROM usuario AS u
INNER JOIN reaccion AS r ON u.idUsuario = r.Usuario_idUsuario
INNER JOIN pais AS p ON u.Pais_idPais = p.idPais
WHERE p.nombre = 'Brasil'
AND r.fecha BETWEEN '2021-01-01' AND '2021-12-31'
GROUP BY u.nombre
ORDER BY cantidadReacciones DESC
LIMIT 1

SELECT u.nombre AS nombreUsuario, 
       c.nombre AS nombreCanal,
       p.nombre AS nombrePlaylist,
       v.titulo AS nombreVideo
FROM usuario AS u
LEFT JOIN canal AS c ON u.idusuario = c.Usuario_idUsuario
LEFT JOIN playlist AS p ON u.idusuario = p.Usuario_idUsuario
LEFT JOIN playlist_video AS pv ON p.idPlaylist = pv.Playlist_idPlaylist
INNER JOIN video AS v ON pv.Video_idVideo = v.idVideo

SELECT p.nombre AS nombrePlaylist, COUNT(v.idVideo) AS cantidad, u.nombre AS nombreUsuario, a.nombre AS avatar
FROM playlist AS p
INNER JOIN playlist_video AS pv ON p.idPlaylist = pv.Playlist_idPlaylist
INNER JOIN video AS v ON v.idVideo = pv.Video_idVideo
INNER JOIN usuario AS u ON p.Usuario_idUsuario = u.idUsuario
INNER JOIN avatar AS a ON u.Avatar_idAvatar = a.idAvatar
GROUP BY p.nombre
HAVING COUNT(v.idVideo) < 3