SELECT Pais,
		COUNT(ClienteID) as 'Cantidad de Clientes'
FROM clientes
GROUP BY Pais