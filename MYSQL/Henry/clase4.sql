productos
categoriaS
imagenes

CREATE table productos_etiquetas(
    producto_id int not NULL,
    etiqueta_id int not NULL,
    primary key(producto_id, etiqueta_id),
    Foreign Key (producto_id) REFERENCES productos(id),
    Foreign Key (etiqueta_id) REFERENCES etiquetas(id)
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