CREATE PROCEDURE sp_InsertarCliente
	@nombre VARCHAR(100),
	@correo_electronico nvarchar(255),
	@pass varchar(255)
AS
BEGIN
	INSERT INTO Clientes(nombre,correo_electronico,pass) VALUES (@nombre,@correo_electronico,@pass);
END;

DROP PROCEDURE sp_InsertarCliente;

EXEC sp_InsertarCliente 'Juan Pérez', 'juan.perez@example.com', 'password123';
EXEC sp_InsertarCliente 'María López', 'maria.lopez@example.com', 'securepassword';
EXEC sp_InsertarCliente 'Carlos García', 'carlos.garcia@example.com', 'mypassword';
select*from Clientes;

----------------------------------------------
CREATE PROCEDURE sp_InsertarComic
    @nombre VARCHAR(100),
    @anio TINYINT,
    @precio DECIMAL(10,2)
AS
BEGIN
    INSERT INTO Comics (nombre,anio,precio)VALUES (@nombre,@anio, @precio);
END;

EXEC sp_InsertarComic 'Superman: Red Son', 03, 15.99;
EXEC sp_InsertarComic 'Wonder Woman: Year One', 16, 17.99;
EXEC sp_InsertarComic 'Black Panther: A Nation Under Our Feet', 16, 18.99;

select*from Comics;
----------------------------------------------------------
CREATE PROCEDURE sp_EditarComic
    @id_comic BIGINT,
    @nombre VARCHAR(100),
    @anio TINYINT,
    @precio DECIMAL(10,2)
AS
BEGIN
    UPDATE Comics 
	SET nombre = @nombre, anio = @anio, precio = @precio
    WHERE id_comic = @id_comic;
END;

EXEC sp_EditarComic 40, 'Kiss Edition limited', 04, 16.99;
EXEC sp_EditarComic 42, 'Don Gato y su Pandilla', 17, 19.99;
EXEC sp_EditarComic 44, 'Chespitiro', 17, 20.99;

select*from Comics;
----------------------------------------------------------------
CREATE PROCEDURE sp_EditarCliente
    @id_clientes BIGINT,
    @nombre VARCHAR(100),
    @correo_electronico NVARCHAR(255),
    @pass VARCHAR(255)
AS
BEGIN
    UPDATE Clientes
    SET nombre = @nombre,correo_electronico = @correo_electronico,pass = @pass
    WHERE id_clientes = @id_clientes;
END;

EXEC sp_EditarCliente 1, 'Abraham Perez', 'abram.perez.updated@example.com', 'newpassword123';
EXEC sp_EditarCliente 2, 'Juana Lopez','juana.lopez@example.com', 'newsecurepassword';
EXEC sp_EditarCliente 3, 'Arturo Rodriguez', 'arturo.rodriguez@example.com', 'newmypassword';

select*from Clientes;
-------------------------------------------------------------------------------
CREATE PROCEDURE sp_EliminarCliente
    @id_clientes BIGINT
AS
BEGIN
    DELETE FROM Clientes
    WHERE id_clientes = @id_clientes;
END;

EXEC sp_EliminarCliente 13;
EXEC sp_EliminarCliente 14;
EXEC sp_EliminarCliente 15;

select*from Clientes;

--------------------------------------------------
CREATE PROCEDURE sp_EliminarComic
    @id_comic BIGINT
AS
BEGIN
    DELETE FROM Comics
    WHERE id_comic = @id_comic;
END;

EXEC sp_EliminarComic 70;
EXEC sp_EliminarComic 72;
EXEC sp_EliminarComic 74;

select*from Comics;
-------------------------------------------------------
CREATE PROCEDURE sp_ConsultarCompras
    @id_cliente BIGINT
AS
BEGIN
    SELECT c.id_compra,c.fecha_compra,c.total,cli.nombre,cli.correo_electronico
    FROM Compras c
    INNER JOIN Clientes cli ON c.id_cliente = cli.id_clientes
    WHERE c.id_cliente = @id_cliente;
END;

EXEC sp_ConsultarCompras 1;
EXEC sp_ConsultarCompras 2;
EXEC sp_ConsultarCompras 3;

select*from Compras;
--------------------------------------------------------------------------------------
CREATE PROCEDURE sp_ConsultarInventario
    @id_comic BIGINT 
AS
BEGIN
    SELECT c.id_comic,c.nombre,i.cantidad_disponible
    FROM Comics c
    INNER JOIN Inventarios i ON c.id_comic = i.id_comic
    WHERE c.id_comic = @id_comic;
END;

EXEC sp_ConsultarInventario 68;
EXEC sp_ConsultarInventario 52;
EXEC sp_ConsultarInventario 56;

select*from Comics;
DROP PROCEDURE sp_ConsultarInventario;

----------------------------------------------------------------
CREATE PROCEDURE sp_DetallesCompra
    @id_compra BIGINT
AS
BEGIN
    SELECT cc.id_compra,co.nombre,co.anio,co.precio,cc.cantida
    FROM Comic_Compras cc
    INNER JOIN Comics co ON cc.id_comic = co.id_comic
    WHERE cc.id_compra = @id_compra;
END;

EXEC sp_DetallesCompra 130;
EXEC sp_DetallesCompra 136;
EXEC sp_DetallesCompra 148;

select*from Compras;