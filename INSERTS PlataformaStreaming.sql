INSERT INTO Usuarios (Nombre, Email, Pass)VALUES 
('Juan Pérez', 'juan.perez@example.com', 'password123'),
('María López', 'maria.lopez@example.com', 'passw0rd'),
('Carlos Sánchez', 'carlos.sanchez@example.com', '12345678'),
('Ana García', 'ana.garcia@example.com', 'mysecretpass'),
('Pedro Fernández', 'pedro.fernandez@example.com', 'p4ssw0rd!'),
('Laura Martínez', 'laura.martinez@example.com', 'securepass'),
('Jorge Ramírez', 'jorge.ramirez@example.com', 'pa55word'),
('Sofía Torres', 'sofia.torres@example.com', 'torres123'),
('Diego Hernández', 'diego.hernandez@example.com', 'diegopass'),
('Lucía Moreno', 'lucia.moreno@example.com', 'lucia2021');


INSERT INTO Peliculas (Titulo, Genero, FechaEstreno)VALUES 
('El Padrino', 'Drama', '1972-03-24'),
('El Caballero de la Noche', 'Acción', '2008-07-18'),
('Pulp Fiction', 'Crimen', '1994-10-14'),
('La Lista de Schindler', 'Historia', '1993-12-15'),
('El Señor de los Anillos: La Comunidad del Anillo', 'Fantasía', '2001-12-19'),
('Forrest Gump', 'Drama', '1994-07-06'),
('Star Wars: Episodio IV - Una Nueva Esperanza', 'Ciencia Ficción', '1977-05-25'),
('El Resplandor', 'Terror', '1980-05-23'),
('Matrix', 'Ciencia Ficción', '1999-03-31'),
('El Gran Lebowski', 'Comedia', '1998-03-06'),
('Titanic', 'Romance', '1997-12-19');


INSERT INTO Suscripciones (UsuarioID, FechaInicio, FechaFin, Tipo)
VALUES 
(1, '2024-01-01', '2024-12-31', 'Premium'),
(2, '2024-02-01', '2024-11-30', 'Básica'),
(3, '2024-03-01', NULL, NULL),
(4, '2024-04-01', '2025-04-01', 'Estándar'),
(5, '2024-05-01', NULL, NULL),
(6, '2024-06-01', '2025-05-31', 'Premium'),
(7, '2024-07-01', '2025-06-30', 'Básica');

select*from HistorialVisualizacion;

INSERT INTO HistorialVisualizacion (UsuarioID, PeliculaID, FechaVisualizacion)
VALUES 
(1, 1, '2024-06-01 20:15:00'),
(2, 3, '2024-06-02 18:30:00'),
(3, 2, '2024-06-03 22:45:00'),
(4, 4, '2024-06-04 19:00:00'),
(5, 5, '2024-06-05 21:30:00'),
(1, 6, '2024-06-06 20:00:00'),
(2, 7, '2024-06-07 17:45:00'),
(3, 8, '2024-06-08 23:00:00'),
(4, 9, '2024-06-09 20:30:00'),
(5, 10, '2024-06-10 19:15:00'),
(1, 11, '2024-06-11 21:00:00'),
(2, 1, '2024-06-12 20:45:00'),
(3, 3, '2024-06-13 22:30:00'),
(4, 2, '2024-06-14 19:45:00'),
(5, 4, '2024-06-15 21:15:00'),
(1, 5, '2024-06-16 20:00:00'),
(2, 6, '2024-06-17 18:30:00'),
(3, 7, '2024-06-18 22:15:00'),
(4, 8, '2024-06-19 20:45:00'),
(5, 9, '2024-06-20 21:30:00');

SELECT 
    U.UsuarioID,
    U.Nombre,
    U.Email,
    U.FechaRegistro,
    P.PeliculaID,
    P.Titulo,
    P.Genero,
    P.FechaEstreno,
    H.FechaVisualizacion AS FechaVisualizacion,
    S.Tipo AS TipoSuscripcion,
    S.FechaInicio,
    S.FechaFin
FROM Usuarios U
JOIN HistorialVisualizacion H ON U.UsuarioID = H.UsuarioID
JOIN Peliculas P ON H.PeliculaID = P.PeliculaID
LEFT JOIN Suscripciones S ON U.UsuarioID = S.UsuarioID;
