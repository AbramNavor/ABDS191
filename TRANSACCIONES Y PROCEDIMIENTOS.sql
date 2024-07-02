-- PROCEDIMIENTO ALMACENADO QUE TENGA UNA TRANSACCION  USUARIO:ID FECHA INICIO FECHAFIN 
CREATE PROCEDURE sp_InsertarACtualizarSuscripcion
    @UsuarioID INT,
    @FechaInicio DATE,
    @FechaFin DATE,
	@Tipo NVARCHAR(50)
AS
BEGIN
    BEGIN TRANSACTION;
	BEGIN TRY
		INSERT INTO Suscripciones (UsuarioID, FechaInicio, FechaFin, Tipo)
		VALUES (@UsuarioID, @FechaInicio, @FechaFin, @Tipo);

		UPDATE Usuarios SET FechaRegistro = @FechaInicio WHERE UsuarioID = @UsuarioID;

		COMMIT TRANSACTION;
	END TRY
	BEGIN CATCH
		ROLLBACK TRANSACTION;
		DECLARE @ErrorMessage NVARCHAR(4000);
		SET @ErrorMessage = ERROR_MESSAGE();
		PRINT @ErrorMessage;

	END CATCH;
END;

EXEC sp_InsertarACtualizarSuscripcion 1, '2024-07-01', '2024-08-01','Premium';

select*from Suscripciones;
