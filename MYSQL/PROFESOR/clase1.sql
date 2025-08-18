-- CREACIÓN DE BASE DE DATOS
create database bd_profesor_20250818;

-- CONSULTAR QUÉ BASE DE DATOS EXISTEN
-- EN EL SERVIDOR. NOS DEVUELVE UNA 
-- LOS NOMBRES DE BASES DE DATOS QUE
-- TERMINAN EN _20250818
show databases like '%_20250818%';

-- BORRAR UNA BASE DE DATOS
drop database bd_profesor_20250818;

-- CONEXIÓN A LA BASE DE DATOS
use bd_profesor_20250818;

-- CONSULTAR TABLAS EXISTENTES EN LA BASE DE DATOS
show tables;

-- CREACIÓN DE TABLA
create table contactos(
    nombre VARCHAR(80),
    apellido VARCHAR(80),
    telefono VARCHAR(20),
    correo_electronico VARCHAR(100)
);

-- TIPOS DE DATOS 
-- Los tipos de datos que maneja MySQL o MariaDB son:
-- numéricos, cadenas de caracteres, booleanos, fecha y 
-- hora, binarios, JSON, etc.
-- Dentro de cadenas de caracteres tenemos: 
-- CHAR, VARCHAR, TEXT, TINYTEXT, MEDIUMTEXT, LONGTEXT
-- CHAR es una cadena de caracteres de longitud fija
-- Puede tener un máximo de 255 caracteres.
-- VARCHAR es una cadena de caracteres de longitud variable
-- Puede tener un máximo de 65,535 caracteres.

-- ESTRUCTURA DE LA TABLA
describe contactos;

-- OTRA FORMA DE CONSULTAR LA ESTRUCTURA
show create table contactos;

-- COMO MODIFICAR LA ESTRUCTURA DE UNA TABLA
-- BORRAR CAMPOS
alter table contactos drop column telefono;

-- AÑADIR CAMPOS (POR OMISIÓN AÑADE AL FINAL)
alter table contactos add column telefono VARCHAR(20);

-- AÑADIR CAMPOS AL PRINCIPIO
alter table contactos add column cedula varchar(10) first;

-- AÑADIR CAMPOS DESPUÉS DE OTRO
alter table contactos add column direcciones text after apellido;

-- RENOMBRAR UN CAMPO DE LA TABLA
alter table contactos change column direcciones direccion text;

-- CAMBIAR EL TIPO DE DATO DE UN CAMPO
alter table contactos modify column direccion varchar(100);

-- RENOMBRAR LA TABLA
alter table contactos rename to prueba_contactos;
alter table prueba_contactos rename to contactos;

-- OPERACIONES SOBRE TABLAS
-- INGRESAR, CONSULTAR, ACTUALIZAR Y BORRAR DATOS
-- INGRESAR DATOS
-- INSERT 
insert into contactos(cedula, nombre, apellido, direccion, correo_electronico, telefono) values
('V1234','ANA','VASQUEZ','SANTA FE','AV@GMAIL.COM','+58 414 1234567'),
('V5678','YOLANDA','TORTOZA','CATIA LA MAR','YT@GMAIL.COM','+58 416 9876543'),
('V9012','LIBIA','COLS','GUARENAS','LC@GMAIL.COM','58 414 4567890');

-- CONSULTAR DATOS
-- SELECT 
-- * TODAS LAS COLUMNAS
-- VER TODOS EL CONTENIDO DE LA TABLA 
SELECT * FROM contactos;

-- VER TODOS LOS REGISTROS, PERO SÓLO ALGUNOS CAMPOS 
SELECT NOMBRE, APELLIDO FROM contactos;

-- VER UN REGISTRO EN PARTICULAR DE LA TABLA 
SELECT * FROM contactos WHERE cedula = 'V1234';
SELECT NOMBRE, APELLIDO FROM contactos WHERE cedula = 'V1234';

-- BORRAR DATOS
-- DELETE
-- BORRAR UN REGISTRO EN PARTICULAR
DELETE FROM contactos WHERE cedula = 'V1234';
SELECT * FROM contactos;

-- BORRAR TODOS LOS REGISTROS
-- HAY 2 MANERAS:
-- 1. DELETE
DELETE FROM contactos;
-- 2. TRUNCATE
TRUNCATE TABLE contactos;

-- ACTUALIZAR DATOS
-- UPDATE 
-- ACTUALIZAR TODOS LOS REGISTROS
UPDATE contactos SET direccion = 'CHACAITO';

-- ACTUALIZAR UN REGISTRO EN PARTICULAR
UPDATE contactos SET direccion = 'EL ROSAL' where cedula = 'V1234';
UPDATE contactos SET direccion = 'EL MARQUES' where cedula = 'V5678';
UPDATE contactos SET direccion = 'LA URBINA' where cedula = 'V9012';

-- CREACIÓN DE ÍNDICES PRIMARIOS
-- Corresponde a un índice único que identifica
-- cada registro por un número consecutivo y que
-- no se repite.
-- Tipos de datos numericos ENTEROS
-- INT, BIGINT, SMALLINT, TINYINT
-- Rango de un entero:
-- TINYINT: -128 a 127 (con signo) o 0 a 255 (sin signo)
-- SMALLINT: -32,768 a 32,767 (con signo) o 0 a 65,535 (sin signo)
-- MEDIUMINT: -8,388,608 a 8,388,607 (con signo) o 0 a 16,777,215 (sin signo)
-- INT: -2,147,483,648 a 2,147,483,647 (con signo) o 0 a 4,294,967,295 (sin signo)
-- Tipos de datos numericos DECIMALES
-- DECIMAL, FLOAT, DOUBLE

create table contactos1(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(80),
    apellido VARCHAR(80),
    telefono VARCHAR(20),
    correo_electronico VARCHAR(100)
);

insert into contactos1(nombre, apellido, correo_electronico, telefono) values
('ANA','VASQUEZ','AV@GMAIL.COM','+58 414 1234567'),
('YOLANDA','TORTOZA','YT@GMAIL.COM','+58 416 9876543'),
('LIBIA','COLS','LC@GMAIL.COM','58 414 4567890');

-- CONSULTAR LA ESTRUCTURA DE LA TABLA
-- 1ra FORMA
describe contactos1;
-- 2da FORMA
show create table contactos1;

-- INGRESO DE NUEVO REGISTRO CON ASIGNACIÓN NULL A CAMPO ID 
-- QUE ES PRIMARY KEY (CLAVE PRIMARIA)
insert into contactos1(id, nombre, apellido, correo_electronico, telefono) values
(null,'LUISA','GOMEZ','LG@GMAIL.COM','+58 414 9234567');

-- AL SER CLAVE PRIMARIA, NO SE PUEDE INGRESAR OTRO REGISTRO CON EL
-- MISMO ID, YA QUE NO SE PUEDE REPETIR
-- ESTE COMANDO VA A GENERAR UN ERROR
insert into contactos1(id, nombre, apellido, correo_electronico, telefono) values
(2,'NELLY','CONTRERAS','NC@GMAIL.COM','+58 414 8234567');

-- ESTE SI SE VA A EFECTUAR
insert into contactos1(id, nombre, apellido, correo_electronico, telefono) values
(NULL,'NELLY','CONTRERAS','NC@GMAIL.COM','+58 414 8234567');

-- CLAVE ÚNICA
-- Se utiliza para evitar que se repitan valores en un campo
create table contactos2(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(80),
    apellido VARCHAR(80),
    telefono VARCHAR(20),
    correo_electronico VARCHAR(100) UNIQUE
);
-- CARGA DE DATOS PARA PRUEBA
insert into contactos2(nombre, apellido, correo_electronico, telefono) values
('ANA','VASQUEZ','AV@GMAIL.COM','+58 414 1234567'),
('YOLANDA','TORTOZA','YT@GMAIL.COM','+58 416 9876543'),
('LIBIA','COLS','LC@GMAIL.COM','58 414 4567890');

insert into contactos2(id, nombre, apellido, correo_electronico, telefono) values
(NULL,'NELLY','CONTRERAS','NC@GMAIL.COM','+58 414 8234567');


insert into contactos2(id, nombre, apellido, correo_electronico, telefono) values
(4,'LUISA','GOMEZ','LG@GMAIL.COM','+58 414 9234567');

-- ASOCIACIÓN ENTRE TABLAS
-- DE 1 A MUCHOS
-- CASO PROVEEDORES - PRODUCTOS

CREATE TABLE proveedores(
    id int auto_increment primary key,
    nombre varchar(80),
    direccion text,
    telefono varchar(20),
    correo_electronico varchar(100) unique
);

create table productos(
    id int auto_increment primary key,
    proveedor_id int,
    nombre varchar(100),
    precio decimal(10,2),
    cantidad int,
    foreign key (proveedor_id) references proveedores(id)
);

-- DATA PARA CARGAR
INSERT INTO PROVEEDORES(nombre, direccion, telefono, correo_electronico)
values
('GENERAL ELECTRIC','AV. LECUNA','+58 212 1234567', 'info@ge.com'),
('LG','AV. ROMULO GALLEGOS','+58 212 2234567', 'info@lg.com'),
('MABE','AV. FRANCISCO DE MIRANDA','+58 212 3234567', 'info@mabe.com'),
('WHIRPOOL','AV. SAN MARTIN','+58 212 4234567', 'info@whirpool.com');

INSERT INTO PRODUCTOS(proveedor_id, nombre, precio, cantidad)
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


