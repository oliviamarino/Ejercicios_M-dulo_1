#ejercicio 1
USE leccion-3-sql;
SELECT Ciudad
FROM Alumnas
WHERE Pais ='España'
ORDER BY Pais;

#ejercicio 2
SELECT DISTINCT Ciudad
FROM Alumnas
WHERE Pais ='España';

#ejercicio 3
SELECT Nombre, Salario
FROM Empleadas
ORDER BY Salario DESC
LIMIT 3;

#ejercicio 4
SELECT Nombre, Pais
FROM Empleadas
ORDER BY Nombre
LIMIT 2;

#ejercicio 5
SELECT Nombre, Apellido, Pais, Salario
FROM Empleadas
WHERE Pais ='España'
ORDER BY Salario
OFFSET 1;

#ejercicio 6
SELECT Nombre, Apellido, Pais, Salario
FROM Empleadas
WHERE Pais ='España'
AND Salario BETWEEN 1000 AND 3000;

#ejercicio 7
SELECT Apellido, Salario, Pais
FROM Empleadas
WHERE Pais IN ('España', 'Alemania');

#ejercicio 8
SELECT Apellido AS Nombre, Salario AS Sueldo
FROM Empleadas
WHERE Pais ='España';



