CREATE VIEW PrioridadProductos AS

SELECT ProductoID, ProductoNombre, round(PrecioUnitario), UnidadesStock, UnidadesPedidas,
CASE
	WHEN UnidadesPedidas = 0 THEN 'BAJA'
    WHEN UnidadesPedidas < UnidadesStock THEN 'MEDIA'
    WHEN UnidadesPedidas < (2*UnidadesStock) THEN 'URGENTE'
    WHEN UnidadesPedidas >= (2*UnidadesStock) THEN 'SUPER URGENTE'
END AS PRIORIDAD
    
FROM productos