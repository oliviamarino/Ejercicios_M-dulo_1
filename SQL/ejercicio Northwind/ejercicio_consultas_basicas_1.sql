USE tienda;
SELECT customerName , phone , addressLine1
FROM customers;

USE tienda;
SELECT phone, addressLine1
FROM customers
WHERE country = "USA";


USE tienda;
SELECT contactFirstName, contactLastName
FROM customers
WHERE addressLine2 is null;



USE tienda;
SELECT state
FROM customers
WHERE state is not null;

USE tienda;
SELECT country = 'USA'
FROM customers
WHERE state is null;



SELECT country
FROM customers
WHERE creditLimit > 10000;

