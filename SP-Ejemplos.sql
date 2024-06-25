--Explorar las propiedades de una base de datos
EXEC sp_helpdb --Sintaxis para un procedimiento almacenado

EXEC sp_helpdb 'PlataformaStreaming'

-- Exploarar las propiedad de un objetivo de la BD
EXEC sp_help 'Usuarios'

--Llaves primarias de una tabla
EXEC sp_helpindex 'Usuarios'

-- Información de los usuarios my procesos actuales
EXEC sp_who

-- Rendimiento del servidor
EXEC sp_monitor

-- Espacio usado por la BD
EXEC sp_spaceused

-- Puerto de escucha del SQL SERVER
EXEC sp_readerrorlog 0,1

-- Nuestros Procedimientos

-- Procedimientos almacenados
CREATE PROCEDURE sp_ObtenerHistorial
	@usuarioId INT
AS 
BEGIN 
SELECT h.HistorialID, p.Titulo, h.FechaVisualizacion
FROM HistorialVisualizacion h
JOIN Peliculas p ON h.PeliculaID = p.PeliculaID
WHERE h.UsuarioID = @usuarioId
ORDER BY h.FechaVisualizacion DESC
END;

-- Ejecución
EXEC sp_ObtenerHistorial 4

-- SP para Insertar Peliculas
CREATE PROCEDURE sp_InsertarPeliculas
	@Titulos NVARCHAR,
	@Genero NVARCHAR,
	@FechaEstreno DATE
AS 
BEGIN
	INSERT INTO Peliculas(Titulo, Genero, FechaEstreno)
	VALUES (Titulo, Genero, FechaEstreno)

END;


EXEC sp_InsertarPeliculas @titulo = 'Intensamente 2', @Genero = 'Infaltir', @FechaEstreno = '2024-06-13'

