-- Ej1: Selecciona de products el productCode, productName, quantityInStock, productLine, 
--      MSRP, buyPrice, para aquellos casos en los que la diferencia entre el MSRP y el precio 
--      de compra sea mayor o igual a la media de la diferencia de precios entre MSRP y precio 
--      de compra con alias 'AvgProfit', siempre que el 'AvgProfit' sea superior a 50 euros.
USE tienda;
SELECT p1.productCode, p1.productName, p1.quantityInStock, p1.productLine, p1.MSRP, p1.buyPrice, (p1.MSRP - p1.buyPrice) AS Beneficio
FROM products AS p1
WHERE p1.MSRP - p1.buyPrice >= (
	SELECT AVG(p1.MSRP - p1.buyPrice) AS AvgProfit
    FROM products AS p2
    WHERE p1.productCode = p2.productCode
    HAVING AvgProfit > 50);

-- Ej2: Encuentra los campos nombre de la empresa cliente y ciudad, de aquellas ciudades de la 
--      tabla de customers que terminen en 'on'. 
USE tienda;
SELECT customerName, country
FROM customers
WHERE country LIKE '%on';

-- Ej3: Encuentra los campos nombre de la empresa cliente, ciudad de aquellas ciudades de la 
--      tabla de customers que terminen en 'on' y que unicamente sean de longitud 4.
USE tienda;
SELECT customerName AS NombreCliente, city AS Ciudad
FROM customers
WHERE city LIKE '__on%';

-- Ej4: Encuentra el nombre de la empresa cliente, primera direccion y ciudad de aquellas 
--      ciudades que cotengan el número 3 en su direccion postal.
USE tienda;
SELECT customerName AS NombreCliente, addressLine1 AS Direccion1, city AS Ciudad
FROM customers
WHERE addressLine1 LIKE '%3%';

-- Ej5: Encuentra el nombre de la empresa cliente, primera direccion y ciudad de aquellas 
--      ciudades que cotengan el número 3 en su direccion postal y la ciudad no empiece por T.
USE tienda;
SELECT customerName AS NombreCliente, addressLine1 AS Direccion, city AS Ciudad
FROM customers
WHERE addressLine1 LIKE '%3%'AND city NOT LIKE 'T%';

-- Ej6: Selecciona, haciendo uso de expresiones regulares, los campos nombre de la empresa 
--      cliente, primera direccion y ciudad. Unicamente en el caso que la direccion postal, 
--      posea algun número en dicho campo.
USE tienda;
SELECT customerName AS NombreCliente, addressLine1 AS Direccion1, city AS Ciudad
FROM customers
WHERE addressLine1 REGEXP '[0-9]+';

-- Ej7:  Hay que usar \ entr medias porque si no sql lo interpreta como que abre comillas nuevas
SELECT * 
FROM products
WHERE productDescription LIKE '%'%';
-----------------------
SELECT * FROM products
WHERE productDescription LIKE '%\'%';