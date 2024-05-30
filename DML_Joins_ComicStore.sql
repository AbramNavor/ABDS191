--INNER JOIN
SELECT c.id_compra, cl.nombre AS Clientes, c.fecha_compra, c.total
FROM Compras c
JOIN Clientes cl ON c.id_cliente = cl.id_clientes;


--LEFT JOIN
SELECT c.id_compra, cl.nombre AS Clientes, c.fecha_compra, c.total
FROM Compras c
LEFT JOIN Clientes cl ON c.id_cliente = cl.id_clientes;



--RIGHT JOIN
SELECT c.id_compra, cl.nombre AS Clientes, c.fecha_compra, c.total
FROM Compras c
RIGHT JOIN Clientes cl ON c.id_cliente = cl.id_clientes;


--FULL JOIN
SELECT *
FROM Clientes cl
FULL JOIN Compras c
ON c.id_cliente = cl.id_clientes;