SELECT * FROM productos

DELIMITER $$
CREATE PROCEDURE sp_productos_stock(IN pi_stock int)
BEGIN
	SELECT *
    FROM productos
    WHERE UnidadesStock <= pi_stock;
END $$

CALL sp_productos_stock('10')
CALL sp_productos_stock('0')