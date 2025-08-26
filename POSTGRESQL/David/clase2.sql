-- Definir esquema para las tablas
-- Nombre del esquema es "transporte" (Los esquemas solo aplican para PostGreSQL)
create schema transporte;

-- Ver tablas contenidas en el esquema transporte
select * from pg_tables where schemaname = 'transporte';

-- Equivalente del comando anterior en psql
\dt transporte.*

-- Ver todas las tablas en todos los esquemas
\dt *.*

create table transporte.marcas(
  id serial primary key,
  nombre varchar(50) not null,
  descripcion text
);

-- Creación de registros para la tabla de marcas 
-- de autobuses
insert into transporte.marcas(nombre, descripcion)
values 
('Volvo', 'Marca sueca de autobuses y camiones'),
('Mercedes Benz', 'Marca alemanda de autobuses y camiones'),
('Scania', 'Marca sueca de autobuses y camiones'),
('Ford', 'Marca estadounidense de automóviles y camiones'),
('Iveco', 'Marca italiana de autobuses y camiones');

-- Tabla de modelos de autobuses
create table transporte.modelos(
  id serial primary key,
  marca_id integer,
  nombre varchar(50) not null,
  aa integer,
  descripcion text,
  foreign key (marca_id) references transporte.marcas(id)
);

insert into transporte.modelos(marca_id, nombre, aa, descripcion) values 
(1, 'Volvo 9700', 2019, 'Autobús de lujo para viajes de larga distancia'),
(1, 'Volvo B11R', 2020, 'Autobús interurbano con motor potente y eficiente'),
(2, 'Mercedes-Benz Tourismo', 2018, 'Autobús de turismo con diseño moderno y cómodo'),
(2, 'Mercedes-Benz Citaro', 2021, 'Autobús urbano con tecnología avanzada y bajo consumo de combustible'),
(3, 'Scania Touring', 2019, 'Autobús de alta capacidad para transporte de pasajeros'),
(3, 'Scania Citywide', 2020, 'Autobús urbano con diseño innovador y accesibilidad mejorada'),
(4, 'Ford Transit', 2018, 'Furgoneta versátil para transporte de pasajeros y carga ligera'),
(4, 'Ford E-Series', 2019, 'Vehículo comercial robusto para diversas aplicaciones'),
(5, 'Iveco Daily', 2020, 'Vehículo comercial ligero con múltiples configuraciones'),
(5, 'Iveco Bus Crossway', 2021, 'Autobús interurbano con enfoque en confort y eficiencia');

--Definicion de la tabla colores
create table transporte.colores(
  id serial primary key,
  nombre varchar(20) not null,
  codigo_hex varchar(7) --Ejemplo: #FFFFFF para blanco
);

insert into transporte.colores(
    nombre, codigo_hex)
values ('Blanco','#FFFFFF'),
('Negro','#000000'),
('Rojo','#FF0000'),
('Azul','#0000FF'),
('Verde','#00FF00'),
('Amarillo','#FFFF00'),
('Naranja','#FFA500'),
('Gris','#808080'),
('Plateado','#C0C0C0'),
('Dorado','#FFD700');

-- Creacion para la tabla autobuses
create table transporte.autobuses (
  id serial primary key,
  color_id integer,
  marca_id integer,
  modelo_id integer,
  foreign key (color_id) references transporte.colores(id),
  foreign key (marca_id) references transporte.marcas(id),
  foreign key (modelo_id) references transporte.modelos(id)
);

-- Creación de registros para la tabla de autobuses
insert into transporte.autobuses(marca_id,modelo_id,color_id) values 
(1,1,1),
(1,2,4),
(2,3,1),
(2,4,4),
(3,5,1),
(3,6,4),
(4,7,1),
(4,8,4),
(5,9,1),
(5,10,4);

-- Definicion de la tabla paradas
create table transporte.paradas(
  id serial primary key,
  nombre varchar(50),
  descripcion text
);

insert into transporte.paradas(
nombre, descripcion
) values 
('Parada Central', 'Parada principal en el centro de la ciudad'),
('Parada Norte', 'Parada ubicada en el extremo norte de la ciudad'),
('Parada Sur', 'Parada ubicada en el extremo sur de la ciudad'),
('Parada Este', 'Parada ubicada en el extremo este de la ciudad'),
('Parada Oeste', 'Parada ubicada en el extremo oeste de la ciudad'
);


-- Definicion de la tabla rutas

create table transporte.rutas(
  id serial primary key,
  nombre varchar(50) not null,
  descripcion text,
  parada_id integer,
  foreign key (parada_id) references transporte.paradas(id)
);

insert into transporte.rutas(
    parada_id, nombre, descripcion) values 
(1, 'Ruta 1', 'Ruta que conecta la Parada Central con la Parada Norte'),
(2, 'Ruta 2', 'Ruta que conecta la Parada Central con la Parada Sur'),
(3, 'Ruta 3', 'Ruta que conecta la Parada Central con la Parada Este'),
(4, 'Ruta 4', 'Ruta que conecta la Parada Central con la Parada Oeste'),
(5, 'Ruta 5', 'Ruta circular que conecta todas las paradas principales');

-- Creacion de la Tabla Rutas_autobuses
create table transporte.rutas_autobuses(
  id serial primary key,
  ruta_id integer,
  autobus_id integer,
  foreign key (ruta_id) references transporte.rutas(id),
  foreign key (autobus_id) references transporte.autobuses(id),
  unique (ruta_id, autobus_id)
);

-- Creación de registros para la tabla rutas_autobuses
insert into transporte.rutas_autobuses(
    ruta_id, autobus_id) values 
(1,1),
(1,2),
(2,3),
(2,4),
(3,5),
(3,6),
(4,7),
(4,8),
(5,9),
(5,10);

-- Creacion de la tabla turnos
create table transporte.turnos(
  id serial primary key,
  nombre varchar(50) not null,
  hora_inicio time not null,
  hora_fin time not null,
  descripcion text
);

-- Creación de registros para la tabla turnos
insert into transporte.turnos(
    nombre, hora_inicio, hora_fin, descripcion) values 
('Turno Mañana', '06:00:00', '14:00:00', 'Turno de la mañana para operaciones de autobuses'),
('Turno Tarde', '14:00:00', '22:00:00', 'Turno de la tarde para operaciones de autobuses'),
('Turno Noche', '22:00:00', '06:00:00', 'Turno de la noche para operaciones de autobuses');

-- Tabla Conductores

create table transporte.conductores (
  id serial primary key,
  nombre varchar(50) not null,
  apellido varchar(50) not null,
  cedula varchar(20) not null unique,
  licencia varchar(50) not null unique,
  telefono varchar(15),
  email varchar(100) unique
);

insert into transporte.conductores(
    nombre,apellido,cedula,licencia,telefono,email
) values 
('Ana','Vasquez','V1234','L1234','2121234567','av@gmail.com'),
('Juan','Gamez','V5678','L5678','2129876543','jg@gmail.com'),
('Yolanda','Tortoza','V9012','L9012','2124567890','yt@gmail.com'),
('Libia','Cols','V3456','L3456','2122345678','lc@gmail.com');

-- Creación de la tabla conductores_autobuses
create table transporte.conductores_autobuses_turnos(
    id serial primary key,
    conductor_id integer,
    autobus_id integer,
    turno_id integer,
    foreign key(conductor_id) references transporte.conductores(id),
    foreign key(autobus_id) references transporte.autobuses(id),
    foreign key(turno_id) references transporte.turnos(id),
    unique(conductor_id, autobus_id, turno_id)
);

-- Creación de registros para la tabla conductores_autobuses_turnos
insert into transporte.conductores_autobuses_turnos(
    conductor_id, autobus_id, turno_id) values 
(1,1,1),
(1,2,2),
(2,3,1),
(2,4,2),
(3,5,1),
(3,6,2),
(4,7,1),
(4,8,2),
(1,9,3),
(2,10,3);

-- consulta combinada de las 3 tablas
-- Consultas de ejemplo
-- Datos del conductor
-- Datso del autobus 
-- Datos del turno
select transporte.conductores.nombre as nombre_conductor,
       transporte.conductores.apellido as apellido_conductor,
       transporte.autobuses.id as id_autobus,
       transporte.marcas.nombre as marca_autobus,
       transporte.modelos.nombre as modelo_autobus,
       transporte.colores.nombre as color_autobus,
       transporte.turnos.nombre as nombre_turno,
       transporte.turnos.hora_inicio,
       transporte.turnos.hora_fin
       from transporte.conductores_autobuses_turnos, 
            transporte.conductores,
            transporte.autobuses,
            transporte.marcas,
            transporte.modelos,
            transporte.colores,
            transporte.turnos
       where transporte.conductores_autobuses_turnos.conductor_id = transporte.conductores.id
         and transporte.conductores_autobuses_turnos.autobus_id = transporte.autobuses.id
         and transporte.conductores_autobuses_turnos.turno_id = transporte.turnos.id
         and transporte.autobuses.marca_id = transporte.marcas.id
         and transporte.autobuses.modelo_id = transporte.modelos.id
         and transporte.autobuses.color_id = transporte.colores.id;

-- Otra forma de lanzar la consulta

select B.nombre as nombre_conductor,
       B.apellido as apellido_conductor,
       C.id as id_autobus,
       D.nombre as marca_autobus,
       E.nombre as modelo_autobus,
       F.nombre as color_autobus,
       G.nombre as nombre_turno,
       G.hora_inicio,
       G.hora_fin
       from transporte.conductores_autobuses_turnos as A, 
            transporte.conductores as B,
            transporte.autobuses as C,
            transporte.marcas as D,
            transporte.modelos as E,
            transporte.colores as F,
            transporte.turnos as G
       where A.conductor_id = B.id
         and A.autobus_id = C.id
         and A.turno_id = G.id
         and C.marca_id = D.id
         and C.modelo_id = E.id
         and C.color_id = F.id;

--Creacion de vista con la consulta anterior

create view transporte.vista_conductores_autobuses_turnos as
select B.nombre as nombre_conductor,
       B.apellido as apellido_conductor,
       C.id as id_autobus,
       D.nombre as marca_autobus,
       E.nombre as modelo_autobus,
       F.nombre as color_autobus,
       G.nombre as nombre_turno,
       G.hora_inicio,
       G.hora_fin
       from transporte.conductores_autobuses_turnos as A, 
            transporte.conductores as B,
            transporte.autobuses as C,
            transporte.marcas as D,
            transporte.modelos as E,
            transporte.colores as F,
            transporte.turnos as G
       where A.conductor_id = B.id
         and A.autobus_id = C.id
         and A.turno_id = G.id
         and C.marca_id = D.id
         and C.modelo_id = E.id
         and C.color_id = F.id;

