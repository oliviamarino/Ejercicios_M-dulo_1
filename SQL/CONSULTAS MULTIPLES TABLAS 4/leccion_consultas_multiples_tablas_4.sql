/* Ej1: Calcula el numero de clientes por cada ciudad: */
USE tienda;
SELECT COUNT(customerNumber) AS Cantidad_clientes, city AS Ciudad
FROM customers
GROUP BY (city);

/*Ej2: Usando la consulta anterior como subconsulta, selecciona la ciudad con el mayor 
	   numero de clientes */
USE tienda;
SELECT city AS Ciudad, 
FROM customers
GROUP BY (city)
HAVING COUNT(customerNumber) >= ALL (
SELECT COUNT(customerNumber) AS CantidadClientesCiudad
FROM customers
GROUP BY city
);

/*Ej3: customerNumber, Nombre y Apellido de las clientas asignadas a la ciudad con mayor 
       numero de clientas. */
USE tienda;
SELECT customerNumber AS NumeroCliente, contactFirstName AS Nombre_Cliente, contactLastName AS Apellido_Cliente
FROM customers
WHERE customerNumber IN (
	SELECT customerNumber 
	FROM customers 
	WHERE city IN( 
		SELECT city
		FROM customers
		GROUP BY city
		HAVING COUNT(customerNumber) >= ALL (
			SELECT COUNT(customerNumber) AS CantidadClientesCiudad
			FROM customers
			GROUP BY city)))
ORDER BY customerNumber DESC;