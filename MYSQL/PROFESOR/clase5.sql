-- DECLARACIÓN DE FUNCIÓN

CREATE FUNCTION `cuadrado`(`numero` INT) RETURNS INT NOT DETERMINISTIC CONTAINS SQL SQL SECURITY DEFINER RETURN numero*numero

-- EJECUCIÓN DE FUNCIÓN, SE EJECUTA DE LA SIGUIENTE MANERA:
SELECT cuadrado(5);

--  DECLARACIÓN DE PROCEDIMIENTO
CREATE PROCEDURE `consultar_categoria`(IN `categoria` INT) NOT DETERMINISTIC CONTAINS SQL SQL SECURITY DEFINER select nombre as producto, descripcion, precio, cantidad from productos where categoria_id = categoria

-- EJECUCIÓN DE PROCEDIMIENTO, SE EJECUTA DE LA SIGUIENTE MANERA:
CALL consultar_catergoria(1);

-- CREACIÓN DE TABLA PARA SEGUIMIENTO DE TRIGGERS
create table seguimiento_triggers (
    id int auto_increment primary key,
    accion varchar(50),
    tabla varchar(50),
    fecha datetime default current_timestamp
);

CREATE TRIGGER `auditar_usuario` BEFORE INSERT ON `usuarios` FOR EACH ROW insert INTO seguimiento_triggers(accion,tabla) values('SE HA CREADO UN NUEVO USUARIO','usuarios')

CREATE TRIGGER `auditar_usuario_upd` BEFORE UPDATE ON `usuarios` FOR EACH ROW INSERT INTO seguimiento_triggers(accion,tabla) values('SE HA ACTUALIZADO UN USUARIO','usuarios')

CREATE TRIGGER `auditar_usuario_del` BEFORE DELETE ON `usuarios` FOR EACH ROW INSERT INTO seguimiento_triggers(accion,tabla) values('SE HA BORRADO UN USUARIO','usuarios')

INSERT INTO `usuarios` (`id`, `rol_id`, `nombre`, `apellido`, `correo_electronico`, `clave_secreta`) VALUES (NULL, '3', 'YOLANDA', 'TORTOZA', 'YT@GMAIL.COM', MD5('Ventas-1234'));

create view vista_productos as
SELECT productos.nombre as producto,
       productos.descripcion,
       productos.precio,
       productos.cantidad,
       categorias.nombre as categoria,
       imagenes.archivo as imagen,
       etiquetas.nombre as etiqueta
       from productos, categorias, imagenes, etiquetas, productos_etiquetas
       where productos.categoria_id = categorias.id and 
       productos.id = imagenes.producto_id and
       productos.id = productos_etiquetas.producto_id and
       etiquetas.id = productos_etiquetas.etiqueta_id;