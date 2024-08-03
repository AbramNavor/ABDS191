-->Crea un Trigger para que despues de Insertar un nuevo cliente se despliegue un mensaje de aviso.
CREATE TRIGGER NuevoClienteAviso
ON Clientes
AFTER INSERT
AS
BEGIN
    PRINT '¡Un nuevo cliente ha sido añadido exitosamente!'
END

INSERT INTO Clientes (Nombre, Direccion,Telefono,Email)
VALUES ('Adan Romero','16 Septiembre 76','4428174927', 'adan.romero@example.com');
----------------------------------------------------------------------------

-->Crea un Trigger para que después de eliminar un cliente se despliegue un mensaje de aviso
CREATE TRIGGER DespuesEliminarCliente
ON Clientes
AFTER DELETE
AS
BEGIN
    PRINT 'Cliente eliminado con éxito'
END 

DELETE FROM Clientes
WHERE ClienteID = 6;

SELECT*FROM Clientes;

--------------------------------------------------------------------------
-->Crea un Trigger para la tabla cuentas que valide si existe el cliente antes de crear una nueva cuenta, avisar cada caso su respectivo mensaje.
CREATE TRIGGER ValidarCliente
ON Cuentas
INSTEAD OF INSERT
AS
BEGIN
    DECLARE @ClienteID INT

    SELECT @ClienteID = ClienteID FROM inserted

    IF EXISTS (SELECT 1 FROM Clientes WHERE ClienteID = @ClienteID)
    BEGIN
        INSERT INTO Cuentas (ClienteID, TipoCuenta, Saldo, FechaApertura)
        SELECT ClienteID, TipoCuenta, Saldo, FechaApertura FROM inserted

        PRINT 'La cuenta ha sido creada'
    END
    ELSE
    BEGIN
        PRINT 'Error: No se puede crear la cuenta porque el cliente no existe.'
    END
END

select*from Clientes;
select*from Cuentas;

-->Inserts para clientes y cuentas EXISTENTES
INSERT INTO Clientes (Nombre, Direccion,Telefono,Email)
VALUES ('Ivan Hernandez','Pedro Escobedo 23','4426457892', 'ivan,hernan@example.com');
INSERT INTO Cuentas (ClienteID, TipoCuenta, Saldo, FechaApertura)
VALUES (1, 'Corriente', 500.00, '2023-01-15');

-->Inserts para clientes y cuentas NO existestes
INSERT INTO Clientes (Nombre, Direccion,Telefono,Email)
VALUES ('Amisaday Roman','Paseos Marques 123','4271825637', 'amisaday.roman@example.com');

INSERT INTO Cuentas (ClienteID, TipoCuenta, Saldo, FechaApertura)
VALUES (112, 'Corriente', 100.00, '2024-02-19');


-----------------------------------------------------------------------------------
-->Crea un Trigger para la tabla cuentas que cuide antes de realizar una actualización no se ingrese un numero negativo.
CREATE TRIGGER ValidarSaldo
ON Cuentas
AFTER UPDATE
AS
BEGIN
    IF EXISTS (
        SELECT 1 FROM inserted i
        JOIN deleted d ON i.CuentaID = d.CuentaID
        WHERE i.Saldo < 0
    )
    BEGIN
        PRINT 'No se puede actualizar con un saldo negativo.'

        ROLLBACK TRANSACTION
    END
    ELSE
    BEGIN
        PRINT 'La cuenta ha sido actualizad.'
    END
END
