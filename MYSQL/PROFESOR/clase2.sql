alter table proveedores add column direccion text after nombre;


-- Borrar la tabla dependiente
drop table productos;

-- Borrar la tabla padre
drop table proveedores;

-- CONSULTA COMBINADA DE AMBAS TABLAS
-- EXTRACCIÓN DE LA INFORMACIÓN CONTENIDA EN AMBAS TABLAS 

-- 1ra. Forma. Se hace referencia al nombre de cada tabla
SELECT proveedores.nombre,
       proveedores.direccion,
       proveedores.telefono,
       proveedores.correo_electronico,
       productos.nombre,
       productos.precio,
       productos.cantidad
       from proveedores, productos 
       where proveedores.id = productos.proveedor_id;

-- 2da. Forma. Se hace referencia empleando nombres de alias para las tablas
SELECT A.nombre,
       A.direccion,
       A.telefono,
       A.correo_electronico,
       B.nombre,
       B.precio,
       B.cantidad
       from proveedores as A, productos as B 
       where A.id = B.proveedor_id;

-- 3ra. Forma. Se puede establecer nombres de alias para los campos de la tabla
SELECT A.nombre as proveedor,
       A.direccion,
       A.telefono,
       A.correo_electronico,
       B.nombre as producto,
       B.precio,
       B.cantidad
       from proveedores as A, productos as B 
       where A.id = B.proveedor_id;


-- CONSULTA COMBINADA DE AMBAS TABLAS
-- BASADO EN INNER JOIN
SELECT proveedores.nombre,
       proveedores.direccion,
       proveedores.telefono,
       proveedores.correo_electronico,
       productos.nombre,
       productos.precio,
       productos.cantidad
       from proveedores
       inner join productos
       on proveedores.id = productos.proveedor_id;

-- CARGA DE DATOS PARA PRUEBA DE LEFT JOIN
INSERT INTO PROVEEDORES(nombre, direccion, telefono, correo_electronico)
values
('ELECTROLUX','AV. PPAL. DE LAS MERCEDES','+58 212 9234567', 'info@electrolux.com'),
('SONY','AV. VICTORIA','+58 212 8234567', 'info@sony.com'),
('DAMASCO','AV. PRESIDENTE MEDINA','+58 212 7234567', 'info@damasco.com');

-- LEFT JOIN
SELECT proveedores.nombre,
       proveedores.direccion,
       proveedores.telefono,
       proveedores.correo_electronico,
       productos.nombre,
       productos.precio,
       productos.cantidad
       from proveedores
       left join productos
       on proveedores.id = productos.proveedor_id;

-- PREPARACIÓN DE AMBIENTE PARA EL RIGHT JOIN 
-- SE CREAN DOS TABLAS, BASADADS EN PROVEEDORES Y PRODUCTOS, QUE NO 
-- ESTEN RELACIONADAS ENTRE SI.
CREATE TABLE proveedores1(
    id int auto_increment primary key,
    nombre varchar(80),
    direccion text,
    telefono varchar(20),
    correo_electronico varchar(100) unique
);

create table productos1(
    id int auto_increment primary key,
    proveedor_id int,
    nombre varchar(100),
    precio decimal(10,2),
    cantidad int
);

INSERT INTO PROVEEDORES1(nombre, direccion, telefono, correo_electronico)
values
('GENERAL ELECTRIC','AV. LECUNA','+58 212 1234567', 'info@ge.com'),
('LG','AV. ROMULO GALLEGOS','+58 212 2234567', 'info@lg.com'),
('MABE','AV. FRANCISCO DE MIRANDA','+58 212 3234567', 'info@mabe.com'),
('WHIRPOOL','AV. SAN MARTIN','+58 212 4234567', 'info@whirpool.com');

INSERT INTO PRODUCTOS1(proveedor_id, nombre, precio, cantidad)
values
(1, 'LAVADORA', 450.00, 10),
(1, 'REFRIGERADOR', 800.00, 5),
(2, 'LAVADORA', 500.00, 8),
(2, 'REFRIGERADOR', 850.00, 6),
(3, 'LAVADORA', 400.00, 12),
(3, 'REFRIGERADOR', 750.00, 7),
(4, 'LAVADORA', 600.00, 9),
(4, 'REFRIGERADOR', 900.00, 4),
(1, 'MICROONDAS', 150.00, 15),
(2, 'MICROONDAS', 180.00, 10),
(3, 'MICROONDAS', 170.00, 8),
(4, 'MICROONDAS', 200.00, 5),
(1, 'HORNOS', 300.00, 6),
(2, 'HORNOS', 320.00, 4),
(3, 'HORNOS', 310.00, 5),
(4, 'HORNOS', 350.00, 3);

INSERT INTO PROVEEDORES1(nombre, direccion, telefono, correo_electronico)
values
('ELECTROLUX','AV. PPAL. DE LAS MERCEDES','+58 212 9234567', 'info@electrolux.com'),
('SONY','AV. VICTORIA','+58 212 8234567', 'info@sony.com'),
('DAMASCO','AV. PRESIDENTE MEDINA','+58 212 7234567', 'info@damasco.com');

INSERT INTO PRODUCTOS1(proveedor_id, nombre, precio, cantidad)
values
(11, 'LAVADORA', 450.00, 10),
(11, 'REFRIGERADOR', 800.00, 5),
(22, 'LAVADORA', 500.00, 8),
(22, 'REFRIGERADOR', 850.00, 6),
(33, 'LAVADORA', 400.00, 12),
(33, 'REFRIGERADOR', 750.00, 7),
(44, 'LAVADORA', 600.00, 9);

-- RIGHT JOIN
SELECT proveedores1.nombre,
       proveedores1.direccion,
       proveedores1.telefono,
       proveedores1.correo_electronico,
       productos1.nombre,
       productos1.precio,
       productos1.cantidad
       from proveedores1
       right join productos1
       on proveedores1.id = productos1.proveedor_id;

-- FULL JOIN
-- MySQL no soporta FULL JOIN directamente, pero se puede simular con UNION
-- se combinan LEFT JOIN y RIGHT JOIN
SELECT proveedores1.nombre,
       proveedores1.direccion,
       proveedores1.telefono,
       proveedores1.correo_electronico,
       productos1.nombre,
       productos1.precio,
       productos1.cantidad
       from proveedores1
       left join productos1
       on proveedores1.id = productos1.proveedor_id
UNION 
SELECT proveedores1.nombre,
       proveedores1.direccion,
       proveedores1.telefono,
       proveedores1.correo_electronico,
       productos1.nombre,
       productos1.precio,
       productos1.cantidad
       from proveedores1
       right join productos1
       on proveedores1.id = productos1.proveedor_id;


-- VISTAS
-- SON TABLAS VIRTUAL QUE SE GENERAN A PARTIR DE TABLAS FÍSICAS
CREATE VIEW vista_proveedores_productos AS 
SELECT A.nombre as proveedor,
       A.direccion,
       A.telefono,
       A.correo_electronico,
       B.nombre as producto,
       B.precio,
       B.cantidad
       from proveedores as A, productos as B 
       where A.id = B.proveedor_id;

CREATE VIEW vista_innerjoin_proveedores1_productos1 AS
SELECT A.nombre AS proveedor,
       A.direccion,
       A.telefono,
       A.correo_electronico,
       B.nombre as producto,
       B.precio,
       B.cantidad
       from proveedores1 AS A
       inner join productos1 AS B
       on A.id = B.proveedor_id;

CREATE VIEW vista_leftjoin_proveedores1_productos1 AS
SELECT A.nombre AS proveedor,
       A.direccion,
       A.telefono,
       A.correo_electronico,
       B.nombre as producto,
       B.precio,
       B.cantidad
       from proveedores1 AS A
       left join productos1 AS B
       on A.id = B.proveedor_id;

CREATE VIEW vista_rightjoin_proveedores1_productos1 AS
SELECT A.nombre AS proveedor,
       A.direccion,
       A.telefono,
       A.correo_electronico,
       B.nombre as producto,
       B.precio,
       B.cantidad
       from proveedores1 AS A
       left join productos1 AS B
       on A.id = B.proveedor_id;

CREATE VIEW vista_fulljoin_proveedores1_productos1 AS
SELECT A.nombre AS proveedor,
       A.direccion,
       A.telefono,
       A.correo_electronico,
       B.nombre AS producto,
       B.precio,
       B.cantidad
       from proveedores1 as A
       left join productos1 as B
       on A.id = B.proveedor_id
UNION 
SELECT A.nombre as proveedor,
       A.direccion,
       A.telefono,
       A.correo_electronico,
       B.nombre as producto,
       B.precio,
       B.cantidad
       from proveedores1 as A
       right join productos1 as B
       on A.id = B.proveedor_id;

-- COLUMNAS CALCULADAS
-- SUMATORIA
SELECT SUM(cantidad) from vista_innerjoin_proveedores1_productos1;
-- PROMEDIO
SELECT AVG(precio) from vista_innerjoin_proveedores1_productos1;
-- REDONDEO
SELECT ROUND(AVG(precio),2) from vista_innerjoin_proveedores1_productos1;
-- MÍNIMO
SELECT MIN(precio) from vista_innerjoin_proveedores1_productos1;
-- MÁXIMO
SELECT MAX(precio) from vista_innerjoin_proveedores1_productos1;

-- AGRUPAMENTO DE DATOS 

SELECT producto from vista_innerjoin_proveedores1_productos1;

-- DE LA LISTA DE PRODUCTOS ¿CUÁLES SON?

SELECT DISTINCT producto from vista_innerjoin_proveedores1_productos1;

-- DE LA LISTA DE PRODUCTOS, ¿QUÉ CANTIDAD HAY PARA CADA UNO?
SELECT DISTINCT producto, sum(cantidad) from vista_innerjoin_proveedores1_productos1 group by producto;

-- APLICANDO COLUMNAS CALCULADAS PARA LOS DATOS DE LA VISTA
-- vista_innerjoin_proveedores1_productos1
SELECT DISTINCT producto,
 sum(cantidad) as total_cantidad, 
 min(precio) as minimo_precio, 
 max(precio) as maximo_precio,
 round(avg(precio),2) as promedio_precio 
 from vista_innerjoin_proveedores1_productos1 group by producto;

-- LA CONSULTA ANTERIOR SE GUARDA COMO VISTA
CREATE VIEW vista_agrupada_productos AS
SELECT DISTINCT producto,
 sum(cantidad) as total_cantidad, 
 min(precio) as minimo_precio, 
 max(precio) as maximo_precio,
 round(avg(precio),2) as promedio_precio 
 from vista_innerjoin_proveedores1_productos1 group by producto;

SELECT DISTINCT proveedor,
 sum(cantidad) as total_cantidad, 
 min(precio) as minimo_precio, 
 max(precio) as maximo_precio,
 round(avg(precio),2) as promedio_precio 
 from vista_leftjoin_proveedores1_productos1 group by proveedor;

CREATE VIEW vista_agrupada_proveedores AS
SELECT DISTINCT proveedor,
 sum(cantidad) as total_cantidad, 
 min(precio) as minimo_precio, 
 max(precio) as maximo_precio,
 round(avg(precio),2) as promedio_precio 
 from vista_leftjoin_proveedores1_productos1 group by proveedor;

---

SELECT DISTINCT 
 ifnull(proveedor,'SIN PROVEEDOR') as proveedor,
 ifnull(sum(cantidad),0) as total_cantidad, 
 ifnull(min(precio),0) as minimo_precio, 
 ifnull(max(precio),0) as maximo_precio,
 ifnull(round(avg(precio),2),0) as promedio_precio 
 from vista_fulljoin_proveedores1_productos1 group by proveedor;

CREATE VIEW vista_full_agrupada_proveedores1 AS
SELECT DISTINCT 
 ifnull(proveedor,'SIN PROVEEDOR') as proveedor,
 ifnull(sum(cantidad),0) as total_cantidad, 
 ifnull(min(precio),0) as minimo_precio, 
 ifnull(max(precio),0) as maximo_precio,
 ifnull(round(avg(precio),2),0) as promedio_precio 
 from vista_fulljoin_proveedores1_productos1 group by proveedor;

-- ORDENAMIENTO DE DATOS
-- ORDER BY
SELECT * FROM vista_innerjoin_proveedores1_productos1;

-- AHORA ORDENADO
SELECT producto, proveedor, precio, cantidad from vista_innerjoin_proveedores1_productos1 order by producto;
-- POR OMISIÓN, EL ORDENAMIENTO ES ASCENDENTE
SELECT producto, proveedor, precio, cantidad from vista_innerjoin_proveedores1_productos1 order by producto, cantidad;
-- AHORA ORDENADO POR CANTIDAD DESCENDENTE
SELECT producto, proveedor, precio, cantidad from vista_innerjoin_proveedores1_productos1 order by producto, cantidad DESC;

-- Orden alfebetico de proveedores
select producto, precio, cantidad, proveedor from vista_innerjoin_proveedores1_productos1 order by proveedor, cantidad;

-- Orden por precio 
select producto, precio, cantidad, proveedor from vista_innerjoin_proveedores1_productos1 order by precio;