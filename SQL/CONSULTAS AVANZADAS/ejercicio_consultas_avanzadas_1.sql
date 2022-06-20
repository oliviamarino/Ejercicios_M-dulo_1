#Ejercicio 1
USE tienda;
SELECT min(customerNumber)
FROM customers;

#Ejercicio 2
USE tienda;
SELECT AVG(creditLimit)
FROM customers
WHERE country ='Spain';

#Ejercicio 3
USE tienda;
SELECT COUNT(customerNumber) AS ClientesFranceses
FROM customers
WHERE country = 'France';

#Ejercicio 4
USE tienda;
SELECT MAX(creditLimit)
FROM customers
WHERE salesRepEmployeeNumber = 1323;

#Ejercicio 5
USE tienda;
SELECT COUNT(salesRepEmployeeNumber)
FROM customers;
