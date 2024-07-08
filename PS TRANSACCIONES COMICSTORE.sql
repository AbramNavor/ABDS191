-----1ER PROCEDIMIENTO CON TRANSACCION
---> PROCEDIMIENTO PARA INSERTAR COMIC Y ACTUALIZAR EN EL INVENTARIO
CREATE PROCEDURE sp_InsertarActualizarInventario
    @nombre VARCHAR(100),
    @anio TINYINT,
    @precio DECIMAL(10,2),
    @CantidadDisponible INT
AS
BEGIN
    BEGIN TRANSACTION;
    BEGIN TRY
        INSERT INTO Comics (nombre, anio, precio) VALUES (@nombre, @anio, @precio);

        DECLARE @ComicID BIGINT;
        SELECT @ComicID = MAX(id_comic) FROM Comics;

        INSERT INTO Inventarios(id_comic, cantidad_disponible, disponibilidad)
        VALUES (@ComicID, @CantidadDisponible, CASE WHEN @CantidadDisponible > 0 THEN 1 ELSE 0 END);

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        DECLARE @ErrorMessage NVARCHAR(4000);
        SET @ErrorMessage = ERROR_MESSAGE();
        PRINT @ErrorMessage;
    END CATCH;
END;

EXEC sp_InsertarActualizarInventario 'The Umbrella Academy',07,15.99,10;
EXEC sp_InsertarActualizarInventario 'The Forest Gump',94,20.00,5;
EXEC sp_InsertarActualizarInventario 'Hellboy', 102,18.00,0;

SELECT * FROM Comics;
SELECT * FROM Inventarios;


---2dp PROCEDIMIENTO CON TRANSACCION
-----> PROCEDIMIENTO PARA ACTUALIZAR EL PRECIO DEL COMIC Y ACTUALIZAR EL INVENTARIO 
CREATE PROCEDURE sp_ActualizarPrecioInventario
    @IdComic BIGINT,
    @NuevoPrecio DECIMAL(10,2),
    @NuevaCantidadDisponible INT
AS
BEGIN
    BEGIN TRANSACTION;
    BEGIN TRY
        UPDATE Comics
        SET precio = @NuevoPrecio
        WHERE id_comic = @IdComic;

        UPDATE Inventarios
        SET cantidad_disponible = @NuevaCantidadDisponible,
            disponibilidad = CASE WHEN @NuevaCantidadDisponible > 0 THEN 1 ELSE 0 END
        WHERE id_comic = @IdComic;

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        DECLARE @ErrorMessage NVARCHAR(4000);
        SET @ErrorMessage = ERROR_MESSAGE();
        PRINT @ErrorMessage;
    END CATCH;
END;

EXEC sp_ActualizarPrecioInventario 40, 250.00, 8;
EXEC sp_ActualizarPrecioInventario 42, 55.00, 5;
EXEC sp_ActualizarPrecioInventario 44, 25.00, 0;


SELECT * FROM Comics;
SELECT * FROM Inventarios;


--------3er PROCEDIMIENTO CON TRANSACCION
----> PROCEDIMIENTO PARA ELIMINAR UN CLIENTE Y SUS COMPRAS
CREATE PROCEDURE sp_EliminarClienteCompras
    @IdCliente BIGINT
AS
BEGIN
    BEGIN TRANSACTION;
    BEGIN TRY
        DELETE FROM Comic_Compras
        WHERE id_compra IN (SELECT id_compra FROM Compras WHERE id_cliente = @IdCliente);

        DELETE FROM Compras
        WHERE id_cliente = @IdCliente;

        DELETE FROM Clientes
        WHERE id_clientes = @IdCliente;

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        DECLARE @ErrorMessage NVARCHAR(4000);
        SET @ErrorMessage = ERROR_MESSAGE();
        PRINT @ErrorMessage;
    END CATCH;
END;

EXEC sp_EliminarClienteCompras 2;
EXEC sp_EliminarClienteCompras 3;
EXEC sp_EliminarClienteCompras 5;


SELECT * FROM Clientes;
SELECT * FROM Compras;
SELECT * FROM Comic_Compras;

----4to PROCEDIMIENTO CON TRANSACCION
---> PROCEDIMIENTO PARA ACTUALIZAR EL CORREO Y CONTRASEÑA DE UN CLIENTE
CREATE PROCEDURE sp_ActualizarCorreoContrasenaCliente
    @IdCliente BIGINT,
    @NuevoCorreoElectronico VARCHAR(255),
    @NuevaContrasena VARCHAR(255)
AS
BEGIN
    BEGIN TRANSACTION;
    BEGIN TRY
        UPDATE Clientes
        SET correo_electronico = @NuevoCorreoElectronico
        WHERE id_clientes = @IdCliente;

        UPDATE Clientes
        SET pass = @NuevaContrasena
        WHERE id_clientes = @IdCliente;

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        DECLARE @ErrorMessage NVARCHAR(4000);
        SET @ErrorMessage = ERROR_MESSAGE();
        PRINT @ErrorMessage;
    END CATCH;
END;


EXEC sp_ActualizarCorreoContrasenaCliente 9, 'nuevo.elena.gomez@example.com', '12342';
EXEC sp_ActualizarCorreoContrasenaCliente 7, 'nuevo.luis.hernandez4@example.com', 'nuaa14324';
EXEC sp_ActualizarCorreoContrasenaCliente 8, 'nuevo.sofia.diaz@example.com', 'contra23434';

SELECT * FROM Clientes;


-----5to PROCEDIMIENTO Y TRANSACCION
---> PROCEDIMIENTO PARA ACTUALIZAR DATOS DE UN COMIC
CREATE PROCEDURE sp_ActualizarTituloAnioComic
    @IdComic BIGINT,
    @NuevoTitulo VARCHAR(100),
    @NuevoAnio TINYINT
AS
BEGIN
    BEGIN TRANSACTION;
    BEGIN TRY
        UPDATE Comics
        SET nombre = @NuevoTitulo,
            anio = @NuevoAnio
        WHERE id_comic = @IdComic;

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        DECLARE @ErrorMessage NVARCHAR(4000);
        SET @ErrorMessage = ERROR_MESSAGE();
        PRINT @ErrorMessage;
    END CATCH;
END;

EXEC sp_ActualizarTituloAnioComic 40, 'Batman vs JarochoPotter', 87;
EXEC sp_ActualizarTituloAnioComic 42, 'Saga de los Padrinos Magicos', 85;
EXEC sp_ActualizarTituloAnioComic 44, 'Los Picapiedra', 85;


SELECT * FROM Comics;