-- Creación de base de datos PostgreSql
create database bd_profesor_20250825;

-- Conexión a la base de datos
-- Comando psql
\c bd_profesor_20250825;

-- Creación de tabla
create table espacios_tipos(
    id serial primary key,
    nombre varchar(50) not null,
    descripcion text
);

insert into espacios_tipos(
    nombre, descripcion)
    values 
    ('Aula especializada', 'Aulas equipadas con tecnología avanzada para materias específicas como laboratorios de ciencias, aulas de informática, etc.'),
    ('Auditorio','Espacios grandes diseñados para eventos, conferencias y presentaciones.'),
    ('Laboratorio', 'Espacios equipados para experimentos y prácticas científicas.'),
    ('Biblioteca', 'Espacios dedicados al estudio y la consulta de materiales bibliográficos.'),
    ('Cancha','Áreas al aire libre o cubiertas para actividades deportivas.'),
    ('Sala de reuniones', 'Espacios destinados a reuniones y discusiones en grupo.');

-- Ver todas las entidades de la base de datos
\d
-- Ver sólo tablas
\dt 
-- Ver sólo vistas
\dv
-- Ver sólo secuencias
\ds


-- Ver la estructura de una tabla
\d espacios_tipos

create table estatus(
    id serial primary key,
    nombre varchar(50) not null,
    descripcion text
);

insert into estatus(
    nombre, descripcion)
    values 
    ('Disponible', 'El espacio está libre y puede ser reservado.'),
    ('En reparación', 'El espacio está cerrado temporalmente para reparaciones o mejoras.'),
    ('Ocupado','El espacio está actualmente en uso y no puede ser reservado.');

-- Borrar una tabla
drop table estatus;

create table roles(
    id serial primary key,
    nombre varchar(50) not null,
    descripcion text
);

insert into roles(
    nombre, descripcion)
    values 
    ('Profesor', 'Usuario con permisos para impartir clases y gestionar materiales educativos.'),
    ('Personal administrativo', 'Usuario encargado de la gestión administrativa y operativa de la institución.');

create table reserva_estatus(
    id serial primary key,
    nombre varchar(50) not null,
    descripcion text
);

insert into reserva_estatus(
    nombre, descripcion)
    values 
    ('Abierta', 'La reserva está activa y puede ser modificada o cancelada.'),
    ('Cerrada', 'La reserva ha sido completada y ya no puede ser modificada.'),
    ('Cancelada','La reserva ha sido anulada y el espacio queda disponible para otros usuarios.');

create table espacios(
    id serial primary key,
    espacio_tipo_id integer,
    estatus_id integer,
    ubicacion text,
    foreign key (espacio_tipo_id) references espacios_tipos(id) on update cascade,
    foreign key (estatus_id) references estatus(id) on update cascade
);

insert into espacios(
    espacio_tipo_id, estatus_id, ubicacion)
    values 
    (1, 1, 'Edificio A, Aula 101'),
    (2, 1, 'Edificio B, Auditorio Principal'),
    (3, 2, 'Edificio C, Laboratorio de Ciencias'),
    (4, 1, 'Edificio D, Biblioteca Central'),
    (5, 1, 'Cancha Deportiva al aire libre'),
    (6, 1, 'Edificio E, Sala de Reuniones 201');

create table usuarios(
    id serial primary key,
    rol_id integer,
    cedula varchar(20) not null unique,
    nombre varchar(100) not null,
    apellido varchar(100) not null,
    correo_electronico varchar(100) not null unique,
    telefono varchar(20),
    clave varchar(100) not null,
    foreign key (rol_id) references roles(id) on update cascade
);

insert into usuarios(rol_id,cedula,nombre,apellido,correo_electronico,telefono,clave) values
(1,'V1234','Ana','Vasquez','av@gmail.com','+58 414 1234567',md5('V1234')),
(1,'V5678','Libia','Cols','lc@gmail.com','+58 414 2234567',md5('V5678')),
(2,'V9012','Nelly','Contreras','nc@gmail.com','+58 414 3234567',md5('V9012')),
(2,'V3456','Hedrina','Monasterios','hm@hotmail.com','+58 414 4234567',md5('V3456'));


create table reservas_usuarios_espacios(
    id serial primary key,
    usuario_id integer,
    espacio_id integer,
    reserva_estatus_id integer,
    fecha_hora TIMESTAMP WITHOUT TIME ZONE not null,
    tiempo_reserva integer not null,
    foreign key (usuario_id) references usuarios(id) on update cascade,
    foreign key (espacio_id) references espacios(id) on update cascade,
    foreign key (reserva_estatus_id) references reserva_estatus(id) on update cascade
);

insert into reservas_usuarios_espacios(
    usuario_id, espacio_id, reserva_estatus_id, fecha_hora, tiempo_reserva)
    values 
    (1, 1, 1, '2023-09-01 10:00:00', 2),
    (2, 2, 1, '2023-09-01 14:00:00', 3),
    (1, 3, 2, '2023-09-02 09:00:00', 1),
    (2, 4, 1, '2023-09-02 11:00:00', 2),
    (1, 5, 3, '2023-09-03 15:00:00', 4),
    (2, 6, 1, '2023-09-03 08:00:00', 2);

-- Consulta combinada de Usuarios, Reservas y Espacios
select usuarios.nombre as nombre_usuario,
       usuarios.apellido as apellido_usuario,
       usuarios.correo_electronico,
       espacios.ubicacion as ubicacion_espacio, 
       reserva_estatus.nombre as estatus_reserva,
       reservas_usuarios_espacios.fecha_hora,
       reservas_usuarios_espacios.tiempo_reserva
       from reservas_usuarios_espacios, reserva_estatus, usuarios, espacios
         where reservas_usuarios_espacios.usuario_id = usuarios.id  
            and reservas_usuarios_espacios.espacio_id = espacios.id
            and reservas_usuarios_espacios.reserva_estatus_id = reserva_estatus.id;

        