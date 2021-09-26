SELECT * FROM facturas
WHERE PaisEnvio = 'USA'
AND EnvioVia != 3
ORDER BY FechaFactura;