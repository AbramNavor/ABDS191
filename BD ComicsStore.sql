Create table Clientes(
	id_clientes bigint identity(1,1) PRIMARY KEY, 
	nombre varchar(100),
	correo_electronico nvarchar(255),
	pass varchar(255)
);

Create table Comics(
	id_comic BIGINT IDENTITY(10,2) PRIMARY KEY,
	nombre VARCHAR(100),
	anio TINYINT,
	precio DECIMAL(10,2)
);
Create table Compras(
	id_compra bigint identity(100,3) PRIMARY KEY,
	id_cliente bigint,
	fecha_compra date,
	total DECIMAL(10,2),
	FOREIGN KEY (id_cliente) REFERENCES Clientes(id_clientes),
);

Create table Inventarios(
	id_inventario BIGINT identity (200,1) PRIMARY KEY,
	id_comic BIGINT ,
	cantidad_disponible int,
	disponibilidad binary,
	FOREIGN KEY (id_comic) REFERENCES Comics(id_comic)
);

Create table Comic_Compras(
		id_CC BIGINT IDENTITY (1000,2),
		cantida TINYINT,
		id_compra BIGINT,
		id_comic BIGINT,
		FOREIGN KEY (id_compra) REFERENCES Compras(id_compra),
		FOREIGN KEY (id_comic) REFERENCES Comics(id_comic)

);

