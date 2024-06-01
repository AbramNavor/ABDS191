SELECT c.nombre AS Comics, i.cantidad_disponible
FROM Comics c
JOIN Inventarios i ON c.id_comic = i.id_comic
where i.cantidad_disponible >= 0;



SELECT 
    cl.nombre AS Clientes,
    co.id_compra,
    c.nombre AS Comics,
    cc.cantida
FROM Clientes cl
JOIN compras co ON cl.id_clientes = co.id_cliente
JOIN Comic_Compras cc ON co.id_compra = cc.id_compra
JOIN Comics c ON cc.id_comic = c.id_comic
ORDER BY cl.nombre;


SELECT 
    co.id_compra,
    c.nombre AS nombre_comic,
    i.cantidad_disponible AS cantidad_disponible
FROM Comics c
LEFT JOIN Comic_Compras cc ON c.id_comic = cc.id_comic
LEFT JOIN Compras co ON cc.id_compra = co.id_compra
LEFT JOIN Clientes cl ON co.id_cliente = cl.id_clientes
LEFT JOIN Inventarios i ON c.id_comic = i.id_comic
ORDER BY c.nombre;


SELECT 
    c.nombre AS nombre_comic,
    i.cantidad_disponible AS cantidad_disponible
FROM Comics c
LEFT JOIN Inventarios i ON c.id_comic = i.id_comic
ORDER BY c.nombre;



SELECT 
    c.id_comic,
    c.nombre,
    c.anio,
    c.precio,
    i.id_inventario,
    i.cantidad_disponible,
    i.disponibilidad,
    cc.id_CC,
    cc.cantida,
    cc.id_compra,
    cc.id_comic
FROM Comics c
LEFT JOIN Comic_Compras cc ON c.id_comic = cc.id_comic
LEFT JOIN Inventarios i ON c.id_comic = i.id_comic
ORDER BY c.nombre;



SELECT 
    cl.nombre AS nombre_cliente,
    co.id_compra,
    c.nombre AS nombre_comic,
    cc.cantida AS cantidad_comprada,
    i.cantidad_disponible AS cantidad_disponible
FROM Clientes cl
INNER JOIN Compras co ON cl.id_clientes = co.id_cliente
INNER JOIN Comic_Compras cc ON co.id_compra = cc.id_compra
INNER JOIN Comics c ON cc.id_comic = c.id_comic
INNER JOIN Inventarios i ON c.id_comic = i.id_comic
ORDER BY cl.nombre, co.id_compra;
