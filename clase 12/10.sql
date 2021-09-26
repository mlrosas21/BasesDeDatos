SELECT id_album SUM(milisegundos)
FROM canciones
GROUP BY id_album