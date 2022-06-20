#Ej1
USE Northwind;
SELECT customers.company_name, orders.order_id, orders.order_date
FROM customers, orders;

#Ej2
USE Northwind;
SELECT orders.ship_country AS PaisEnvio, customers.company_name AS NombreCompañia, COUNT(orders.order_id) AS NumPedidos
FROM orders
RIGHT JOIN customers
ON orders.customer_id = customers.customer_id
WHERE orders.ship_country ='UK'
GROUP BY (customers.company_name); 

#Ej3
USE Northwind;
SELECT customers.company_name, orders.order_id, customers.contact_name, orders.order_date
FROM customers
LEFT JOIN orders
ON customers.customer_id = orders.customer_id
WHERE orders.ship_country ='UK';

#Ej4
USE Northwind;
SELECT A.first_name AS Nombre_empleado, A.last_name AS Apellido_empleado, A.city AS Ciudad_Empleado, B.first_name AS Nombre_jefe, B.last_name AS Apellido_jefe, B.city AS Ciudad_jefe
FROM employees AS A, employees AS B
WHERE A.reports_to = B.employee_id
ORDER BY A.city, B.city;

#Ej BONUS
USE Northwind;
SELECT orders.order_id,customers.company_name, orders.order_date
FROM orders
LEFT JOIN customers
ON orders.customer_id = customers.customer_id
WHERE customers.country = 'UK'
UNION
SELECT orders.order_id, customers.company_name, orders.order_date
FROM orders
RIGHT JOIN customers
ON orders.customer_id = customers.customer_id
WHERE customers.country = 'UK';

