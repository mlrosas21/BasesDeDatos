SELECT * FROM productos
WHERE UnidadesStock < NivelReorden
AND UnidadesPedidas = 0;