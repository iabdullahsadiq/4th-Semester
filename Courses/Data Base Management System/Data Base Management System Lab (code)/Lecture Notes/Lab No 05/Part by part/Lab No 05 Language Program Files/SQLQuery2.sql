--use Northwind
--SELECT DISTINCT c.City
--FROM Customers c
--WHERE EXISTS (
--    SELECT 1
--    FROM Suppliers s
--    WHERE s.City = c.City
--); 

--use Northwind
--SELECT DISTINCT c.City FROM Customers c WHERE NOT EXISTS (SELECT 1 FROM Suppliers s
--WHERE s.City = c.City ); 

--use Northwind
--SELECT DISTINCT E.Region AS Employee_Region, S.Region AS Supplier_Region
--FROM Employees E
--JOIN Suppliers S ON E.Region = S.Region; 


--use Northwind
--SELECT DISTINCT City
--FROM (
--    SELECT City, Country
--    FROM Customers
--    UNION
--    SELECT City, Country
--    FROM Suppliers
--) AS Combined
--WHERE Country = 'Germany';


use Northwind
SELECT ContactName, City, Country
FROM (
    SELECT ContactName, City, Country
    FROM Customers
    UNION ALL
    SELECT ContactName, City, Country
    FROM Suppliers
) AS Combined;
