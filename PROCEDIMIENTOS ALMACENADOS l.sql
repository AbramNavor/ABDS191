CREATE PROCEDURE sp_InsertarUsuario
    @Nombre NVARCHAR(100),
    @Email NVARCHAR(100),
    @Pass NVARCHAR(100)
AS
BEGIN
    INSERT INTO Usuarios (Nombre, Email, Pass)
    VALUES (@Nombre, @Email, @Pass)
END;

EXEC sp_InsertarUsuario @Nombre='José Gutierrez', @Email='jose.gutierrez@example.com', @Pass='password0769';
EXEC sp_InsertarUsuario @Nombre='Alicia Piña', @Email='alicia.piña@example.com', @Pass='asdn129';
EXEC sp_InsertarUsuario @Nombre='Roberto Moreno', @Email='roberto.moreno@example.com', @Pass='sadal2123';
EXEC sp_InsertarUsuario @Nombre='Dulce Evaristo', @Email='dulce.evaristo@example.com', @Pass='dulceE0941';
EXEC sp_InsertarUsuario @Nombre='Joel Romero', @Email='joel.romero@example.com', @Pass='joelrom124';

select*from Usuarios;
DROP PROCEDURE IF EXISTS sp_ConsultarPeliculas;

--------------------------------
CREATE PROCEDURE sp_EditarSuscripcion
    @SuscripcionID INT,
    @UsuarioID INT,
    @FechaInicio DATE,
    @FechaFin DATE,
    @Tipo NVARCHAR(50)
AS
BEGIN
    UPDATE Suscripciones
    SET UsuarioId = @UsuarioId,
        FechaInicio = @FechaInicio,
        FechaFin = @FechaFin,
        Tipo = @Tipo
    WHERE SuscripcionID = @SuscripcionID;
END;

EXEC sp_EditarSuscripcion @SuscripcionID = 4, @UsuarioID = 4, @FechaInicio = '2023-01-01', @FechaFin = '2023-12-31', @Tipo = 'Basico';
EXEC sp_EditarSuscripcion @SuscripcionID = 6, @UsuarioID = 7, @FechaInicio = '2023-01-01', @FechaFin = '2023-12-31', @Tipo = 'Basico';
EXEC sp_EditarSuscripcion @SuscripcionID = 4, @UsuarioID = 1, @FechaInicio = '2023-01-01', @FechaFin = '2023-12-31', @Tipo = 'Premium';

select*from Suscripciones;

-----------------------------------
CREATE PROCEDURE sp_EliminarHistorialVisualizacion
    @HistorialID INT
AS
BEGIN
    DELETE FROM HistorialVisualizacion
    WHERE HistorialID = @HistorialID;
    
END;

EXEC sp_EliminarHistorialVisualizacion @HistorialID = 1;
EXEC sp_EliminarHistorialVisualizacion @HistorialID = 4;
EXEC sp_EliminarHistorialVisualizacion @HistorialID = 6;

Select*from HistorialVisualizacion;

---------------------------------
CREATE PROCEDURE sp_ConsultarUsuarios
    @Tipo NVARCHAR(50)
AS
BEGIN
    SELECT 
        u.UsuarioID,
        u.Nombre,
        u.Email,
		u.FechaRegistro,
        s.SuscripcionID,
        s.FechaInicio,
        s.FechaFin,
        s.Tipo
    FROM Usuarios u
    INNER JOIN Suscripciones s ON u.UsuarioID = s.UsuarioID
    WHERE s.Tipo = @Tipo;

END;

EXEC sp_ConsultarUsuarios @Tipo = 'Premium';
EXEC sp_ConsultarUsuarios @Tipo = 'Básica';
EXEC sp_ConsultarUsuarios @Tipo = 'Estándar';

------------------------------------------
CREATE PROCEDURE sp_ConsultarPeliculas
	@Genero NVARCHAR(50)
AS
BEGIN
	SELECT
		u. Nombre AS NombreUSuario,
		P.Titulo,
		p.Genero,
		h. FechaVisualizacion
	FROM Peliculas p
	INNER JOIN HistorialVisualizacion h ON p.PeliculaID = h.PeliculaID
	INNER JOIN Usuarios u ON h.UsuarioID = u.UsuarioID
	WHERE p.Genero = @Genero;

END;

EXEC sp_ConsultarPeliculas @Genero = 'Drama';
EXEC sp_ConsultarPeliculas @Genero = 'Crimen';
EXEC sp_ConsultarPeliculas @Genero = 'Comedia';




