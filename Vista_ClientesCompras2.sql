-- Crea una Vista llamada Vista_ComprasComic para ver los detalles de las compras de comics
CREATE VIEW Vista_ComprasComic2 AS
SELECT cc.id_CC, 
cc.cantida AS CANTIDAD,
c.nombre AS nombre_comic,
cm.id_compra,
cm.fecha_compra,
cm.total
FROM Comic_Compras cc 
Left JOIN Comics c ON cc.id_comic = c.id_comic
LEFT JOIN Compras cm ON cc.id_compra = cm.id_compra;
select*from VISTA_ClientesCompras;

