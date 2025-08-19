-- consulta combinada de ambas tablas
-- extraccion de la inforamacion de ambas tablas
--1era. forma 
SELECT proveedores.nombre, proveedores.direccion, provedores.telefono,proveedores.correo_electronico, productos.nombre, productos.precio,
productos.cantidad
FROM proveedores, productos
WHERE proveedores.id = productos.proveedor_id;

-- 2da forma voy a utilizar nombres de alias


SELECT A.nombre, A.direccion, A.telefono,A.correo_electronico, B.nombre, B.precio,
B.cantidad
FROM proveedores as A, productos as B
WHERE A.id = B.proveedor_id;

--3era forma se puede establecer nombres de alias para los campos de la tabla 

SELECT A.nombre as proovedor, A.direccion, A.telefono,A.correo_electronico, B.nombre as producto, B.precio,
B.cantidad
FROM proveedores as A, productos as B
WHERE A.id = B.proveedor_id;

--consutlta de tablas con inner join 
SELECT proveedores.nombre, proveedores.direccion, proveedores.telefono,proveedores.correo_electronico, productos.nombre, productos.precio,
productos.cantidad
FROM proveedores
INNER JOIN productos
on proveedores.id = productos.proveedor_id;



INSERT INTO PROVEEDORES1(nombre, direccion, telefono, correo_electronico)
values
('SAMSUNG', 'AV. BOLÍVAR', '+58 212 5234567', 'info@samsung.com'),
('PANASONIC', 'AV. SUCRE', '+58 212 6234567', 'info@panasonic.com'),
('SONY', 'AV. LIBERTADOR', '+58 212 7234567', 'info@sony.com');


--Left join 
SELECT proveedores.nombre, proveedores.direccion, proveedores.telefono,proveedores.correo_electronico, productos.nombre, productos.precio,
productos.cantidad
FROM proveedores
left join productos
on proveedores.id = productos.proveedor_id;

--preparacion para el right join
-- se crean dos tablas de proveedores y productos que esten separdas y no relacionadas
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
VALUES
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


INSERT INTO PRODUCTOS1(proveedor_id, nombre, precio, cantidad)
VALUES
(11, 'LAVADORA', 450.00, 10),
(11, 'REFRIGERADOR', 800.00, 5),
(22, 'LAVADORA', 500.00, 8),
(22, 'REFRIGERADOR', 850.00, 6),
(33, 'LAVADORA', 400.00, 12),
(44, 'REFRIGERADOR', 750.00, 7),
(44, 'LAVADORA', 600.00, 9);

SELECT proveedores1.nombre, proveedores1.direccion, proveedores1.telefono,proveedores1.correo_electronico, productos1.nombre, productos1.precio,
productos1.cantidad
FROM proveedores1
RIGHT join productos1
on proveedores1.id = productos1.proveedor_id;

-- full join

SELECT proveedores1.nombre, proveedores1.direccion, proveedores1.telefono,proveedores1.correo_electronico, productos1.nombre, productos1.precio,
productos1.cantidad
FROM proveedores1
LEFT join productos1
on proveedores1.id = productos1.proveedor_id;
UNION
SELECT proveedores1.nombre, proveedores1.direccion, proveedores1.telefono,proveedores1.correo_electronico, productos1.nombre, productos1.precio,
productos1.cantidad
FROM proveedores1
RIGHT join productos1
on proveedores1.id = productos1.proveedor_id;

--Vistas
--Son tablas virtuales que se generan a partir de tablas fisicas
CREATE VIEW vista_proveedores_productos AS 
SELECT A.nombre as proovedor, A.direccion, A.telefono,A.correo_electronico, B.nombre as producto, B.precio,
B.cantidad
FROM proveedores as A, productos as B
WHERE A.id = B.proveedor_id;
--inner JOIN con vista



CREATE VIEW vista_innerjoin_proveedores1_productos1 AS
SELECT A.nombre as proveedor, A.direccion, A.telefono,A.correo_electronico, B.nombre as producto, B.precio,
B.cantidad
FROM proveedores1 as A
INNER JOIN productos1 as B
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


--Columnas calculadas
--suma
SELECT SUM(cantidad)from vista_innerjoin_proveedores1_productos1;
--prmedio 
select AVG(precio) from vista_innerjoin_proveedores1_productos1;
--Redondeo
SELECT ROUND(AVG(precio), 2) from vista_innerjoin_proveedores1_productos1;
--precio minimo 
SELECT MIN(precio) from vista_innerjoin_proveedores1_productos1;
--precio maximo 
SELECT MAX(precio) from vista_innerjoin_proveedores1_productos1;

--agrupamiento de datos

-- de la lista de productos cuales son?

--repetido 
SELECT producto from vista_innerjoin_proveedores1_productos1;


--sin repetir
SELECT DISTINCT producto from vista_innerjoin_proveedores1_productos1;

-- de la lista de productos cuanta cantidad hay?
SELECT DISTINCT producto, SUM(cantidad) from vista_innerjoin_proveedores1_productos1 group by producto;

--aplicando  columnas calculadas para los datos de la vista




create view vista_agrupada_productos as
SELECT DISTINCT producto, 
SUM(cantidad) as total_cantidad,
round(AVG(precio),2) as promedio_precio,
MIN(precio) as precio_minimo,
MAX(precio) as precio_maximo
from vista_innerjoin_proveedores1_productos1 group by producto;

-- La consulta anterior se guarda como vista 

-- ahora con proveedores
CREATE VIEW vista_agrupada_proveedores AS
SELECT DISTINCT proveedor, 
SUM(cantidad) as total_cantidad,
round(AVG(precio),2) as promedio_precio,
MIN(precio) as precio_minimo,
MAX(precio) as precio_maximo
from vista_leftjoin_proveedores1_productos1 group by proveedor;



SELECT DISTINCT proveedor, 
SUM(cantidad) as total_cantidad,
round(AVG(precio),2) as promedio_precio,
MIN(precio) as precio_minimo,
MAX(precio) as precio_maximo
from vista_fulljoin_proveedores1_productos1 group by proveedor;


SELECT DISTINCT 
    IFNULL(proveedor, 'Producto sin proveedor') AS proveedor, 
    SUM(cantidad) AS total_cantidad,
    ROUND(AVG(precio), 2) AS promedio_precio,
    MIN(precio) AS precio_minimo,
    MAX(precio) AS precio_maximo
FROM vista_fulljoin_proveedores1_productos1
GROUP BY proveedor;

CREATE VIEW vista_agrupada_proveedores1 AS
SELECT DISTINCT 
    IFNULL(proveedor, 'Producto sin proveedor') AS proveedor, 
    IFNULL(SUM(cantidad), 0) AS total_cantidad,
    IFNULL(ROUND(AVG(precio), 2), 0) AS promedio_precio,
    IFNULL(MIN(precio), 0) AS precio_minimo,
    IFNULL(MAX(precio), 0) AS precio_maximo
FROM vista_fulljoin_proveedores1_productos1
GROUP BY proveedor;

-- ORDENAMIENTO DE DATOS
-- ORDER BY
SELECT * FROM vista_innerjoin_proveedores1_productos1;

-- ahora ordenando 

SELECT producto,proveedor, precio, cantidad from vista_innerjoin_proveedores1_productos1 ORDER BY producto;

--cantidad de cuantos existen de menor a mayor
SELECT producto,proveedor, precio, cantidad from vista_innerjoin_proveedores1_productos1 ORDER BY producto,cantidad;
---- cantidad de cuantos existen de mayor a menor
SELECT producto,proveedor, precio, cantidad from vista_innerjoin_proveedores1_productos1 ORDER BY producto,cantidad DESC;

---- ordenando por proveedor
select producto,proveedor, precio, cantidad from vista_innerjoin_proveedores1_productos1 ORDER BY proveedor,cantidad;
-- ordenando por precio
SELECT producto,proveedor, precio, cantidad from vista_innerjoin_proveedores1_productos1 ORDER BY precio;