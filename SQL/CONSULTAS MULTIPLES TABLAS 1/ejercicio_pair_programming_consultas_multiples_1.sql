#Ejercicio 1
USE Northwind;
SELECT orders.order_id, orders.ship_country, customers.company_name
FROM orders, customers
WHERE orders.ship_country ='UK';

#Ejercicio 2
USE Northwind;
SELECT products.quantity_per_unit, orders.ship_name, orders.ship_country, YEAR(orders.order_date) AS Año
FROM products, orders
WHERE orders.ship_country ='UK';


#Ejercicio 3
USE Northwind;
SELECT orders.ship_name, orders.ship_country, YEAR(orders.order_date) AS Año, orderdetails.unit_price AS DineroTotal, orderdetails.quantity, orderdetails.discount
FROM orders, orderdetails
WHERE orders.ship_country ='UK'
ORDER BY orders.ship_name;

#Ejercicio 4. desde la central nos han pedido una consulta que indique el nombre de cada compañia cliente junto con cada pedido que han realizado y su fecha.
USE Northwind;
SELECT customers.company_name, orders.order_id, orders.order_date
FROM customers
INNER JOIN orders
ON orders.customer_id = customers.customer_id;


#Ejercicio 5. Ahora nos piden una lista con cada tipo de producto que se han vendido, sus categorías, nombre, y el total de dinero por el que se ha vendido cada tipo de producto (teniendo en cuenta los descuentos).
USE Northwind;
SELECT cat.category_name AS Nombre, cat.category_id AS ID_Categoria, (OrDet.unit_price * OrDet.quantity * (1- OrDet.discount)) AS Precio_Total
FROM orderdetails AS OrDet
INNER JOIN orders AS Ord
ON OrDet.order_id = Ord.order_id
FROM categories AS cat
INNER JOIN orderdetails AS OrDet
ON cat.order_id = OrDet.order_id
INNER JOIN products AS prod
ON cat.category_id = prod.category_id
