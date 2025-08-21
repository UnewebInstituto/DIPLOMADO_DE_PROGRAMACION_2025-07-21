-- Se deben hacer modificaciones en la tabla productos para asociar a la tabla de etiquetas

create table productos_etiquetas (
producto_id int not null,
etiqueta_id int not null,
primary key (producto_id, etiqueta_id),
foreign key (producto_id) references productos(id),
foreign key (etiqueta_id) references etiquetas(id)
);

insert into productos_etiquetas(producto_id, etiqueta_id) values
(1, 1),
(1, 2),
(2, 1),
(3, 3),
(4, 4),
(5, 1),
(6, 2),
(7, 3),
(8, 4);

-- Consulta combinada de las siguientes tablas
productos
categorias
imagenes
etiquetas
productos_etiquetas

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

-- Para abrir MySQL con interface grafica, en Xampp, tanto MySQL como Apache deben estar activos, y darle a admin