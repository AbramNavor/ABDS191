SELECT dbo.Autores.id_autor, dbo.Autores.nombre AS nombre_autor, dbo.Autores.pais_origen, dbo.Comics.id_comic, dbo.Comics.nombre AS nombre_comic, dbo.Comics.anio, dbo.Comics.precio
FROM     dbo.Comics INNER JOIN
                  dbo.Autores ON dbo.Comics.id_autor = dbo.Autores.id_autor