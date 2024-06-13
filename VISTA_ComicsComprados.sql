-- Crea una Vista llamada Vista_ComicsComprados donde se pueda apreciar y contar los comics que compro cada cliente
CREATE VIEW Vista_ComicsComprados AS
SELECT c.id_clientes, 
c.nombre AS nombre_cliente,
cc.cantida AS cantidad_comic_comprados
FROM Comic_Compras cc 
JOIN Compras cm ON cc.id_compra = cm.id_compra
RIGHT JOIN Clientes c ON cm.id_cliente = c.id_clientes;


select*from VISTA_ComicsComprados;

select*from comic_compras;
