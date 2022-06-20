#EJERCICIO 1
USE Northwind;
SELECT EmployeeID, LastName, FirstName
FROM Employees;

#EJERCICIO 2
SELECT ProductName, UnitPrice
FROM Products
WHERE UnitPrice >0
AND UnitPrice <5;

#EJERCICIO 3 (DUDAS)
SELECT ProductName, UnitPrice
FROM Products
WHERE UnitPrice >=18
AND UnitPrice <=20;

#EJERCICIO 4
SELECT ProductName, UnitPrice
FROM Products
WHERE UnitPrice >=15
AND UnitPrice <=50;

#EJERCICIO 5
SELECT ProductName, UnitPrice
FROM Products
WHERE UnitPrice is null;

#EJERCICIO 6
SELECT ProductID, ProductName, UnitPrice
FROM Products
WHERE UnitPrice <15
AND ProductID <10;

#EJERCICIO 7
SELECT ProductID, ProductName, UnitPrice
FROM Products
WHERE NOT UnitPrice <15
AND NOT ProductID <10;

#EJERCICIO 8
SELECT OrderID, ShipCountry 
FROM Orders
ORDER BY ShipCountry
LIMIT 10;

