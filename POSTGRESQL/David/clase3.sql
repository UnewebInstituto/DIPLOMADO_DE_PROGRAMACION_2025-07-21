-- Creacion de esquema para ejemplos de arreglos de datos y tipos de datos propios del usuario

create schema tiposdatos;

create table tiposdatos.contactos(
  id serial primary key,
  nombre varchar(80),
  apellido varchar(80),
  correo_electronico text unique,
  telefono varchar(20)[] --[] significa que es un dato y un arreglo 
);

-- Insertar datos en la tabla
-- 1ra. Forma de insercción de datos cuando se trata de arreglos
insert into tiposdatos.contactos(nombre,apellido,correo_electronico,telefono) values
('Ana','Vasquez','av@gmail.com','{"+58 212 1234567","+58 414 9876543"}'),
('Nelly','Contreras','nc@gmail.com','{"+58 212 2345678","+58 416 6789012","+58 212 6784523"}');

-- 2da. Forma de insercción de datos cuando se trata de arreglos
-- Empleando la instrucción ARRAY[]
insert into tiposdatos.contactos(nombre,apellido,correo_electronico,telefono) values
('Libia','Cols','lc@hotmail.com',ARRAY['+58 212 3631234','+58 416 9998877']),
('Maiba','Romero','mr@hotmail.com',ARRAY['+58 212 5678901','+58 414 2345678','+58 212 3345678']);

-- Consulta de la data almacenada
select * from tiposdatos.contactos

-- CONSULTA DE CADA POSICIÓN DEL VALOR ALMACENADO

select tiposdatos.contactos.nombre,
       tiposdatos.contactos.apellido,
       tiposdatos.contactos.telefono[1] as "Teléfono Hab.",
       tiposdatos.contactos.telefono[2] as "Teléfono Cel.",
       tiposdatos.contactos.telefono[3] as "Teléfono Ofic."
       from tiposdatos.contactos;

-- Creacion de tipos de datos propios del usuario

create type tiposdatos.data_direccion as(
  calle varchar(50),
  numero integer,
  codigo_postal integer,
  parroquia text,
  zona text,
  sector text,
  ciudad text,
  estado text,
  pais text 
);

-- Se modificará la tabla tiposdatos.contactos para que contenga la dirección basada en el tipo de dato data_dirección 

alter table tiposdatos.contactos ADD column direccion tiposdatos.data_direccion;



-- Borrar tipo de dato de un esquema
drop type tiposdatos.data_direccion;

-- CONSULTA DE LA ESTRUCTURA DE LA TABLA tiposdatos.contactos
\d tiposdatos.contactos;

\d tiposdatos.data_direccion;

-- Actualizar los datos de la tabla tiposdatos para poner la direccion con los tipos de datos definidos en data_direccion

update tiposdatos.contactos set 
    direccion.calle = 'Principal',
    direccion.numero = 1,
    direccion.codigo_postal = 1060,
    direccion.parroquia = 'La Vega',
    direccion.zona = 'El Carmen',
    direccion.sector = 'Entrada',
    direccion.ciudad = 'Caracas',
    direccion.estado = 'Distrito Capital',
    direccion.pais = 'Venezuela'
where tiposdatos.contactos.id = 1;

alter table tiposdatos.contactos
drop column direccion;


-- COMO INSERTAR UN NUEVO REGISTRO CON UN TIPO DE DATO 
-- PERSONALIZADO

insert into tiposdatos.contactos(
    nombre,
    apellido,
    correo_electronico,
    telefono, 
    direccion.calle,
    direccion.numero,
    direccion.codigo_postal,
    direccion.parroquia,
    direccion.zona,
    direccion.sector,
    direccion.ciudad,
    direccion.estado,
    direccion.pais) values
('YAZMIN',
'COLS',
'yc@gmail.com',
ARRAY['+58 212 9876543','+58 414 9998877','+58 412 7776655'],
'Zulia',
25,
1071,
'El Valle',
'Oeste',
'La Acacias',
'Caracas',
'Distrito Capital',
'Venezuela');

select C.nombre,
       C.apellido,
       C.telefono[1] as "Teléfono Hab.",
       C.telefono[2] as "Teléfono Cel.",
       C.telefono[3] as "Teléfono Ofic.",
       (c.direccion).calle,
       (c.direccion).numero,
       (c.direccion).codigo_postal,
       (c.direccion).parroquia,
       (c.direccion).zona,
       (c.direccion).sector,
       (c.direccion).ciudad,
       (c.direccion).estado,
       (c.direccion).pais
       from tiposdatos.contactos as C;