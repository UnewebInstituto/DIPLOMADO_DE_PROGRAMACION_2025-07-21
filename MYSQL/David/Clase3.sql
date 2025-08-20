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
create table materias(
    id int auto_increment,
    nombre varchar(50) not null,
    primary key(id)
);

-- TABLA ESTUDIANTES_MATERIAS
create table estudiantes_materias(
    estudiante_id int not null,
    materia_id int not null,
    primary key(estudiante_id, materia_id),
    foreign key(estudiante_id) references estudiantes(id),
    foreign key(materia_id) references materias(id) 
);

insert into estudiantes(nombre, apellido) values
('Juan', 'Pérez'),
('Ana', 'Gómez'),
('Luis', 'Martínez'),
('María', 'López');
;

insert into materias(nombre) values
('Matemáticas'),
('Historia'),
('Castellano'),
('Biologia');

insert into estudiantes_materias(estudiante_id, materia_id) values
(1, 1), -- Juan estudia Matemáticas
(1, 2), -- Juan estudia Historia
(2, 1), -- Ana estudia Matemáticas
(2, 3), -- Ana estudia Castellano
(3, 2), -- Luis estudia Historia
(3, 4); -- Luis estudia Biología

-- CONSULTA COMBINADA DE LAS TRES TABLAS
SELECT A.nombre,
       A.apellido,
       B.nombre AS materia
       from estudiantes as A, materias as B, estudiantes_materias as C
       where A.id = C.estudiante_id
       and B.id = C.materia_id;

-- INNER JOIN
SELECT A.nombre,
       A.apellido,
       B.nombre AS materia
       from estudiantes as A
       inner join estudiantes_materias as C 
       on A.id = C.estudiante_id
       inner join materias as B 
       on B.id = C.materia_id;

-- VISTAS
create view view_estudiantes_materias as
SELECT A.nombre,
       A.apellido,
       B.nombre AS materia
       from estudiantes as A, materias as B, estudiantes_materias as C
       where A.id = C.estudiante_id
       and B.id = C.materia_id;

-- INNER JOIN
create view view_innerjoin_estudiantes_materias as
SELECT A.nombre,
       A.apellido,
       B.nombre AS materia
       from estudiantes as A
       inner join estudiantes_materias as C 
       on A.id = C.estudiante_id
       inner join materias as B 
       on B.id = C.materia_id;

-- Actualización y eliminación en cascada

create table proveedores2 (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(80),
    direccion VARCHAR(200),
    telefono VARCHAR(20),
    correo_electronico VARCHAR(100) UNIQUE
);

create table productos2 (
    id INT AUTO_INCREMENT PRIMARY KEY,
    proveedor_id INT,
    nombre VARCHAR(100),
    precio DECIMAL(10,2),
    cantidad INT,
    FOREIGN KEY (proveedor_id) REFERENCES proveedores2(id) on delete cascade on update cascade
);

insert into proveedores2(id, nombre, direccion, telefono, correo_electronico) values
(null, 'General Electric', 'DireccionGE', '+58 212 1234567', 'info@ge.com'),
(null, 'LG', 'DireccionLG', '+58 212 7654321', 'info@lg.com'),
(null, 'MABE', 'DireccionMABE', '+58 212 1122334', 'info@mabe.com'),
(null, 'WHIRLPOOL', 'DireccionWHIRLPOOL', '+58 212 4433221', 'info@wp.com');

INSERT INTO productos2(id, proveedor_id, nombre, precio, cantidad)
values
(null, 1, 'LAVADORA', 450.00, 10),
(null, 1, 'REFRIGERADOR', 800.00, 5),
(null, 2, 'LAVADORA', 500.00, 8),
(null, 2, 'REFRIGERADOR', 850.00, 6),
(null, 3, 'LAVADORA', 400.00, 12),
(null, 3, 'REFRIGERADOR', 750.00, 7),
(null, 4, 'LAVADORA', 600.00, 9),
(null, 4, 'REFRIGERADOR', 900.00, 4),
(null, 1, 'MICROONDAS', 150.00, 15),
(null, 2, 'MICROONDAS', 180.00, 10),
(null, 3, 'MICROONDAS', 170.00, 8),
(null, 4, 'MICROONDAS', 200.00, 5),
(null, 1, 'HORNOS', 300.00, 6),
(null, 2, 'HORNOS', 320.00, 4),
(null, 3, 'HORNOS', 310.00, 5),
(null, 4, 'HORNOS', 350.00, 3);

-- Primera prueba: Actualización en cascada
update proveedores2 set id=11 where id=1;

update proveedores2 set id=12 where id=2;

-- Segunda prueba: Eliminacion en cascada
delete from proveedores2 where id=3;

-- CONSULTAS CONDICIONADAS Y SU EQUIVALENTE
select * from vista_innerjoin_proveedores1_productos1;

select proveedor, producto, precio, cantidad 
from vista_proveedores_productos;

-- CONSULTA DE PRODUCTOS EN UN RANGO DE PRECIOS 
select proveedor, producto, precio, cantidad 
from vista_proveedores_productos
where precio >= 300 and precio <= 600;

-- Equivalente a la consulta anterior
select proveedor, producto, precio, cantidad 
from vista_proveedores_productos
where precio between 300 and 600;

-- Negación de ambas consultas
select proveedor, producto, precio, cantidad 
from vista_proveedores_productos
where not(precio >= 300 and precio <= 600);

-- Equivalente a la consulta anterior
select proveedor, producto, precio, cantidad 
from vista_proveedores_productos
where not(precio between 300 and 600);

-- Consulta de productos basada en una lista
select proveedor, producto, precio, cantidad 
from vista_proveedores_productos
where producto = 'LAVADORA' or producto = 'REFRIGERADOR';

-- Negación de ambas consultas anteriores
-- CONSULTA DE PRODUCTOS BASADA EN UNA LISTA
select proveedor, producto, precio, cantidad 
from vista_proveedores_productos
where NOT(producto = 'LAVADORA' or producto = 'REFRIGERADOR');

-- EQUIVALENTE A LA CONSULTA ANTERIOR
select proveedor, producto, precio, cantidad 
from vista_proveedores_productos
where NOT(producto in ('LAVADORA','REFRIGERADOR'));


