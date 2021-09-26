SELECT fd.FacturaID, f.FechaFactura, c.Compania, cl.Compania, cat.CategoriaNombre, p.ProductoNombre, fd.PrecioUnitario, fd.Cantidad 
FROM facturadetalle as fd
INNER JOIN facturas as f ON fd.FacturaID = f.FacturaID
INNER JOIN correos as c ON f.EnvioVia = c.CorreoID
INNER JOIN clientes as cl ON f.ClienteID = cl.ClienteID
INNER JOIN productos as p ON fd.ProductoID = p.ProductoID
INNER JOIN categorias as cat ON p.CategoriaID = cat.CategoriaID