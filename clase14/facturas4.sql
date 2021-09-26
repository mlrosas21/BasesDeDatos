SELECT ClienteID as 'Cliente' , COUNT(FacturaID) as 'Facturas'
FROM facturas
GROUP BY ClienteID
ORDER BY COUNT(FacturaID) DESC
LIMIT 5