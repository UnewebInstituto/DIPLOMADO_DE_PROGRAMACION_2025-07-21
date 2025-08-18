-- Creacion de base de datos--
create DATABASE bd_Henry_20250818;
-- consultar que base de datos existen en el servidor esto me da las bases de datos que terminan en 20250818--
show DATABASES LIKE "%_20250818%";
-- borrar una base de datos--
drop DATABASE bd_Henry_20250818;
--conexion a base de datos
use bd_Henry_20250818;
--consultar tablas existentes en la base de datos--
show TABLES;
--Creacion de tablas--
create TABLE contactos(

  nombre VARCHAR(80) , 
  apellido VARCHAR(80),
  telefono  VARCHAR(20),
  correo_electronico VARCHAR(100) 


);
--tipo de dato-- 
--Los tipos de datos que maneja MySQL son:--
--numericos, cadenas de caracteres, booleanos, fecha y hora, binarios, JSON, enumerados y conjuntos.--
--Dentro de caracteres tenemos:--
-- char, varchar, text, tinytext, mediumtext, longtext, binary, varbinary, blob, tinyblob, mediumblob, longblob.--
--Un char es una cadena de caracteres de longitud fija, puede tener un maximo de 255 caracteres.--
-- Varchar es una cadena de caracteres de longitud variable, puede tener un maximo de 65,535 caracteres.--


-- estructura de la tabla--
describe contactos;

-- otra forma de consultar estructura-- 
show CREATE TABLE contactos;

-- como modificar la estrcutura de una tabla--
-- borrar campos--
--ALTER TABLE contactos DROP COLUMN telefono;--
-- agregar campos--
--ALTER TABLE contactos ADD COLUMN telefono VARCHAR(20);--

-- Añadir campos al principio de la tabla--
ALTER TABLE contactos ADD COLUMN Cedula VARCHAR(10) FIRST;

-- Añadir campos despues de otros--
ALTER TABLE contactos ADD COLUMN direccion text AFTER apellido;

--Renombrar un campo de la tabla--

alter Table contactos CHANGE COLUMN direccion direcciones text;

--cambiar el tipo de dato de un campo--
alter Table contactos MODIFY COLUMN direcciones VARCHAR(150);

--renombrar la tabla--
ALTER TABLE contactos RENAME TO prueba_contactos;
alter TABLE prueba_contactos RENAME contactos;

-- Operaciones sobre tablas-- 
-- insertar, consultar, actualizar y eliminar datos--
-- insertar datos--
--Insert
INSERT INTO contactos (nombre, apellido, telefono, correo_electronico, cedula, direcciones)
VALUES 
("Ana", "Vasquez", "04122710844", "anavasquez89@gmail.com", "V29987858", "Calle 1, Casa 2"), 
("Vanessa", "Rodriguez", "04242680622", "vanessarod@gmail.com", "V30370879", "Bello Monte"),
("Carlos", "Gomez", "04141234567", "carlosgomez@gmail.com", "V25478963", "Avenida Principal, Edificio 3"),
("María", "Fernandez", "04162345678", "mariafernandez@gmail.com", "V26543210", "Urbanización Centro, Apartamento 5");

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

--Borrar todos los registros-- 
-- hay 2 maneras--
DELETE FROM contactos;

-- truncate--
TRUNCATE TABLE contactos;

-- ACTUALIZAR DATOS
UPDATE contactos SET direcciones = "CHACAITO";

-- Actualizar un registro en particular
update contactos SET direcciones = "El rosal" WHERE cedula = "V29987858";
UPDATE contactos SET direcciones = "Valle arriba" WHERE cedula = "V30370879";
UPDATE contactos SET direcciones = "La Urbina" WHERE cedula = "V25478963";
UPDATE contactos SET direcciones = "El Cafetal" WHERE cedula = "V26543210";

-- Creacion de tablas con indice primarios-- 
-- corresponde a un indice unico que identifica cada regisitro por un numero consecutivo y unico --
--Tipos de datos numericos--
-- int, smallint, bigint, decimal, float, double, bit, tinyint--ç
--Tipos de datos numericos decimales--
-- decimal, numeric, float, double-- 
--El rango de un entero--
--tinyint: -128 a 127 (con signo) o 0 a 255 (sin signo)
--smallint: -32,768 a 32,767 (con signo) o 0 a 65,535 (sin signo)
--mediumint: -8,388,608 a 8,388,607 (con signo) o 0 a 16,777,215 (sin signo)
--int: -2,147,483,648 a 2,147,483,647 (con signo) o 0 a 4,294,967,295 (sin signo)


create TABLE contactos1(
  id int AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(80) , 
  apellido VARCHAR(80),
  telefono  VARCHAR(20),
  correo_electronico VARCHAR(100) 


);

INSERT INTO contactos1 (nombre, apellido, telefono, correo_electronico)
VALUES 
("Ana", "Vasquez", "04122710844", "anavasquez89@gmail.com"), 
("Vanessa", "Rodriguez", "04242680622", "vanessarod@gmail.com"),
("Carlos", "Gomez", "04141234567", "carlosgomez@gmail.com"),
("María", "Fernandez", "04162345678", "mariafernandez@gmail.com");

-- CONSULTAR DATOS
describe contactos1;
show create table contactos1;


-- INGRESO DE NUEVO REGISTRO CON ASIGNACIÓN NULL A CAMPO ID 
-- QUE ES PRIMARY KEY (CLAVE PRIMARIA)
insert into contactos2(id, nombre, apellido, correo_electronico, telefono) values
(5,'LUISA','GOMEZ','LG@GMAIL.COM','+58 414 9234567');

-- al ser clave primaria no se puede repetir el id--



--Este comando va a generar un error--
insert into contactos1(id, nombre, apellido, correo_electronico, telefono) values
(2,'Nelly','contreras','nc@GMAIL.COM','+58 414 1234567');
insert INTO contactos1(id, nombre, apellido, correo_electronico, telefono) values
(NULL,'Nelly','contreras','nc@GMAIL.COM','+58 414 1234567');

--Clave unica--

-- Si se quiere que el campo id sea clave unica, se puede hacer de la siguiente manera--
 
 
 
create TABLE contactos2(
  id int AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(80) , 
  apellido VARCHAR(80),
  telefono  VARCHAR(20),
  correo_electronico VARCHAR(100) UNIQUE
);
--Carga de datos--
INSERT INTO contactos2 (nombre, apellido, telefono, correo_electronico)
VALUES 
("Ana", "Vasquez", "04122710844", "anavasquez89@gmail.com"), 
("Vanessa", "Rodriguez", "04242680622", "vanessarod@gmail.com"),
("Carlos", "Gomez", "04141234567", "carlosgomez@gmail.com"),
("María", "Fernandez", "04162345678", "mariafernandez@gmail.com");

insert INTO contactos2(id, nombre, apellido, correo_electronico, telefono) values
(NULL,'Nelly','contreras','nc@gmail.com','+58 414 1234567');

--Asociacion de tablas
-- de 1 a muchos 
-- caso proveedores productos-- 
CREATE TABLE proveedores(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    direccion VARCHAR(255),
    telefono VARCHAR(20),
    correo_electronico VARCHAR(100)
);
CREATE TABLE productos(
    id INT AUTO_INCREMENT PRIMARY KEY,
    proveedor_id INT,
    nombre VARCHAR(100),
    precio DECIMAL(10, 2),
    cantidad INT,
    FOREIGN KEY (proveedor_id) REFERENCES proveedores(id)
);

-- Insertar datos en las tablas--

INSERT INTO PROVEEDORES(nombre, direccion, telefono, correo_electronico)
values
('GENERAL ELECTRIC','AV. LECUNA','+58 212 1234567', 'info@ge.com'),
('LG','AV. ROMULO GALLEGOS','+58 212 2234567', 'info@lg.com'),
('MABE','AV. FRANCISCO DE MIRANDA','+58 212 3234567', 'info@mabe.com'),
('WHIRPOOL','AV. SAN MARTIN','+58 212 4234567', 'info@whirpool.com');

INSERT INTO PRODUCTOS(proveedor_id, nombre, precio, cantidad)
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


