CREATE VIEW info_proveedores AS

SELECT ProveedorID, Contacto, Compania, CONCAT(Direccion,', ',Ciudad,', ',CodigoPostal,', ',Pais) AS DireccionCompleta
FROM emarket.proveedores;