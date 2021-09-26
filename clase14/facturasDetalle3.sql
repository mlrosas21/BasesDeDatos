SELECT SUM(Cantidad + PrecioUnitario) AS 'Total Facturado' 
FROM facturadetalle
WHERE ProductoID BETWEEN 30 AND 50

