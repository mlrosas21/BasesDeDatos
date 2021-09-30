DELIMITER $$
CREATE PROCEDURE sp_empleados_1()
BEGIN
	SELECT Apellido, Nombre
    FROM empleados;
END $$

CALL sp_empleados_1