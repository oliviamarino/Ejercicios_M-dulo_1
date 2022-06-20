-- Ej:1

CREATE TABLE fibbonnacci;
WITH RECURSIVE fibbonnacci (n, fib_n, fib_n_next) AS 
(
SELECT 1, 0, 1
UNION ALL
SELECT n + 1, fib_n_next, fib_n + fib_n_next
FROM fibbonnacci
WHERE n<15
)
SELECT * FROM fibbonnacci;

-- Ej2:

SELECT*
FROM fibbonnacci
WHERE n=8;

-- Ej:3




INSERT INTO Empleadas_camino
VALUE (29, 'Pedro', 198)
(72, 'Paco', 29)
(123,'Alba6',92)
(198,'Laura',333)
(333,'Yasmina',NULL)
(692,'Tomas',333)
(4610,'Sara',29);
