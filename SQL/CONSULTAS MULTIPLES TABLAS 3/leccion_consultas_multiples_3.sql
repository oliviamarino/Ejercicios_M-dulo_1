#Ej1: Selecciona los apellidos que se encuentren en ambas tablas para employees y customers, 
#     con alias 'Apellidos'.   IN (INTERSECT)
USE tienda;
SELECT contactLastName AS Apellido
FROM customers
WHERE contactLastName IN (SELECT lastName FROM employees);

#Ej2: Selecciona los nombres con alias 'Nombre' y apellidos, con alias 'Apellidos' tanto de los 
#     clientes como de los empleados de las tablas employees y customers
SELECT contactFirstName AS Nombre_Cliente, contactLastName AS Apellido_Cliente
FROM customers
UNION
SELECT firstName AS Nombre_Empleado, lastName AS Apellido_Empleado
FROM employees;

#Ej3: Selecciona todos los nombres con alias 'Nombre' y apellidos, con alias 'Apellidos' 
#     tanto de los clientes como de los empleados de las tablas employees y customers.
SELECT contactFirstName AS Nombre_Cliente, contactLastName AS Apellido_Cliente
FROM customers
UNION ALL
SELECT firstName AS Nombre_Empleado, lastName AS Apellido_Empleado
FROM employees;

#(no entiendo la diferencia con el ej2)

#Ej4: Queremos ver ahora que empleados tienen algun contrato asignado con alguno de los clientes 
#     existentes. Para ello selecciona employeeNumber como 'Número empleado', firstName como 
#     'Nombre Empleado' y lastName como 'Apellido Empleado'
SELECT employeeNumber AS Numero_Empleado, firstNAme AS Nombre_Empleado, lastName AS Apellido_Empleado
FROM employees
WHERE employeeNumber IN(SELECT salesRepEmployeeNumber FROM customers);

#Ej5: Queremos ver ahora en cuantas ciudades en las cuales tenemos clientes, no tambien una 
#     oficina de nuestra empresa para ello: Selecciona aquellas ciudades como 'Ciudad' y los 
#     nombres de las empresas como 'Nombre de la empresa ' de la tabla customers, sin repeticiones, 
#     que no tengan una oficina en dicha ciudad de la tabla offices.
SELECT customerNAme AS Nombre_Empresa, city AS Ciudad
FROM customers
WHERE city NOT IN (SELECT city FROM offices);







