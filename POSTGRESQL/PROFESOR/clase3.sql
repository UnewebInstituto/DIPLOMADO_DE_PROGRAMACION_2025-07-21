-- CREACIÓN DE ESQUEMA PARA EJEMPLOS DE ARREGLOS DE DATOS

-- Y TIPOS DE DATOS PROPIOS DEL USUARIO

create schema tiposdatos;

create table tiposdatos.contactos(
    id serial primary key,
    nombre varchar(80),
    apellido varchar(80),
    correo_electronico text unique,
    telefono varchar(20)[] -- Es un dato varchar y arreglo 
);

-- INSERTAR DATOS EN LA TABLA
-- 1ra. Forma de insercción de datos cuando se trata de arreglos
insert into tiposdatos.contactos(nombre,apellido,correo_electronico,telefono) values
('Ana','Vasquez','av@gmail.com','{"+58 212 1234567","+58 414 9876543"}'),
('Nelly','Contreras','nc@gmail.com','{"+58 212 2345678","+58 416 6789012","+58 212 6784523"}');

-- 2da. Forma de insercción de datos cuando se trata de arreglos
-- Empleando la instrucción ARRAY[]
insert into tiposdatos.contactos(nombre,apellido,correo_electronico,telefono) values
('Libia','Cols','lc@hotmail.com',ARRAY['+58 212 3631234','+58 416 9998877']),
('Maiba','Romero','mr@hotmail.com',ARRAY['+58 212 5678901','+58 414 2345678','+58 212 3345678']);

-- CONSULTA DE LA DATA ALMACENADA
select * from tiposdatos.contactos;

-- CONSULTA DE CADA POSICIÓN DEL VALOR ALMACENADO

select tiposdatos.contactos.nombre,
       tiposdatos.contactos.apellido,
       tiposdatos.contactos.telefono[1] as "Teléfono Hab.",
       tiposdatos.contactos.telefono[2] as "Teléfono Cel.",
       tiposdatos.contactos.telefono[3] as "Teléfono Ofic."
       from tiposdatos.contactos;

-- CREACIÓN DE TIPOS DE DATOS PROPIOS DEL USUARIO

CREATE TYPE tiposdatos.data_direccion as (
    calle varchar(80),
    numero integer,
    codigo_postal integer,
    parroquia text,
    zona text,
    sector text,
    ciudad text,
    estado text,
    pais text
);

-- SE MODIFICARÁ LA TABLA tiposdatos.contactos
-- para que contenga la direccion basada en el tipo
-- data_direccion

ALTER TABLE tiposdatos.contactos 
ADD COLUMN direccion tiposdatos.data_direccion;

--Para consultar los tipos de datos definidos en tu esquema en PostgreSQL, puedes usar la vista del sistema pg_type junto con pg_namespace para filtrar por el esquema deseado.

--Consulta para listar los tipos de datos en un esquema específico:

SELECT n.nspname AS esquema,
       t.typname AS tipo,
       t.typtype AS tipo_categoria,
       t.typcategory AS categoria_codigo
FROM pg_type t
JOIN pg_namespace n ON n.oid = t.typnamespace
WHERE n.nspname = 'tiposdatos';

-- Borrar tipo de dato de un esquema
drop type tiposdatos.data_direccion;

-- CONSULTA DE LA ESTRUCTURA DE LA TABLA tiposdatos.contactos
\d tiposdatos.contactos;

-- Ver la estructura de datos del tipo de dato definido 
\d tiposdatos.data_direccion;

-- Actualización de registro
UPDATE tiposdatos.contactos set 
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


select c.nombre,
       c.apellido,
       c.telefono[1] as "Teléfono Hab.",
       c.telefono[2] as "Teléfono Cel.",
       c.telefono[3] as "Teléfono Ofic.",
       (c.direccion).calle,
       (c.direccion).numero,
       (c.direccion).codigo_postal,
       (c.direccion).parroquia,
       (c.direccion).zona,
       (c.direccion).sector,
       (c.direccion).ciudad,
       (c.direccion).estado,
       (c.direccion).pais
       from tiposdatos.contactos as c;













