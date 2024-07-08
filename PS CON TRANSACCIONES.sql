---Crea un procedimiento que inserte una nueva película, y que al mismo tiempo inserte un registro en Historial Visualización de esa misma película a cualquier usuario
CREATE PROCEDURE sp_InsertarPeliculaHistorial
    @Titulo NVARCHAR(100),
    @Genero NVARCHAR(50),
    @FechaEstreno DATE,
    @UsuarioID INT
AS
BEGIN
	BEGIN TRANSACTION;
	BEGIN TRY
		DECLARE @NuevaPeliculaID INT;

	    INSERT INTO Peliculas (Titulo, Genero, FechaEstreno)
	    VALUES (@Titulo, @Genero, @FechaEstreno);

	    SET @NuevaPeliculaID = SCOPE_IDENTITY();

	    INSERT INTO HistorialVisualizacion (UsuarioID, PeliculaID)
		VALUES (@UsuarioID, @NuevaPeliculaID);

		COMMIT TRANSACTION;
	END TRY
	BEGIN CATCH
		ROLLBACK TRANSACTION;
		DECLARE @ErrorMessage NVARCHAR(4000);
		SET @ErrorMessage = ERROR_MESSAGE();
		PRINT @ErrorMessage;
	END CATCH;
END;

EXEC sp_InsertarPeliculaHistorial 'Intensamente 2','Niños','2024-06-23', 1;

select*from Peliculas;
select*from HistorialVisualizacion;

--Crea un procedimiento que permita insertar un usuario, con su respectiva suscripción y una visualización de cualquier película.
create procedure sp_UsuarioSuscripcionVisualizacion
	@Nombre nvarchar(100),
	@Email nvarchar(100),
	@Pass nvarchar(100),
	@FechaRegistro date,
	@FechaInicio date,
	@FechaFin date,
	@Tipo nvarchar(50),
	@PeliculaID int,
	@FechaVisualizacion datetime
as
begin
	begin transaction
		begin try
			insert into Usuarios(Nombre, Email, Pass, FechaRegistro)
			values (@Nombre, @Email, @Pass, @FechaRegistro)
			
			DECLARE @UsuarioID INT;
			SET @UsuarioID = SCOPE_IDENTITY(); 

			insert into Suscripciones(UsuarioID, FechaInicio, FechaFin, Tipo)
			values (@UsuarioID, @FechaInicio, @FechaFin, @Tipo)

			insert into HistorialVisualizacion(UsuarioID, PeliculaID, FechaVisualizacion)
			values (@UsuarioID, @PeliculaID, @FechaVisualizacion)
		commit transaction
		end try
		
		begin catch
		rollback
			declare @ErrorMessage NVARCHAR(4000);
			set @ErrorMessage= ERROR_MESSAGE();
			print @ErrorMessage;
		end catch
end;

EXEC sp_UsuarioSuscripcionVisualizacion 'Juanito de los LLanos','juanito.rozame@example.com','passjuanito123','2024-07-03','Premium','2024-07-03','2024-12-31', 10;

select*from Usuarios
select * from Usuarios
select * from Suscripciones
select * from HistorialVisualizacion


--Crea un procedimiento que permita actualizar el correo de los usuarios y al mismo tiempo cambie el tipo suscripción a Anual
create procedure sp_CambiarCorreoTipoSuscripcion
	@UsuarioID int,
	@Email nvarchar (100),
	@Tipo nvarchar(50)
as
begin
begin transaction
		begin try
			UPDATE Usuarios set Email= @Email
			where UsuarioID=@UsuarioID

			UPDATE Suscripciones set Tipo=@Tipo
			where UsuarioID=@UsuarioID
		commit transaction
		end try
		
		BEGIN CATCH
		rollback
			declare @ErrorMessage NVARCHAR(4000);
			set @ErrorMessage= ERROR_MESSAGE();
			print @ErrorMessage;
		END CATCH
end;

exec sp_CambiarCorreoTipoSuscripcion 7, 'cambiando.jorge.ramirezexample.com', 'Premium'

select * from Usuarios
select * from Suscripciones
-----------------------
--Crea un procedimiento que permita eliminar una película y al mismo tiempo todos los registros de esa misma película en Historial de visualización
CREATE PROCEDURE sp_EliminarPeliculaHistorial
    @PeliculaID INT
AS
BEGIN
    BEGIN TRANSACTION;

    BEGIN TRY
        DELETE FROM HistorialVisualizacion WHERE PeliculaID = @PeliculaID;

        DELETE FROM Peliculas WHERE PeliculaID = @PeliculaID;

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        DECLARE @ErrorMessage NVARCHAR(4000);
        SET @ErrorMessage = ERROR_MESSAGE();
        PRINT 'Error: ' + @ErrorMessage;
    END CATCH
END;

exec sp_EliminarPeliculaHistorial 1;

select*from Peliculas;
select*from HistorialVisualizacion
---------------------
--Crea un procedimiento que Elimine un usuario con todas sus suscripciones y registros en historial de visualización
CREATE PROCEDURE sp_EliminarUsuarioHistorial
    @UsuarioID INT
AS
BEGIN
    BEGIN TRANSACTION;
    BEGIN TRY
        DELETE FROM HistorialVisualizacion WHERE UsuarioID = @UsuarioID;

        DELETE FROM Suscripciones WHERE UsuarioID = @UsuarioID;

        DELETE FROM Usuarios WHERE UsuarioID = @UsuarioID;

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        DECLARE @ErrorMessage NVARCHAR(4000);
        SET @ErrorMessage = ERROR_MESSAGE();
        PRINT 'Error: ' + @ErrorMessage;
    END CATCH
END;

EXEC sp_EliminarUsuarioHistorial 2;

select*from Usuarios;
select*from HistorialVisualizacion;