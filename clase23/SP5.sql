SELECT * FROM facturadetalle

DELIMITER $$
CREATE PROCEDURE sp_ventas_descuento(IN pi_descuento float)
BEGIN
	SELECT p.ProductoNombre, c.Compania, c.Contacto, CONCAT(ROUND(fd.Descuento*100,2),'%') as Descuento
    FROM facturadetalle fd
    JOIN productos p ON fd.ProductoID = p.ProductoID
    JOIN facturas f ON fd.FacturaID = f.FacturaID
    JOIN clientes c ON f.ClienteID = c.ClienteID
    WHERE fd.Descuento >= (pi_descuento/100);
END $$

CALL sp_ventas_descuento('10')