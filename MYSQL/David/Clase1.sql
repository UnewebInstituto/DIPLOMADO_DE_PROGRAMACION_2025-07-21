-- INGRESAR A MYSQL (Shell)
mysql -u root -p

-- CREACIÓN DE BASE DE DATOS
create database bd_David_20250818;

-- CONSULTAR QUE BASES DE DATOS EXISTEN EN EL SERVIDOR
-- AQUI NOS DEVUELVE LOS NOMBRES DE BASES DE DATOS QUE
-- TERMINAN EN _20250818
show databases like '%_20250818%'; 

-- CONEXIÓN A LA BASE DE DATOS
use bd_David_20250818;

-- CONSULTAR LAS TABLAS QUE EXISTEN EN LA BASE DE DATOS
show tables;

-- CREACIÓN DE UNA TABLA
create table contactos (
    nombre varchar(80),
    apellido varchar(80),
    telefono varchar(20),
    correo_electronico varchar(100)
);

-- CONSULTAR ESTRUCTURA DE LA TABLA
describe contactos;

-- OTRA FORMA DE CONSULTAR LA ESTRUCTURA DE LA TABLA
show create table contactos;

-- COMO MODIFICAR LA ESTRUCTURA DE LA TABLA YA EXISTENTE
-- BORRAR CAMPOS
alter table contactos drop column telefono;

-- AÑADIR CAMPOS A UNA TABLA YA EXISTENTE (Por defecto añade al final)
alter table contactos add column telefono varchar(20);

-- AÑADIR CAMPOS AL PRINCIPIO DE LA TABLA
alter table contactos add column cedula varchar(10) first;

--AÑADIR CAMPOS DESPUÉS DE OTRO CAMPO
alter table contactos add column direccion text after apellido;

-- RENOMBRAR UN CAMPO DE LA TABLA
alter table contactos change column direccion direcciones text;

-- CAMBIAR EL TIPO DE DATO DE UN CAMPO
alter table contactos modify column direccion varchar(200);

-- RENOMBRAR UNA TABLA
alter table contactos rename to contactos_nuevos;

-- OPERACIONES SOBRE TABLAS
-- INGESAR, CONSULTAR, ACTUALIZAR Y BORRAR DATOS EN UNA TABLA
-- INGRESAR DATOS EN LA TABLA
insert into contactos (cedula, nombre, apellido, direccion, correo_electronico, telefono)
values
('V5721483', 'Frank', 'Rodriguez', 'Calle 123',  'frank@example', '+58 424-1234567'),
('V5678','YOLANDA','TORTOZA','CATIA LA MAR','YT@GMAIL.COM','+58 416 9876543'),
('V9012','LIBIA','COLS','GUARENAS','LC@GMAIL.COM','+58 414 4567890');

-- CONSULTAR DATOS EN LA TABLA
-- CONSULTAR TODOS LOS DATOS DE LA TABLA
select * from contactos;
-- VER TODOS LOS REGISTROS PERO SOLO ALGUNOS CAMPOS
select nombre, apellido, telefono from contactos;
-- VER UN REGISTRO EN PARTICULAR DE LA TABLA (* significa todas las columnas)
select * from contactos where cedula = 'V5721483';
select nombre, apellido from contactos where cedula = 'V5678';

-- ACTUALIZAR DATOS EN LA TABLA
-- ACTUALIZAR TODOS LOS REGISTROS
update contactos set direccion = 'Chacaito';
-- ACTUALIZAR UN REGISTRO EN PARTICULAR
update contactos set direccion = 'Turmero' where cedula = 'V5721483';

-- BORRAR TODOS LOS REGISTROS
-- HAY 2 MANERAS:
-- 1. DELETE
DELETE FROM contactos;
-- 2. TRUNCATE
TRUNCATE TABLE contactos;

-- CREACION DE INDICES PRIMARIOS
create table contactos1(
    id int auto_increment primary key,
    nombre varchar(80),
    apellido varchar(80),
    telefono varchar(20),
    correo_electronico varchar(100)
);

insert into contactos1 (nombre, apellido, correo_electronico, telefono)
values
('Frank', 'Rodriguez', 'frank@example', '+58 424-1234567'),
('YOLANDA','TORTOZA','YT@GMAIL.COM','+58 416 9876543'),
('LIBIA','COLS','libia@example','+58 414 4567890');

-- INGRESO DE NUEVO REGISTRO CON ASIGNACIÓN NULL A CAMPO ID QUE ES PRIMARY KEY (CLAVE PRIMARIA)
insert into contactos1(id, nombre, apellido, correo_electronico, telefono) values
(null,'LUISA','GOMEZ','LG@GMAIL.COM','+58 414 9234567');

-- AL SER CLAVEPRIMARIA, NO SE PUEDE INGRESAR UN REGISTRO CON ID YA EXISTENTE
-- ESTE COMANDO GENERARÁ UN ERROR
insert into contactos1(id, nombre, apellido, correo_electronico, telefono) values
(2,'NELLY','CONTRERAS','NC@GMAIL.COM','+58 412 6543210');
-- ESTE SI SE VA A EFECTUAR
insert into contactos1(id, nombre, apellido, correo_electronico, telefono) values
(null,'NELLY','CONTRERAS','NC@GMAIL.COM','+58 412 6543210');

-- CLAVE ÚNICA
-- Se utiliza para campos que no se pueden repetir
create table contactos2(
    id int auto_increment primary key,
    nombre varchar(80),
    apellido varchar(80),
    telefono varchar(20),
    correo_electronico varchar(100) UNIQUE
);

-- CARGA DE DATOS PARA PRUEBA
insert into contactos2 (nombre, apellido, correo_electronico, telefono)
values
('Frank', 'Rodriguez', 'frank@example', '+58 424-1234567'),
('YOLANDA','TORTOZA','YT@GMAIL.COM','+58 416 9876543'),
('LIBIA','COLS','libia@example','+58 414 4567890');

insert into contactos2(id, nombre, apellido, correo_electronico, telefono) values
(4,'Tailor','Davis','TD@GMAIL.COM','+58 424 5487963');

-- ASOCIACION ENTRE TABLAS
-- ASOCIACION DE UNO A MUCHOS
-- CASO PROVEEDORES - PRODUCTOS
create table proveedores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(80),
    telefono VARCHAR(20),
    correo_electronico VARCHAR(100) UNIQUE
);

create table productos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    precio DECIMAL(10,2),
    cantidad INT,
    proveedor_id INT,
    FOREIGN KEY (proveedor_id) REFERENCES proveedores(id)
);

-- DATA PARA CARGAR

insert into proveedores(nombre, direccion, telefono, correo_electronico) values
('General Electric', 'DireccionGE', '+58 212 1234567', 'info@ge.com'),
('LG', 'DireccionLG', '+58 212 7654321', 'info@lg.com'),
('MABE', 'DireccionMABE', '+58 212 1122334', 'info@mabe.com'),
('WHIRLPOOL', 'DireccionWHIRLPOOL', '+58 212 4433221', 'info@wp.com');

INSERT INTO productos(proveedor_id, nombre, precio, cantidad)
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



-- BORRAR UNA BASE DE DATOS
drop database bd_David_20250818;

