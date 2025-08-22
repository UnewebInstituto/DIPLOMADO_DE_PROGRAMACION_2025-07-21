create DATABASE bd_catalogo_henry_20250818;
USE bd_catalogo_henry_20250818;

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

insert into imagenes(producto_id, archivo) values
(1, 'smartphone_xyz.jpg'),
(2, 'laptop_abc.jpg'),
(3, 'licuadora_123.jpg'),
(4, 'aspiradora_456.jpg'),
(5, 'zapatillas_deportivas.jpg'),
(6, 'chaqueta_cuero.jpg'),
(7, 'pelota_futbol.jpg'),
(8, 'raqueta_tenis.jpg');



