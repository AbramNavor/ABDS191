INSERT INTO rol_usuarios (nombre) VALUES ('Administrador');
INSERT INTO rol_usuarios (nombre) VALUES ('Usuario');

INSERT INTO usuarios (nombre, direccion, telefono, correo, id_rol_usuario) VALUES 
('Juan Perez', 'Calle 123', '555-1234', 'juan.perez@example.com', 1),
('Maria Lopez', 'Avenida 45', '555-5678', 'maria.lopez@example.com', 2),
('Carlos Garcia', 'Plaza Mayor 10', '555-9101', 'carlos.garcia@example.com', 1),
('Ana Torres', 'Calle Real 22', '555-1122', 'ana.torres@example.com', 2),
('Luis Hernandez', 'Boulevard Central 5', '555-3344', 'luis.hernandez@example.com', 1),
('Elena Martinez', 'Paseo de la Reforma 18', '555-5566', 'elena.martinez@example.com', 2),
('Miguel Suarez', 'Calle del Sol 3', '555-7788', 'miguel.suarez@example.com', 1),
('Laura Gonzalez', 'Avenida del Parque 20', '555-9900', 'laura.gonzalez@example.com', 2),
('David Ramirez', 'Callejón del Arte 15', '555-1111', 'david.ramirez@example.com', 1),
('Marta Diaz', 'Plaza del Mercado 9', '555-2222', 'marta.diaz@example.com', 2),
('Jorge Sanchez', 'Boulevard de los Poetas 4', '555-3333', 'jorge.sanchez@example.com', 1),
('Lucia Fernandez', 'Avenida del Libertador 16', '555-4444', 'lucia.fernandez@example.com', 2),
('Pedro Jimenez', 'Calle de las Flores 7', '555-5555', 'pedro.jimenez@example.com', 1),
('Sara Ruiz', 'Paseo del Bosque 12', '555-6666', 'sara.ruiz@example.com', 2),
('Fernando Ortiz', 'Avenida del Sol 19', '555-7777', 'fernando.ortiz@example.com', 1);

INSERT INTO dispositivos (nombre, modelo, descripcion) VALUES 
('Laptop', 'Dell XPS 15', 'Laptop de alta gama'),
('Tablet', 'iPad Pro', 'Tablet con pantalla retina'),
('Smartphone', 'Samsung Galaxy S21', 'Teléfono inteligente'),
('Impresora', 'HP LaserJet', 'Impresora láser'),
('Monitor', 'LG UltraWide', 'Monitor ultra ancho'),
('Cámara', 'Canon EOS 5D', 'Cámara DSLR'),
('Teclado', 'Logitech G915', 'Teclado mecánico'),
('Mouse', 'Razer DeathAdder', 'Mouse gaming'),
('Router', 'Netgear Nighthawk', 'Router de alta velocidad'),
('Disco Duro', 'WD My Passport', 'Disco duro externo'),
('Proyector', 'Epson PowerLite', 'Proyector HD'),
('Altavoz', 'JBL Flip 5', 'Altavoz portátil'),
('Smartwatch', 'Apple Watch', 'Reloj inteligente'),
('Televisor', 'Sony Bravia', 'Televisor 4K'),
('Consola', 'PlayStation 5', 'Consola de videojuegos');

INSERT INTO reciclajes (fecha, id_dispositivo, descripcion, costo, id_estado) VALUES 
('2023-01-15', 1, 'Reciclaje de componentes internos', 150.00, 1),
('2023-02-10', 2, 'Reciclaje de pantalla y componentes internos', 200.00, 2),
('2023-03-10', 3, 'Reciclaje de carcasa y batería', 100.00, 3),
('2023-04-05', 4, 'Reciclaje de pantalla y batería', 180.00, 4),
('2023-05-01', 5, 'Reciclaje de disco duro y RAM', 250.00, 1),
('2023-06-25', 6, 'Reciclaje de pantalla y fuente de alimentación', 220.00, 2),
('2023-07-15', 7, 'Reciclaje de teclado y carcasa', 50.00, 3),
('2023-08-10', 8, 'Reciclaje de sensor y placa base', 75.00, 4),
('2023-09-05', 9, 'Reciclaje de tinta y cabezales de impresión', 45.00, 1),
('2023-10-01', 10, 'Reciclaje de antena y placa base', 90.00, 2),
('2023-11-25', 11, 'Reciclaje de lente y batería', 130.00, 3),
('2023-12-15', 12, 'Reciclaje de almohadillas y cable', 35.00, 4),
('2024-01-10', 13, 'Reciclaje de batería y altavoz', 100.00, 1),
('2024-02-05', 14, 'Reciclaje de lámpara y ventilador', 50.00, 2),
('2024-03-01', 15, 'Reciclaje de controlador y chip', 90.00, 3);


INSERT INTO reparaciones (fecha, id_dispositivo, descripcion, costo, id_estado) VALUES ('2023-01-25', 1, 'Reparación de pantalla de laptop', 120.00, 1);
INSERT INTO reparaciones (fecha, id_dispositivo, descripcion, costo, id_estado) VALUES ('2023-02-20', 2, 'Reparación de cámara de teléfono', 170.00, 2);
INSERT INTO reparaciones (fecha, id_dispositivo, descripcion, costo, id_estado) VALUES ('2023-03-15', 3, 'Reparación de botón de tableta', 220.00, 3);
INSERT INTO reparaciones (fecha, id_dispositivo, descripcion, costo, id_estado) VALUES ('2023-04-10', 4, 'Reparación de puerto HDMI de monitor', 270.00, 4);
INSERT INTO reparaciones (fecha, id_dispositivo, descripcion, costo, id_estado) VALUES ('2023-05-05', 5, 'Reparación de motor de impresora', 320.00, 5);
INSERT INTO reparaciones (fecha, id_dispositivo, descripcion, costo, id_estado) VALUES ('2023-06-30', 6, 'Reparación de flash de cámara', 370.00, 1);
INSERT INTO reparaciones (fecha, id_dispositivo, descripcion, costo, id_estado) VALUES ('2023-07-25', 7, 'Reparación de lámpara de proyector', 420.00, 2);
INSERT INTO reparaciones (fecha, id_dispositivo, descripcion, costo, id_estado) VALUES ('2023-08-20', 8, 'Reparación de antena de router', 470.00, 3);
INSERT INTO reparaciones (fecha, id_dispositivo, descripcion, costo, id_estado) VALUES ('2023-09-15', 9, 'Reparación de teclas de teclado', 520.00, 4);
INSERT INTO reparaciones (fecha, id_dispositivo, descripcion, costo, id_estado) VALUES ('2023-10-10', 10, 'Reparación de sensor de ratón', 570.00, 5);
INSERT INTO reparaciones (fecha, id_dispositivo, descripcion, costo, id_estado) VALUES ('2023-11-05', 11, 'Reparación de altavoz', 620.00, 1);
INSERT INTO reparaciones (fecha, id_dispositivo, descripcion, costo, id_estado) VALUES ('2023-12-30', 12, 'Reparación de almohadillas de auriculares', 670.00, 2);
INSERT INTO reparaciones (fecha, id_dispositivo, descripcion, costo, id_estado) VALUES ('2024-01-25', 13, 'Reparación de batería de smartwatch', 720.00, 3);
INSERT INTO reparaciones (fecha, id_dispositivo, descripcion, costo, id_estado) VALUES ('2024-02-20', 14, 'Reparación de disco duro de consola', 770.00, 4);
INSERT INTO reparaciones (fecha, id_dispositivo, descripcion, costo, id_estado) VALUES ('2024-03-15', 15, 'Reparación de hélices de drone', 820.00, 5);


INSERT INTO mat_reciclados (id_tipo_material, nombre, id_reciclaje) VALUES (1, 'Plástico', 1);
INSERT INTO mat_reciclados (id_tipo_material, nombre, id_reciclaje) VALUES (2, 'Metal', 2);
INSERT INTO mat_reciclados (id_tipo_material, nombre, id_reciclaje) VALUES (3, 'Vidrio', 3);
INSERT INTO mat_reciclados (id_tipo_material, nombre, id_reciclaje) VALUES (4, 'Cobre', 4);
INSERT INTO mat_reciclados (id_tipo_material, nombre, id_reciclaje) VALUES (5, 'Aluminio', 5);
INSERT INTO mat_reciclados (id_tipo_material, nombre, id_reciclaje) VALUES (1, 'Plástico', 6);
INSERT INTO mat_reciclados (id_tipo_material, nombre, id_reciclaje) VALUES (2, 'Metal', 7);
INSERT INTO mat_reciclados (id_tipo_material, nombre, id_reciclaje) VALUES (3, 'Vidrio', 8);
INSERT INTO mat_reciclados (id_tipo_material, nombre, id_reciclaje) VALUES (4, 'Cobre', 9);
INSERT INTO mat_reciclados (id_tipo_material, nombre, id_reciclaje) VALUES (5, 'Aluminio', 10);
INSERT INTO mat_reciclados (id_tipo_material, nombre, id_reciclaje) VALUES (1, 'Plástico', 11);
INSERT INTO mat_reciclados (id_tipo_material, nombre, id_reciclaje) VALUES (2, 'Metal', 12);
INSERT INTO mat_reciclados (id_tipo_material, nombre, id_reciclaje) VALUES (3, 'Vidrio', 13);
INSERT INTO mat_reciclados (id_tipo_material, nombre, id_reciclaje) VALUES (4, 'Cobre', 14);
INSERT INTO mat_reciclados (id_tipo_material, nombre, id_reciclaje) VALUES (5, 'Aluminio', 15);


INSERT INTO pzs_nuevas (nombre, precio, id_reciclaje, id_reparacion) VALUES ('Pantalla', 50.00, 1, 1);
INSERT INTO pzs_nuevas (nombre, precio, id_reciclaje, id_reparacion) VALUES ('Cámara', 75.00, 2, 2);
INSERT INTO pzs_nuevas (nombre, precio, id_reciclaje, id_reparacion) VALUES ('Botón', 30.00, 3, 3);
INSERT INTO pzs_nuevas (nombre, precio, id_reciclaje, id_reparacion) VALUES ('Puerto HDMI', 100.00, 4, 4);
INSERT INTO pzs_nuevas (nombre, precio, id_reciclaje, id_reparacion) VALUES ('Motor', 150.00, 5, 5);
INSERT INTO pzs_nuevas (nombre, precio, id_reciclaje, id_reparacion) VALUES ('Flash', 120.00, 6, 6);
INSERT INTO pzs_nuevas (nombre, precio, id_reciclaje, id_reparacion) VALUES ('Lámpara', 200.00, 7, 7);
INSERT INTO pzs_nuevas (nombre, precio, id_reciclaje, id_reparacion) VALUES ('Antena', 80.00, 8, 8);
INSERT INTO pzs_nuevas (nombre, precio, id_reciclaje, id_reparacion) VALUES ('Teclas', 60.00, 9, 9);
INSERT INTO pzs_nuevas (nombre, precio, id_reciclaje, id_reparacion) VALUES ('Sensor', 90.00, 10, 10);
INSERT INTO pzs_nuevas (nombre, precio, id_reciclaje, id_reparacion) VALUES ('Altavoz', 130.00, 11, 11);
INSERT INTO pzs_nuevas (nombre, precio, id_reciclaje, id_reparacion) VALUES ('Almohadillas', 50.00, 12, 12);
INSERT INTO pzs_nuevas (nombre, precio, id_reciclaje, id_reparacion) VALUES ('Batería', 70.00, 13, 13);
INSERT INTO pzs_nuevas (nombre, precio, id_reciclaje, id_reparacion) VALUES ('Disco Duro', 200.00, 14, 14);
INSERT INTO pzs_nuevas (nombre, precio, id_reciclaje, id_reparacion) VALUES ('Hélices', 90.00, 15, 15);

INSERT INTO inventario (id_reparacion) VALUES (1);
INSERT INTO inventario (id_reparacion) VALUES (2);
INSERT INTO inventario (id_reparacion) VALUES (3);
INSERT INTO inventario (id_reparacion) VALUES (4);
INSERT INTO inventario (id_reparacion) VALUES (5);
INSERT INTO inventario (id_reparacion) VALUES (6);
INSERT INTO inventario (id_reparacion) VALUES (7);
INSERT INTO inventario (id_reparacion) VALUES (8);
INSERT INTO inventario (id_reparacion) VALUES (9);
INSERT INTO inventario (id_reparacion) VALUES (10);
INSERT INTO inventario (id_reparacion) VALUES (11);
INSERT INTO inventario (id_reparacion) VALUES (12);
INSERT INTO inventario (id_reparacion) VALUES (13);
INSERT INTO inventario (id_reparacion) VALUES (14);
INSERT INTO inventario (id_reparacion) VALUES (15);


INSERT INTO instituciones (nombre, telefono, cantidad, id_inventario) VALUES ('Instituto Educativo A', '555-1111', 5, 1);
INSERT INTO instituciones (nombre, telefono, cantidad, id_inventario) VALUES ('Fundación B', '555-2222', 10, 2);
INSERT INTO instituciones (nombre, telefono, cantidad, id_inventario) VALUES ('ONG C', '555-3333', 15, 3);
INSERT INTO instituciones (nombre, telefono, cantidad, id_inventario) VALUES ('Centro Comunitario D', '555-4444', 20, 4);
INSERT INTO instituciones (nombre, telefono, cantidad, id_inventario) VALUES ('Hospital E', '555-5555', 25, 5);
INSERT INTO instituciones (nombre, telefono, cantidad, id_inventario) VALUES ('Biblioteca F', '555-6666', 30, 6);
INSERT INTO instituciones (nombre, telefono, cantidad, id_inventario) VALUES ('Escuela G', '555-7777', 35, 7);
INSERT INTO instituciones (nombre, telefono, cantidad, id_inventario) VALUES ('Universidad H', '555-8888', 40, 8);
INSERT INTO instituciones (nombre, telefono, cantidad, id_inventario) VALUES ('Iglesia I', '555-9999', 45, 9);
INSERT INTO instituciones (nombre, telefono, cantidad, id_inventario) VALUES ('Casa Hogar J', '555-0000', 50, 10);
INSERT INTO instituciones (nombre, telefono, cantidad, id_inventario) VALUES ('Refugio K', '555-1010', 55, 11);
INSERT INTO instituciones (nombre, telefono, cantidad, id_inventario) VALUES ('Centro de Salud L', '555-2020', 60, 12);
INSERT INTO instituciones (nombre, telefono, cantidad, id_inventario) VALUES ('Centro de Rehabilitación M', '555-3030', 65, 13);
INSERT INTO instituciones (nombre, telefono, cantidad, id_inventario) VALUES ('Orfanato N', '555-4040', 70, 14);
INSERT INTO instituciones (nombre, telefono, cantidad, id_inventario) VALUES ('Asilo de Ancianos O', '555-5050', 75, 15);


INSERT INTO detalles_reparacion (id_reparacion, id_pza_nueva) VALUES (1, 1);
INSERT INTO detalles_reparacion (id_reparacion, id_pza_nueva) VALUES (2, 2);
INSERT INTO detalles_reparacion (id_reparacion, id_pza_nueva) VALUES (3, 3);
INSERT INTO detalles_reparacion (id_reparacion, id_pza_nueva) VALUES (4, 4);
INSERT INTO detalles_reparacion (id_reparacion, id_pza_nueva) VALUES (5, 5);
INSERT INTO detalles_reparacion (id_reparacion, id_pza_nueva) VALUES (6, 6);
INSERT INTO detalles_reparacion (id_reparacion, id_pza_nueva) VALUES (7, 7);
INSERT INTO detalles_reparacion (id_reparacion, id_pza_nueva) VALUES (8, 8);
INSERT INTO detalles_reparacion (id_reparacion, id_pza_nueva) VALUES (9, 9);
INSERT INTO detalles_reparacion (id_reparacion, id_pza_nueva) VALUES (10, 10);
INSERT INTO detalles_reparacion (id_reparacion, id_pza_nueva) VALUES (11, 11);
INSERT INTO detalles_reparacion (id_reparacion, id_pza_nueva) VALUES (12, 12);
INSERT INTO detalles_reparacion (id_reparacion, id_pza_nueva) VALUES (13, 13);
INSERT INTO detalles_reparacion (id_reparacion, id_pza_nueva) VALUES (14, 14);
INSERT INTO detalles_reparacion (id_reparacion, id_pza_nueva) VALUES (15, 15);

INSERT INTO donaciones (id_usuario, fecha, total_dispositivos) VALUES (21, '2023-01-15', 10);
INSERT INTO donaciones (id_usuario, fecha, total_dispositivos) VALUES (22, '2023-02-10', 15);
INSERT INTO donaciones (id_usuario, fecha, total_dispositivos) VALUES (23, '2023-03-05', 20);
INSERT INTO donaciones (id_usuario, fecha, total_dispositivos) VALUES (24, '2023-04-01', 25);
INSERT INTO donaciones (id_usuario, fecha, total_dispositivos) VALUES (25, '2023-05-25', 30);
INSERT INTO donaciones (id_usuario, fecha, total_dispositivos) VALUES (26, '2023-06-15', 35);
INSERT INTO donaciones (id_usuario, fecha, total_dispositivos) VALUES (27, '2023-07-10', 40);
INSERT INTO donaciones (id_usuario, fecha, total_dispositivos) VALUES (28, '2023-08-05', 45);
INSERT INTO donaciones (id_usuario, fecha, total_dispositivos) VALUES (29, '2023-09-01', 50);
INSERT INTO donaciones (id_usuario, fecha, total_dispositivos) VALUES (30, '2023-10-25', 55);
INSERT INTO donaciones (id_usuario, fecha, total_dispositivos) VALUES (31, '2023-11-15', 60);
INSERT INTO donaciones (id_usuario, fecha, total_dispositivos) VALUES (32, '2023-12-10', 65);
INSERT INTO donaciones (id_usuario, fecha, total_dispositivos) VALUES (33, '2024-01-05', 70);
INSERT INTO donaciones (id_usuario, fecha, total_dispositivos) VALUES (34, '2024-02-01', 75);
INSERT INTO donaciones (id_usuario, fecha, total_dispositivos) VALUES (35, '2024-03-25', 80);
