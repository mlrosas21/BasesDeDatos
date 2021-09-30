SELECT * FROM empleados

DELIMITER $$
CREATE PROCEDURE sp_empleados_ciudad(IN pi_ciudad VARCHAR(20))
BEGIN
	SELECT *
    FROM empleados
    WHERE Ciudad = pi_ciudad;
END $$

CALL sp_empleados_ciudad('Kirkland')