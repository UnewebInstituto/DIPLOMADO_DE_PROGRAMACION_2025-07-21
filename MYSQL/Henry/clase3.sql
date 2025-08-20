-- RESOLUCIÓN DE UNA ASOCIACIÓN DE 
-- MUCHOS A MUCHOS

-- TABLA ESTUDIANTES
create table estudiantes(
    id int auto_increment,
    nombre varchar(50) not null,
    apellido varchar(50) not null,
    primary key(id)
);

-- TABLA MATERIAS
create TABLE materias(
    id int auto_increment,
    nombre varchar(50) not null,
    primary key(id)
);


-- TABLA ESTUDIANTES_MATERIAS
create table estudiantes_materias(
    estudiante_id int not NULL,
    materia_id int not NULL,
    primary key(estudiante_id, materia_id),
    Foreign Key (estudiante_id) REFERENCES estudiantes(id),
    Foreign Key (materia_id) REFERENCES materias(id)
);

insert into estudiantes(nombre, apellido) values
('Juan', 'Perez'),
('Maria', 'Gomez'),
('Luis', 'Lopez'),
('Ana', 'Martinez');


insert into materias(nombre) values
('Matematica'),
('Historia'),
('Ciencias'),
('Castellano'),
('Biologia');

insert into estudiantes_materias(estudiante_id, materia_id) values
(1, 1),
(1, 2),
(1, 3),
(2, 2),
(2, 4),
(3, 1),
(3, 5),
(4, 3), 
(4, 4), 
(4, 5); 

-- consulta combinada de las 3 tablas 
CREATE VIEW estudiantes_materias_view AS
SELECT estudiantes.nombre AS Nombre, 
       estudiantes.apellido AS Apellido, 
       materias.nombre AS Materias
FROM estudiantes, materias, estudiantes_materias
WHERE estudiantes.id = estudiantes_materias.estudiante_id
  AND materias.id = estudiantes_materias.materia_id;


-- inner join
create view estudiantes_materias_view_innerjoin AS 
SELECT estudiantes.nombre AS Nombre, 
       estudiantes.apellido AS Apellido, 
       materias.nombre AS Materias
FROM estudiantes
INNER JOIN estudiantes_materias ON estudiantes.id = estudiantes_materias.estudiante_id
INNER JOIN materias ON materias.id = estudiantes_materias.materia_id;


-- actualizacion y eliminacion en cascada


CREATE TABLE proveedores2(
    id int auto_increment primary key,
    nombre varchar(80),
    direccion text,
    telefono varchar(20),
    correo_electronico varchar(100) unique
);

create table productos2(
    id int auto_increment primary key,
    proveedor_id int,
    nombre varchar(100),
    precio decimal(10,2),
    cantidad int,
    foreign key (proveedor_id) references proveedores2(id) on delete cascade on update CASCADE
);


-- DATA PARA CARGAR
INSERT INTO PROVEEDORES2(nombre, direccion, telefono, correo_electronico)
values
('GENERAL ELECTRIC','AV. LECUNA','+58 212 1234567', 'info@ge.com'),
('LG','AV. ROMULO GALLEGOS','+58 212 2234567', 'info@lg.com'),
('MABE','AV. FRANCISCO DE MIRANDA','+58 212 3234567', 'info@mabe.com'),
('WHIRPOOL','AV. SAN MARTIN','+58 212 4234567', 'info@whirpool.com');

INSERT INTO PRODUCTOS2(proveedor_id, nombre, precio, cantidad)
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


-- 1era prueba en cascada 
UPDATE proveedores2 set ID=11 WHERE ID=1;

-- 2da prueba en cascada
UPDATE proveedores2 set ID=12 WHERE ID=2;

-- prueba de eliminacion 

DELETE FROM proveedores2 WHERE id=3;

--consultas condicionadas y su equivalentes

SELECT * from vista_innerjoin_proveedores1_productos1;

select proveedor, producto, precio, cantidad from vista_innerjoin_proveedores1_productos1;

--consula de productos en un rango de precios 

SELECT proveedor, producto, precio, cantidad from 
vista_innerjoin_proveedores1_productos1
WHERE precio > 300 AND precio< 600;

-- EQUIVALENTE A LA CONSULTA ANTERIOR
select proveedor, producto, precio, cantidad 
from vista_proveedores_productos
where precio between 300 and 600;

-- NEGACIÓN DE AMBAS CONSULTAS
-- CONSULTA DE PRODUCTOS EN UN RANGO DE PRECIOS 
select proveedor, producto, precio, cantidad 
from vista_proveedores_productos
where not(precio >= 300 and precio <= 600);

-- EQUIVALENTE A LA CONSULTA ANTERIOR
select proveedor, producto, precio, cantidad 
from vista_proveedores_productos
where not (precio between 300 and 600);

--Consulta de productos basados en un lista 

select proovedor, producto, precio, cantidad 
from vista_proveedores_productos
where producto = 'lavadora' or producto = 'refrigerador';

-- EQUIVALENTE A LA CONSULTA ANTERIOR
select proovedor, producto, precio, cantidad
from vista_proveedores_productos
where producto in ('lavadora', 'refrigerador');

-- negacion de ambas consultas
select proovedor, producto, precio, cantidad
from vista_proveedores_productos
where not (producto in ('lavadora', 'refrigerador'));

-- EQUIVALENTE A LA CONSULTA ANTERIOR
select proovedor, producto, precio, cantidad
from vista_proveedores_productos
where not (producto = 'lavadora' or producto = 'refrigerador');

