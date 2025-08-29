-- DATA PARA CARGAR
INSERT INTO PROVEEDORES(nombre, direccion, telefono, correo_electronico)
values
('GENERAL ELECTRIC','AV. LECUNA','+58 212 1234567', 'info@ge.com'),
('LG','AV. ROMULO GALLEGOS','+58 212 2234567', 'info@lg.com'),
('MABE','AV. FRANCISCO DE MIRANDA','+58 212 3234567', 'info@mabe.com'),
('WHIRPOOL','AV. SAN MARTIN','+58 212 4234567', 'info@whirpool.com');

INSERT INTO PRODUCTOS(proveedor_id, nombre, precio, cantidad)
values
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


