USE `leccion-10-sql`;
-- Ejercicio 1:

INSERT INTO zapatillas (id_zapatilla, modelo, talla, color, marca) VALUES (1, 'XQYUN', 0, 'Negro', 0);
INSERT INTO zapatillas (id_zapatilla, modelo, talla, color, marca) VALUES (2, 'UOPMN', 0, 'Rosas', 0);
INSERT INTO zapatillas (id_zapatilla, modelo, talla, color, marca) VALUES (3, 'OPNYT', 0, 'Verdes', 0);
--
USE `leccion-10-sql`;
INSERT INTO empleados (id_empleado, nombre, tienda, salario, fecha_incorporacion) VALUES (1, 'Laura',
'Alcobendas', 25987, '2010-09-03');
INSERT INTO empleados (id_empleado, nombre, tienda, salario, fecha_incorporacion)
VALUES (2, "Maria", "Sevilla", NULL, '2001-04-11');
INSERT INTO empleados (id_empleado, nombre, tienda, salario, fecha_incorporacion)
VALUES (3, "Ester", "Oviedo", 30165.98, '2000-11-29');
--
INSERT INTO clientes (id_cliente, nombre, numero_telefono, email, direccion, ciudad, provincia,
codigo_postal)  VALUES (1, 'Monica', 1234567289, 'monica@email.com', 'Calle Felicidad', 'Móstoles',
'Madrid', 28176);
INSERT INTO clientes (id_cliente, nombre, numero_telefono, email, direccion, ciudad, provincia,
codigo_postal)  VALUES (2, 'Lorena', 289345678, 'lorena@email.com', 'Calle Alegria', 'Barcelona', 'Barcelona', 12346);
INSERT INTO clientes (id_cliente, nombre, numero_telefono, email, direccion, ciudad, provincia,
codigo_postal)  VALUES (3, 'Carmen', 298463759, 'carmen@email.com', 'Calle del Color', 'Vigo', 
'Pontevedra', 23456);

INSERT INTO facturas (id_factura, numero_factura, id_empleado, id_cliente, id_zapatilla, fecha, 
total) VALUES (1,123, 2, 1, 1,"2002-12-11", 54.98);
INSERT INTO facturas(id_factura, numero_factura, id_empleado, id_cliente, id_zapatilla, fecha, 
total) VALUES (2, 1234, 1, 3, 1, '2005-05-23', 89.91);
INSERT INTO facturas(id_factura, numero_factura, id_empleado, id_cliente, id_zapatilla, fecha, 
total) VALUES (3, 12345, 3, 3, 2, '2015-09-18', 76.23);

-- Ejercicio 2:

UPDATE zapatillas 
SET color = 'amarillo'
WHERE id_zapatilla = 1;