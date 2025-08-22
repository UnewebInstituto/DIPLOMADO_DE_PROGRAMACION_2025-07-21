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
(3, 4), -- Luis estudia Biología
(4, 4); -- María estudia Biología

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

-- VISTAS --
-- CONSULTA COMBINADA DE LAS TRES TABLAS
CREATE VIEW view_estudiantes_materias AS
SELECT A.nombre,
       A.apellido,
       B.nombre AS materia
       from estudiantes as A, materias as B, estudiantes_materias as C
       where A.id = C.estudiante_id
       and B.id = C.materia_id;

-- INNER JOIN
CREATE VIEW view_innerjoin_estudiantes_materias AS
SELECT A.nombre,
       A.apellido,
       B.nombre AS materia
       from estudiantes as A
       inner join estudiantes_materias as C 
       on A.id = C.estudiante_id
       inner join materias as B 
       on B.id = C.materia_id;

-- ACTUALIZACIÓN Y ELIMINACIÓN EN CASCADA


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
    foreign key (proveedor_id) references proveedores2(id) on delete cascade on update cascade
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

-- 1ra. prueba en cascada de actualización
update proveedores2 set id=11 where id=1;

update proveedores2 set id=12 where id=2;

-- 2da. prueba en cascada de eliminación
delete from proveedores2 where id=3;

-- CONSULTAS CONDICIONADAS Y SU EQUIVALENTE
select * from vista_innerjoin_proveedores1_productos1;

select proveedor, producto, precio, cantidad 
from vista_proveedores_productos;

-- CONSULTA DE PRODUCTOS EN UN RANGO DE PRECIOS 
select proveedor, producto, precio, cantidad 
from vista_proveedores_productos
where precio >= 300 and precio <= 600;

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

-- CONSULTA DE PRODUCTOS BASADA EN UNA LISTA
select proveedor, producto, precio, cantidad 
from vista_proveedores_productos
where producto = 'LAVADORA' or producto = 'REFRIGERADOR';

-- EQUIVALENTE A LA CONSULTA ANTERIOR
select proveedor, producto, precio, cantidad 
from vista_proveedores_productos
where producto in ('LAVADORA','REFRIGERADOR');

-- NEGACIÓN DE AMBAS CONSULTAS
-- CONSULTA DE PRODUCTOS BASADA EN UNA LISTA
select proveedor, producto, precio, cantidad 
from vista_proveedores_productos
where NOT(producto = 'LAVADORA' or producto = 'REFRIGERADOR');

-- EQUIVALENTE A LA CONSULTA ANTERIOR
select proveedor, producto, precio, cantidad 
from vista_proveedores_productos
where NOT(producto in ('LAVADORA','REFRIGERADOR'));

-- DEFINICIÓN PARA EL EJERCICIO DEL CATALOGO
create database bd_catalogo_profesor_20250818;
use bd_catalogo_profesor_20250818;

-- TABLA DE ROLES
create table roles(
    id int auto_increment primary key,
    nombre varchar(50) not null unique,
    descripcion text
);

-- TABLA ETIQUETAS
create table etiquetas(
    id int auto_increment primary key,
    nombre varchar(50) not null unique,
    descripcion text
);

-- TABLA CATEGORIAS
create table categorias(
    id int auto_increment primary key,
    nombre varchar(50) not null unique,
    descripcion text
);

-- TABLA USUARIOS
create table usuarios(
    id int auto_increment primary key,
    rol_id int not null,
    nombre varchar(50) not null,
    apellido varchar(50) not null,
    correo_electronico varchar(100) unique not null,
    clave_secreta varchar(255) not null,
    foreign key (rol_id) references roles(id) on update cascade
);

-- TABLA PRODUCTOS
create table productos(
    id int auto_increment primary key,
    categoria_id int not null,
    nombre varchar(100) not null,
    descripcion text,
    precio decimal(10,2) not null,
    cantidad int not null,
    foreign key (categoria_id) references categorias(id) on update cascade
);

-- IMAGENES
create table imagenes(
    id int auto_increment primary key,
    producto_id int not null,
    archivo text,
    foreign key (producto_id) references productos(id) on update cascade
);

-- CALIFICACIONES
create table calificaciones(
    id int auto_increment primary key,
    usuario_id int not null,
    producto_id int not null,
    calificacion int check(calificacion >= 1 and calificacion <= 5),
    comentario text,
    fecha_calificacion datetime default current_timestamp,
    foreign key (usuario_id) references usuarios(id) on update cascade,
    foreign key (producto_id) references productos(id) on update cascade
);

-- CARGA DE DATOS PARA ROLES
insert into roles(nombre, descripcion) values
('ADMINISTRADOR', 'Usuario con privilegios de administrador del sistema'),
('CLIENTE', 'Usuario con privilegios de cliente para comprar productos'),
('VENDEDOR', 'Usuario con privilegios de vendedor para gestionar productos');

-- CARGA DE DATOS PARA ETIQUETAS
insert into etiquetas(nombre, descripcion) values
('NUEVO', 'Producto nuevo en el catálogo'),
('OFERTA', 'Producto en oferta especial'),
('POPULAR', 'Producto popular entre los clientes'),
('LIMITADO', 'Producto de edición limitada');

-- CARGA DE DATOS PARA CATEGORIAS
insert into categorias(nombre, descripcion) values
('ELECTRÓNICA', 'Dispositivos electrónicos y gadgets'),
('HOGAR', 'Artículos para el hogar y la cocina'),
('MODA', 'Ropa, calzado y accesorios de moda'),
('DEPORTES', 'Equipamiento y ropa deportiva');

-- CARGA DE DATOS PARA USUARIOS
insert into usuarios(rol_id, nombre, apellido, correo_electronico,
    clave_secreta) values (1,'ANA','VASQUEZ','AV@GMAIL.COM',md5('Admin-1234'));
INSERT INTO `usuarios` (`id`, `rol_id`, `nombre`, `apellido`, `correo_electronico`, `clave_secreta`) VALUES (NULL, '3', 'YOLANDA', 'TORTOZA', 'YT@GMAIL.COM', MD5('Ventas-1234'));

-- CARGA DE DATOS PARA PRODUCTOS
insert into productos(categoria_id, nombre, descripcion, precio, cantidad) values
(1, 'SMARTPHONE XYZ', 'Smartphone de última generación con pantalla OLED y cámara de 48MP', 699.99, 50),
(1, 'LAPTOP ABC', 'Laptop ultraligera con procesador Intel i7 y 16GB de RAM', 1199.99, 30),
(2, 'LICUADORA 123', 'Licuadora potente con múltiples velocidades y vaso de vidrio', 89.99, 100),
(2, 'ASPIRADORA 456', 'Aspiradora sin bolsa con tecnología ciclónica y filtro HEPA', 149.99, 40),
(3, 'ZAPATILLAS DEPORTIVAS', 'Zapatillas cómodas y ligeras para correr y entrenar', 79.99, 200),
(3, 'CHAQUETA DE CUERO', 'Chaqueta de cuero auténtico para un estilo elegante y moderno', 199.99, 25),
(4, 'PELOTA DE FÚTBOL', 'Pelota oficial de fútbol para entrenamientos y partidos', 29.99, 150),
(4, 'RAQUETA DE TENIS', 'Raqueta ligera con marco de grafito para mayor potencia y control', 89.99, 60);

-- CARGA DE DATOS PARA IMAGENES
insert into imagenes(producto_id, archivo) values
(1, 'smartphone_xyz.jpg'),
(2, 'laptop_abc.jpg'),
(3, 'licuadora_123.jpg'),
(4, 'aspiradora_456.jpg'),
(5, 'zapatillas_deportivas.jpg'),
(6, 'chaqueta_cuero.jpg'),
(7, 'pelota_futbol.jpg'),
(8, 'raqueta_tenis.jpg');

-- CARGA DE DATOS PARA CALIFICACIONES
insert into calificaciones(usuario_id, producto_id, calificacion, comentario) values
(1, 1, 5, 'Excelente smartphone, muy rápido y con una cámara increíble.'),
(1, 2, 4, 'La laptop es ligera y potente, ideal para trabajar.'),
(1, 3, 3, 'La licuadora funciona bien pero es un poco ruidosa.'),
(1, 4, 5, 'Aspiradora muy eficiente, limpia muy bien.'),
(1, 5, 4, 'Zapatillas cómodas para correr largas distancias.'),
(1, 6, 5, 'Chaqueta de cuero de excelente calidad y diseño elegante.'),
(1, 7, 4, 'Pelota de fútbol de buena calidad para entrenar.'),
(1, 8, 5, 'Raqueta de tenis ligera y fácil de manejar.');





