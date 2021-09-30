SELECT * FROM clientes

DELIMITER $$
CREATE PROCEDURE sp_clientes_pais(IN pi_pais VARCHAR(20))
BEGIN
	SELECT COUNT(*)
    FROM clientes
    WHERE Pais = pi_pais;
END $$

CALL sp_clientes_pais('Portugal')