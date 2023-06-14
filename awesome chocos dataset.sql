-- To know the database you're dealing with:
show tables;

-- showcasing the Geo table
SELECT *
FROM geo;

-- showcasing the people table
SELECT *
FROM people;

-- showcasing the products table
SELECT *
FROM products; 

-- showcasing the sales table
SELECT *
FROM sales;

-- TOP 10 PRODUCTS BY SALES
SELECT p.Product, s.Amount,p.Category,s.PID
FROM products AS P
INNER JOIN sales AS s
ON p.pid = s.pid
ORDER BY s.Amount DESC
LIMIT 10;

-- TOP 10 REGION BY SALES 
SELECT g.GeO, s.Amount, g.GeoID
FROM Geo AS g
INNER JOIN sales AS s
ON g.GeoID = s.GeoID
ORDER BY s.Amount DESC
LIMIT 10;

-- TOP 10 SALESPERSONS BY SALES
SELECT pp.Salesperson, s.Amount, pp.SPID
FROM people AS pp
INNER JOIN sales AS s
ON pp.spid = s.spid
ORDER BY s.Amount DESC
LIMIT 10;

-- WHAT DATE DID THE CUSTOMERS SHOP MOST
SELECT customers, SaleDate
FROM sales
ORDER BY SaleDate DESC;

-- AMOUNT PER BOX
SELECT SaleDate, Amount, Boxes, Amount / Boxes
FROM sales

-- ALIASING / RENAMING AMOUNT/ BOX AND ORDERING THEM BY TOP 10
SELECT SaleDate, Amount, Boxes, Amount / Boxes AS 'Amount Per Box'
FROM sales
ORDER BY Amount / Boxes DESC
LIMIT 10;








