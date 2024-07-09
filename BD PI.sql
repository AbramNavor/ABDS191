CREATE TABLE rol_usuarios (
    id_rol_usuario INT IDENTITY(1,1) PRIMARY KEY,
    nombre NVARCHAR(100)
);

CREATE TABLE usuarios (
    id_usuario INT IDENTITY(1,1) PRIMARY KEY,
    nombre NVARCHAR(100),
    direccion NVARCHAR(255),
    telefono NVARCHAR(20),
    correo NVARCHAR(100),
    id_rol_usuario INT,
    FOREIGN KEY (id_rol_usuario) REFERENCES rol_usuarios(id_rol_usuario)
);

CREATE TABLE donaciones (
    id_donacion INT IDENTITY(1,1) PRIMARY KEY,
    id_usuario INT,
    fecha DATE,
    total_dispositivos INT,
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario)
);

CREATE TABLE dispositivos (
    id_dispositivo INT IDENTITY(1,1) PRIMARY KEY,
    nombre NVARCHAR(100),
    modelo NVARCHAR(100),
    descripcion NVARCHAR(200)
);

CREATE TABLE reciclajes (
    id_reciclaje INT IDENTITY(1,1) PRIMARY KEY,
    fecha DATE,
    id_dispositivo INT,
    descripcion NVARCHAR(255),
    costo DECIMAL(10, 2),
    id_estado INT,
    FOREIGN KEY (id_dispositivo) REFERENCES dispositivos(id_dispositivo)
);

CREATE TABLE reparaciones (
    id_reparacion INT IDENTITY(1,1) PRIMARY KEY,
    fecha DATE,
    id_dispositivo INT,
    descripcion NVARCHAR(255),
    costo DECIMAL(10, 2),
    id_estado INT,
    FOREIGN KEY (id_dispositivo) REFERENCES dispositivos(id_dispositivo)
);

CREATE TABLE mat_reciclados (
    id_mat_reciclado INT IDENTITY(1,1) PRIMARY KEY,
    id_tipo_material INT,
    nombre NVARCHAR(100),
    id_reciclaje INT,
    FOREIGN KEY (id_reciclaje) REFERENCES reciclajes(id_reciclaje)
);

CREATE TABLE pzs_nuevas (
    id_pza_nueva INT IDENTITY(1,1) PRIMARY KEY,
    nombre NVARCHAR(100),
    precio DECIMAL(10, 2),
    id_reciclaje INT,
    id_reparacion INT,
    FOREIGN KEY (id_reciclaje) REFERENCES reciclajes(id_reciclaje),
    FOREIGN KEY (id_reparacion) REFERENCES reparaciones(id_reparacion)
);

CREATE TABLE inventario (
    id_inventario INT IDENTITY(1,1) PRIMARY KEY,
    id_reparacion INT,
    FOREIGN KEY (id_reparacion) REFERENCES reparaciones(id_reparacion)
);

CREATE TABLE instituciones (
    id_institucion INT IDENTITY(1,1) PRIMARY KEY,
    nombre NVARCHAR(100),
    telefono NVARCHAR(20),
    cantidad INT,
    id_inventario INT,
    FOREIGN KEY (id_inventario) REFERENCES inventario(id_inventario)
);

CREATE TABLE detalles_reparacion (
    id_detalle_reparacion INT IDENTITY(1,1) PRIMARY KEY,
    id_reparacion INT,
    id_pza_nueva INT,
    FOREIGN KEY (id_reparacion) REFERENCES reparaciones(id_reparacion),
    FOREIGN KEY (id_pza_nueva) REFERENCES pzs_nuevas(id_pza_nueva)
);