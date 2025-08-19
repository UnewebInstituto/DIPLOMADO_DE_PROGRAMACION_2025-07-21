-- Consulta combinada de ambas tablas
-- Extraccion de la informacion contenida de ambas tablas
-- 1ra Forma: se hace referencia al nombre de cada tabla

select proveedores.nombre,
       proveedores.direccion,
       proveedores.telefono,
       proveedores.correo_electronico,
       productos.nombre,
       productos.precio,
       productos.cantidad
       from proveedores, productos
       where proveedores.id = productos.proveedor_id;

--2da Forma: se hace referencia a los alias de las tablas

select A.nombre,
       A.direccion,
       A.telefono,
       A.correo_electronico,
       B.nombre,
       B.precio,
       B.cantidad
       from proveedores as A, productos as B
       where A.id = B.proveedor_id;

-- 3ra Forma: se puede establecer nombres de alias para los campos de la tabla

select A.nombre as proveedor,
       A.direccion,
       A.telefono,
       A.correo_electronico,
       B.nombre as producto,
       B.precio,
       B.cantidad
       from proveedores as A, productos as B
       where A.id = B.proveedor_id;

-- CONSULTA COMBINADA DE AMBAS TABLAS 
-- Con Inner Join
select proveedores.nombre,
       proveedores.direccion,
       proveedores.telefono,
       proveedores.correo_electronico,
       productos.nombre,
       productos.precio,
       productos.cantidad
       from proveedores
       inner join productos
       on proveedores.id = productos.proveedor_id;

-- Prueba de inserción de datos en la tabla proveedores para prueba de Left Join

insert into proveedores(nombre, direccion, telefono, correo_electronico) values
('ElectroLuz', 'DireccionEL', '+58 212 1234567', 'info@EL.com'),
('Sony', 'DireccionSony', '+58 212 7654321', 'info@sony.com'),
('Samsung', 'DireccionSamsung', '+58 212 1122334', 'info@samsung.com');

-- Left Join
select proveedores.nombre,
       proveedores.direccion,
       proveedores.telefono,
       proveedores.correo_electronico,
       productos.nombre,
       productos.precio,
       productos.cantidad
       from proveedores
       left join productos
       on proveedores.id = productos.proveedor_id;


-- Right Join
-- Preparacion de tablas para prueba de Right Join
-- Se crean dos tablas basadas en proveedores y productos que no esten relacionadas entre si

create table proveedores1 (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(80),
    direccion VARCHAR(200),
    telefono VARCHAR(20),
    correo_electronico VARCHAR(100) UNIQUE
);

create table productos1 (
    id INT AUTO_INCREMENT PRIMARY KEY,
    proveedor_id INT,
    nombre VARCHAR(100),
    precio DECIMAL(10,2),
    cantidad INT
);

insert into proveedores1(nombre, direccion, telefono, correo_electronico) values
('General Electric', 'DireccionGE', '+58 212 1234567', 'info@ge.com'),
('LG', 'DireccionLG', '+58 212 7654321', 'info@lg.com'),
('MABE', 'DireccionMABE', '+58 212 1122334', 'info@mabe.com'),
('WHIRLPOOL', 'DireccionWHIRLPOOL', '+58 212 4433221', 'info@wp.com');

INSERT INTO productos1(proveedor_id, nombre, precio, cantidad)
values
(12, 'LAVADORA', 450.00, 10),
(11, 'REFRIGERADOR', 800.00, 5),
(22, 'LAVADORA', 500.00, 8),
(22, 'REFRIGERADOR', 850.00, 6),
(33, 'LAVADORA', 400.00, 12),
(33, 'REFRIGERADOR', 750.00, 7),
(44, 'LAVADORA', 600.00, 9);

select proveedores1.nombre,
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
-- MySQL no soporta FULL JOIN de forma nativa, pero se puede simular usando UNION de LEFT JOIN y RIGHT JOIN

select proveedores1.nombre,
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
select proveedores1.nombre,
       proveedores1.direccion,
       proveedores1.telefono,
       proveedores1.correo_electronico,
       productos1.nombre,
       productos1.precio,
       productos1.cantidad
       from proveedores1
       right join productos1
       on proveedores1.id = productos1.proveedor_id;

--Vistas
-- SON TABLAS VIRTUAL QUE SE GENERAN A PARTIR DE TABLAS FÍSICAS
-- Creacion de una vista para simplificar la consulta de proveedores y productos
CREATE VIEW vista_proveedores_productos as
select A.nombre as proveedor,
       A.direccion,
       A.telefono,
       A.correo_electronico,
       B.nombre as producto,
       B.precio,
       B.cantidad
       from proveedores as A, productos as B
       where A.id = B.proveedor_id;

-- Armar vistas para Full Join
-- Inner Join
create view vista_innerjoin_proveedores1_productos1 as
select A.nombre as proveedor,
       A.direccion,
       A.telefono,
       A.correo_electronico,
       B.nombre as producto,
       B.precio,
       B.cantidad
       from proveedores1 as A
       inner join productos1 as B
       on A.id = B.proveedor_id;

-- Left Join
create view vista_leftjoin1_proveedores1_productos1 as
select A.nombre as proveedor,
       A.direccion,
       A.telefono,
       A.correo_electronico,
       B.nombre as producto,
       B.precio,
       B.cantidad
       from proveedores1 as A
       left join productos1 as B
       on A.id = B.proveedor_id;

-- Right Join
create view vista_rightjoin_proveedores1_productos1 as
select A.nombre as proveedor,
       A.direccion,
       A.telefono,
       A.correo_electronico,
       B.nombre as producto,
       B.precio,
       B.cantidad
       from proveedores1 as A
       right join productos1 as B
       on A.id = B.proveedor_id;

-- Full Join
create view vista_fulljoin_proveedores1_productos1 as
select A.nombre as proveedor,
       A.direccion,
       A.telefono,
       A.correo_electronico,
       B.nombre as producto,
       B.precio,
       B.cantidad
       from proveedores1 as A
       left join productos1 as B
       on A.id = B.proveedor_id
UNION
select A.nombre as proveedor,
       A.direccion,
       A.telefono,
       A.correo_electronico,
       B.nombre as producto,
       B.precio,
       B.cantidad
       from proveedores1 as A
       right join productos1 as B
       on A.id = B.proveedor_id;

-- Clumnas Calculadas
-- Funciones:
-- SUM()
select SUM(cantidad) from vista_innerjoin_proveedores1_productos1;
-- Promedio
select AVG(precio) from vista_innerjoin_proveedores1_productos1;
-- Redondeo
select ROUND(AVG(precio),2) from vista_innerjoin_proveedores1_productos1;
-- Minimo
select MIN(precio) from vista_innerjoin_proveedores1_productos1;
-- Maximo
select MAX(precio) from vista_innerjoin_proveedores1_productos1;

-- Agrupamiento de datos
select producto from vista_innerjoin_proveedores1_productos1;

-- De la lista de productos, ¿cuáles son?
select distinct producto from vista_innerjoin_proveedores1_productos1;

-- De la lista de productos ¿Qué cantidad hay para cada uno?
select distinct producto, SUM(cantidad) from vista_innerjoin_proveedores1_productos1 group by producto;

-- Aplicando las columnas calculadas para los datos de la vista
select distinct producto, SUM(cantidad),
  min(precio) as minimo_precio,
  max(precio) as maximo_precio,
  round(avg(precio),2) as primedio_precio
  from vista_innerjoin_proveedores1_productos1 group by producto;

-- La consulta anterior se guarda como vista
-- Proveedores
CREATE VIEW vista_agrupada_productos AS
SELECT DISTINCT producto,
 sum(cantidad) as total_cantidad, 
 min(precio) as minimo_precio, 
 max(precio) as maximo_precio,
 round(avg(precio),2) as promedio_precio 
 from vista_innerjoin_proveedores1_productos1 group by producto;

-- Proveedores
create view vista_agrupada_proveedores as
SELECT DISTINCT proveedor,
 sum(cantidad) as total_cantidad, 
 min(precio) as minimo_precio, 
 max(precio) as maximo_precio,
 round(avg(precio),2) as promedio_precio 
 from vista_leftjoin1_proveedores1_productos1 group by proveedor;

-- Full Join

create view vista_fulljoin_agrupada_proveedores as
SELECT DISTINCT proveedor,
 sum(cantidad) as total_cantidad, 
 min(precio) as minimo_precio, 
 max(precio) as maximo_precio,
 round(avg(precio),2) as promedio_precio 
 from vista_fulljoin_proveedores1_productos1 group by proveedor;

-- Para que no salga NULL
-- IFNULL

create view vista_ifnull_proveedores as
SELECT DISTINCT 
IFNULL(proveedor, 'Producto sin proveedor') as proveedor,
 ifnull(sum(cantidad),0) as total_cantidad, 
 ifnull(min(precio),0) as minimo_precio, 
 ifnull(max(precio),0) as maximo_precio,
 ifnull(round(avg(precio),2),0) as promedio_precio 
 from vista_fulljoin_proveedores1_productos1 group by proveedor;

-- Ordenamiento de datos 
-- Order By
select * from vista_innerjoin_proveedores1_productos1;

-- Ahora ordenado
select producto, precio, cantidad, proveedor from vista_innerjoin_proveedores1_productos1 order by producto;

-- Orden por cantidad (Menor a Mayor)
select producto, precio, cantidad, proveedor from vista_innerjoin_proveedores1_productos1 order by producto, cantidad;

-- Orden por cantidad (Mayor a menor)
select producto, precio, cantidad, proveedor from vista_innerjoin_proveedores1_productos1 order by producto desc;

-- Orden alfebetico de proveedores
select producto, precio, cantidad, proveedor from vista_innerjoin_proveedores1_productos1 order by proveedor, cantidad;

-- Orden por precio 
select producto, precio, cantidad, proveedor from vista_innerjoin_proveedores1_productos1 order by precio;



