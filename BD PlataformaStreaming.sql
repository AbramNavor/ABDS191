CREATE TABLE Usuarios (
	UsuarioID INT IDENTITY(1,1) PRIMARY KEY,
	Nombre NVARCHAR(100) NOT NULL,
	Email NVARCHAR(100) NOT NULL UNIQUE,
	Pass NVARCHAR(100) NOT NULL,
	FechaRegistro DATE NOT NULL DEFAULT GETDATE()
);

CREATE TABLE Peliculas (
	PeliculaID INT IDENTITY(1,1) PRIMARY KEY,
	Titulo NVARCHAR(100) NOT NULL,
	Genero NVARCHAR(50),
	FechaEstreno DATE
);

CREATE TABLE Suscripciones(
	SuscripcionID INT IDENTITY(1,1) PRIMARY KEY,
	UsuarioID INT NOT NULL,
	FechaInicio DATE NOT NULL,
	FechaFin DATE,
	Tipo NVARCHAR(50),
	FOREIGN KEY(UsuarioID) REFERENCES Usuarios (UsuarioID)
);

CREATE TABLE HistorialVisualizacion(
	HistorialID INT IDENTITY(1,1) PRIMARY KEY,
	UsuarioID INT NOT NULL,
	PeliculaID INT NOT NULL,
	FechaVisualizacion DATETIME NOT NULL DEFAULT GETDATE(),
	FOREIGN KEY (UsuarioID) REFERENCES Usuarios(UsuarioID),
	FOREIGN KEY (PeliculaID) REFERENCES Peliculas(PeliculaID)
);
