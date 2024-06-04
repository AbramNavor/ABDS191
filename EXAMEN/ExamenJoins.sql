CREATE TABLE Autores (
id_autor bigint identity(300,1) PRIMARY KEY,
nombre VARCHAR(100),
pais_origen VARCHAR(100)
);

ALTER TABLE Comics
ADD id_autor bigint,
FOREIGN KEY (id_autor) REFERENCES Autores(id_autor);

INSERT INTO Autores (nombre, pais_origen) VALUES ('Gabriel García Márquez', 'Colombia');
INSERT INTO Autores (nombre, pais_origen) VALUES ('Isabel Allende', 'Chile');
INSERT INTO Autores (nombre, pais_origen) VALUES ('Mario Vargas Llosa', 'Perú');
INSERT INTO Autores (nombre, pais_origen) VALUES ('Jorge Luis Borges', 'Argentina');

select*from Autores;
select*from Comics;
select*from Comic_Compras;

UPDATE Comics SET id_autor = 301 WHERE id_comic = 40;
UPDATE Comics SET id_autor = 302 WHERE id_comic = 42;
UPDATE Comics SET id_autor = 303 WHERE id_comic = 44;
UPDATE Comics SET id_autor = 301 WHERE id_comic = 48;
UPDATE Comics SET id_autor = 302 WHERE id_comic = 50;
UPDATE Comics SET id_autor = 303 WHERE id_comic = 52;
UPDATE Comics SET id_autor = 300 WHERE id_comic = 46;
UPDATE Comics SET id_autor = 300 WHERE id_comic = 54;
UPDATE Comics SET id_autor = 301 WHERE id_comic = 60;
UPDATE Comics SET id_autor = 302 WHERE id_comic = 56;
UPDATE Comics SET id_autor = 303 WHERE id_comic = 58;

---Crear una consulta que muestre Comic con su autor y pais de origen con la cantidad vendida incluidos los que no tengar autor---
Select
    c.nombre,
	au.pais_origen,
    au.nombre,
	cc.cantida AS cantidad
FROM Comics c
LEFT JOIN Autores au ON  c.id_autor = au.id_autor
LEFT JOIN Comic_Compras cc ON c.id_comic = cc.id_comic
Group by c.nombre, au.pais_origen, au.nombre, cc.cantida
order BY c.nombre;



---Crear una consulta que muestre el Autor con su comic y la cantidad disponible en inventario incluidos los que no tienen autor asignado---
Select
	au.nombre,
	c.nombre,
	i.cantidad_disponible
FROM Comics c
LEFT JOIN Autores au ON c.id_autor = au.id_autor
LEFT JOIN Inventarios i ON i.id_comic = c.id_comic
order by au.nombre, c.nombre, i.cantidad_disponible;

select*from Inventarios;
