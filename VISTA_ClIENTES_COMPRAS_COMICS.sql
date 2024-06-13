SELECT dbo.Compras.id_compra, dbo.Clientes.nombre AS CLIENTE, dbo.Comics.nombre AS COMIC, dbo.Autores.nombre AS AUTOR, dbo.Comics.anio, dbo.Comics.precio, dbo.Comic_Compras.cantida AS CANTIDAD, 
                  dbo.Comic_Compras.cantida * dbo.Comics.precio AS SUBTOTAL
FROM     dbo.Autores INNER JOIN
                  dbo.Comics ON dbo.Autores.id_autor = dbo.Comics.id_autor INNER JOIN
                  dbo.Comic_Compras ON dbo.Comics.id_comic = dbo.Comic_Compras.id_comic INNER JOIN
                  dbo.Compras INNER JOIN
                  dbo.Clientes ON dbo.Compras.id_cliente = dbo.Clientes.id_clientes ON dbo.Comic_Compras.id_compra = dbo.Compras.id_compra