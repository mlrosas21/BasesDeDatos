CREATE VIEW info_clientes AS

SELECT ClienteID, Contacto, 
CASE
	WHEN Fax IS NULL OR Fax = ' ' THEN CONCAT('TEL: ',Telefono)
    ELSE Fax
END as 'Fax cliente'
FROM clientes