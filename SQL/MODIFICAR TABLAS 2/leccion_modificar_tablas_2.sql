USE tienda;
-- Ejericicio 0
-- ksvkjsnfvofvo

-- Ejercicio 1:
CREATE TABLE IF NOT EXISTS customers_mod SELECT * FROM customers;

-- Ejercicio 2: 
INSERT INTO customers_mod (customerNumber, customerName,contactLastName, contactFirstName, phone, 
addressLine1, addressLine2, city, state, postalCode, country, salesRepEmployeeNumber, creditLimit)
VALUES('343', 'Adalab', 'Rodriguez', 'Julia', '672986373', 'Calle Falsa 123', 'Puerta 42', 
'Madrid', 'España', '28000', 'España', '15', '20000000');

-- Ejercicio 3:
INSERT INTO customers_mod (customerNumber, customerName,contactLastName, contactFirstName, phone, 
addressLine1, addressLine2, city, state, postalCode, country, salesRepEmployeeNumber, creditLimit)
VALUES('344', 'La pegatina After','Santiago', 'Maricarmen', '00000000', 'Travesia del rave', NULL ,
'Palma de mallorca', NULL, '07005', 'España', '10', '45673453');

-- Ejercicio 4:
UPDATE customers_mod
SET phone = '678652840', addressLine2 = 'Numero 13 escalera 2', state = 'Islas Baleares'
WHERE customerNumber = 344;

-- Ejercicio 5:
UPDATE customers_mod
SET addressLine1 = 'Poligono Industrial de Son Castelló', addressLine2 = 'Nave 92',
city = 'Palma de mallorca', state = 'España', postalCode = '28123', country = 'España',
salesRepEmployeeNumber = '25', creditLimit= '5000000'
WHERE customerNumber = 344;

-- Ejercicio 6:
CREATE TABLE IF NOT EXISTS customers_destroy SELECT * FROM customers_mod;

UPDATE customers_destroy
SET addressLine1 = 'Vamos', addressLine2 = 'a', postalCode = 'fastidiar', country = 'la tabla :)';

SELECT*
FROM customers_destroy; -- <3

-- Ejercicio 7: Actualiza ahora los datos de la tabla customers_mod, para que las 10 primeras 
-- empresas sean gestionadas por la repesentante de ventas numero 2. El resto de empresas no deben 
-- ser modificadas.

UPDATE customers_mod
SET salesRepEmployeeNumber = '2'
LIMIT 10;

-- Ejercicio 8: Queremos ahora eliminar de los datos de la tabla aquellos registros que contentan 
-- un 'null' en el campo 'ContactFirstName'
DELETE FROM customers_mod
WHERE contactFirstName IS NULL;

-- Ejercicio 9:Eliminar ahora de los datos de la tabla aquellos los últimos 5 registros de la 
-- tabla ordenando por la columna creditLimit en order de mayor a menor, queremos eliminar las 
-- 5 empresas con menor liquidez.

DELETE FROM customers_mod 
ORDER BY creditLimit DESC 
LIMIT 5;

-- Ejercicio 10:
DELETE FROM customers_mod;

SELECT *
FROM customers_mod;



