SELECT *,COUNT(*),AVG('round(PrecioUnitario)')
FROM PrioridadProductos
GROUP BY PRIORIDAD
HAVING COUNT(*)>=5