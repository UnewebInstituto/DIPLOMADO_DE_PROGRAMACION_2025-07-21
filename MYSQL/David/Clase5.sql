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

CREATE TRIGGER `auditar_usuario` BEFORE INSERT ON `usuarios` FOR EACH ROW insert INTO seguimiento_triggers(accion,tabla) values('Se ha creado un Nuevo Usuario','usuarios')

CREATE TRIGGER `auditar_usuario_upd` BEFORE UPDATE ON `usuarios` FOR EACH ROW INSERT INTO seguimiento_triggers(accion,tabla) values('Se ha Actualizado un Usuario','usuarios')

CREATE TRIGGER `auditar_usuario` BEFORE INSERT ON `usuarios` FOR EACH ROW insert into seguimiento_triggers(accion,tabla) values ('Se ha creado un Nuevo Usuario','usuarios');

CREATE TRIGGER `auditar_usuario_del` BEFORE DELETE ON `usuarios` FOR EACH ROW insert into seguimiento_triggers(accion,tabla) VALUES ('Se ha Eliminado un Usuario','usuarios')