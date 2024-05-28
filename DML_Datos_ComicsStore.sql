INSERT INTO Clientes(nombre, correo_electronico, pass) VALUES ('Juan Perez', 'juan@example.com', 'password123');
INSERT INTO Clientes(nombre, correo_electronico, pass) VALUES ('María López', 'maria@example.com', 'securepass456');
INSERT INTO Clientes(nombre, correo_electronico, pass) VALUES ('Carlos García', 'carlos@example.com', 'letmein789');
INSERT INTO Clientes(nombre, correo_electronico, pass) VALUES ('Ana Martínez', 'ana@example.com', 'password321');
INSERT INTO Clientes(nombre, correo_electronico, pass) VALUES ('Pedro Rodríguez', 'pedro@example.com', 'abc123');
INSERT INTO Clientes(nombre, correo_electronico, pass) VALUES ('Laura Ramírez', 'laura@example.com', 'qwerty987');
INSERT INTO Clientes(nombre, correo_electronico, pass) VALUES ('Luis Hernández', 'luis@example.com', 'pass1234');
INSERT INTO Clientes(nombre, correo_electronico, pass) VALUES ('Sofía Díaz', 'sofia@example.com', 'p@ssw0rd');
INSERT INTO Clientes(nombre, correo_electronico, pass) VALUES ('Elena Gómez', 'elena@example.com', 'letmein2022');
INSERT INTO Clientes(nombre, correo_electronico, pass) VALUES ('Jorge Castro', 'jorge@example.com', 'securepass2023');
INSERT INTO Clientes(nombre, correo_electronico, pass) VALUES ('Lucía Torres', 'lucia@example.com', 'password2024');
INSERT INTO Clientes(nombre, correo_electronico, pass) VALUES ('Daniel Ruiz', 'daniel@example.com', 'abc123xyz');

INSERT INTO Comics(nombre, anio, precio) VALUES ('Spider-Man', 02, 15.99);
INSERT INTO Comics(nombre, anio, precio) VALUES ('Batman', 95, 12.50);
INSERT INTO Comics(nombre, anio, precio) VALUES ('Superman', 80, 20.00);
INSERT INTO Comics(nombre, anio, precio) VALUES ('X-Men', 00, 18.75);
INSERT INTO Comics(nombre, anio, precio) VALUES ('Wonder Woman', 10, 22.99);
INSERT INTO Comics(nombre, anio, precio) VALUES ('The Avengers', 12, 19.99);
INSERT INTO Comics(nombre, anio, precio) VALUES ('The Flash', 98, 14.50);
INSERT INTO Comics(nombre, anio, precio) VALUES ('Green Lantern', 05, 16.25);
INSERT INTO Comics(nombre, anio, precio) VALUES ('Captain America', 99, 17.99);
INSERT INTO Comics(nombre, anio, precio) VALUES ('Iron Man', 08, 21.50);
INSERT INTO Comics(nombre, anio, precio) VALUES ('Thor', 11, 18.99);
INSERT INTO Comics(nombre, anio, precio) VALUES ('Hulk', 03, 16.75);
INSERT INTO Comics(nombre, anio, precio) VALUES ('Deadpool', 16, 24.99);
INSERT INTO Comics(nombre, anio, precio) VALUES ('Black Panther', 18, 23.50);
INSERT INTO Comics(nombre, anio, precio) VALUES ('Guardians of the Galaxy', 14, 20.25);


INSERT INTO Inventarios (id_comic, cantidad_disponible, disponibilidad) VALUES (40, 20, 1);
INSERT INTO Inventarios (id_comic, cantidad_disponible, disponibilidad) VALUES (42, 15, 1);
INSERT INTO Inventarios (id_comic, cantidad_disponible, disponibilidad) VALUES (44, 10, 1);
INSERT INTO Inventarios (id_comic, cantidad_disponible, disponibilidad) VALUES (46, 25, 1);
INSERT INTO Inventarios (id_comic, cantidad_disponible, disponibilidad) VALUES (48, 30, 1);
INSERT INTO Inventarios (id_comic, cantidad_disponible, disponibilidad) VALUES (50, 18, 1);
INSERT INTO Inventarios (id_comic, cantidad_disponible, disponibilidad) VALUES (52, 22, 1);
INSERT INTO Inventarios (id_comic, cantidad_disponible, disponibilidad) VALUES (54, 17, 1);
INSERT INTO Inventarios (id_comic, cantidad_disponible, disponibilidad) VALUES (56, 12, 1);
INSERT INTO Inventarios (id_comic, cantidad_disponible, disponibilidad) VALUES (58, 28, 1);
INSERT INTO Inventarios (id_comic, cantidad_disponible, disponibilidad) VALUES (60, 23, 1);
INSERT INTO Inventarios (id_comic, cantidad_disponible, disponibilidad) VALUES (62, 14, 1);
INSERT INTO Inventarios (id_comic, cantidad_disponible, disponibilidad) VALUES (64, 19, 1);
INSERT INTO Inventarios (id_comic, cantidad_disponible, disponibilidad) VALUES (66, 0, 0);
INSERT INTO Inventarios (id_comic, cantidad_disponible, disponibilidad) VALUES (68, 0, 0);
 
select*from Comics;


INSERT INTO Compras (id_cliente, fecha_compra, total) VALUES (1, '2024-05-01', 50.75);
INSERT INTO Compras (id_cliente, fecha_compra, total) VALUES (3, '2024-05-03', 35.50);
INSERT INTO Compras (id_cliente, fecha_compra, total) VALUES (5, '2024-05-05', 62.25);
INSERT INTO Compras (id_cliente, fecha_compra, total) VALUES (7, '2024-05-07', 48.99);
INSERT INTO Compras (id_cliente, fecha_compra, total) VALUES (9, '2024-05-09', 40.20);
INSERT INTO Compras (id_cliente, fecha_compra, total) VALUES (11, '2024-05-11', 55.80);
INSERT INTO Compras (id_cliente, fecha_compra, total) VALUES (2, '2024-05-15', 30.45);


INSERT INTO Compras (id_cliente, fecha_compra, total) VALUES (1, '2024-05-01', 50.75);
INSERT INTO Compras (id_cliente, fecha_compra, total) VALUES (2, '2024-05-03', 35.50);
INSERT INTO Compras (id_cliente, fecha_compra, total) VALUES (3, '2024-05-05', 62.25);
INSERT INTO Compras (id_cliente, fecha_compra, total) VALUES (4, '2024-05-07', 48.99);
INSERT INTO Compras (id_cliente, fecha_compra, total) VALUES (5, '2024-05-09', 40.20);
INSERT INTO Compras (id_cliente, fecha_compra, total) VALUES (6, '2024-05-11', 55.80);
INSERT INTO Compras (id_cliente, fecha_compra, total) VALUES (7, '2024-05-15', 30.45);

select * from Compras;

INSERT INTO Compras (id_cliente, fecha_compra, total) VALUES (8, '2024-05-20', 42.30);
INSERT INTO Compras (id_cliente, fecha_compra, total) VALUES (9, '2024-05-22', 55.60);
INSERT INTO Compras (id_cliente, fecha_compra, total) VALUES (10, '2024-05-25', 38.75);
INSERT INTO Compras (id_cliente, fecha_compra, total) VALUES (8, '2024-05-20', 50.30);
INSERT INTO Compras (id_cliente, fecha_compra, total) VALUES (9, '2024-05-22', 14.60);
INSERT INTO Compras (id_cliente, fecha_compra, total) VALUES (10, '2024-05-25', 24.75);


INSERT INTO Compras (id_cliente, fecha_compra, total) VALUES (11, '2024-05-25', 0.00);
INSERT INTO Compras (id_cliente, fecha_compra, total) VALUES (12, '2024-05-25', 0.00);



