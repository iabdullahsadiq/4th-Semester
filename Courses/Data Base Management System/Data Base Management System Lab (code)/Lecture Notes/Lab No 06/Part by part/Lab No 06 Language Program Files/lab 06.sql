USE Northwind;
--10
select customerID, ContactName from Customers
where CustomerID in (select CustomerID from Orders);

    
--6
select c.CustomerID, c.contactName,  o.EmployeeID, e.firstNAme
from Customers c join Orders o on o.CustomerID = c.CustomerID 
join Employees e on e.EmployeeID = o.EmployeeID 
where c.customerID in (select customerID from Orders);

--9
select c.customerID , (od.unitprice * od.quantity) from customers c join orders o
       on o.CustomerID =  c.CustomerID join [Order Details] od
	   on od.OrderID = o.OrderID
       where  (unitprice * quantity) = 
	  (select max(unitPrice * Quantity) from [Order Details]);

use pubs
--8
Select au_id, au_fname from authors where au_id in 
(Select au_id from titleauthor where title_id  
in(select title_id from sales where stor_id 
in(select stor_id from stores where stor_name = 'Barnum''s')));

--1
SELECT c.companyName
FROM Customers c
JOIN orders o ON c.customerID = o.customerID
WHERE o.OrderID = 10290;

--2
SELECT p.ProductName, p.SupplierID
FROM Products p
JOIN Suppliers s ON p.SupplierID = s.SupplierID
WHERE s.CompanyName IN ('Exotic Liquids', 'Tokyo Traders', 'Ma Maison', 'Lyngbysild');

--3
SELECT p.ProductName
FROM Products p
JOIN Categories c ON p.CategoryID = c.CategoryID
WHERE c.CategoryName = 'Confections';

--4
SELECT
    ProductName,
    UnitPrice
FROM
    Products
WHERE
    UnitPrice = (SELECT MAX(UnitPrice) FROM Products)
    OR UnitPrice = (SELECT MIN(UnitPrice) FROM Products)
    OR UnitPrice = (SELECT AVG(UnitPrice) FROM Products);

--5
SELECT DISTINCT s.CompanyName
FROM Suppliers s
JOIN Products p ON s.SupplierID = p.SupplierID
JOIN Categories c ON p.CategoryID = c.CategoryID
WHERE c.CategoryName = 'Seafood';

--7
SELECT DISTINCT store.stor_name
FROM stores store
JOIN sales sale ON store.stor_id = sale.stor_id
WHERE sale.payterms > 0;

--or

SELECT DISTINCT store.stor_name
FROM stores store
JOIN sales sale ON store.stor_id = sale.stor_id
WHERE sale.payterms > 0
   OR sale.payterms = 'Net 60';

   --or

SELECT DISTINCT store.stor_name
FROM stores store
JOIN sales sale ON store.stor_id = sale.stor_id
WHERE sale.payterms > 0
   OR sale.payterms = 'Net 30';

   --or

SELECT DISTINCT store.stor_name
FROM stores store
JOIN sales sale ON store.stor_id = sale.stor_id
WHERE sale.payterms > 0
   OR sale.payterms = 'Net 30'
   OR (sale.payterms NOT LIKE '%[^0-9]%' AND CAST(sale.payterms AS int) > 0);

   --or

   SELECT DISTINCT store.stor_name
FROM stores store
JOIN sales sale ON store.stor_id = sale.stor_id
WHERE sale.payterms > 0
   OR sale.payterms = 'Net 30'
   OR TRY_CAST(sale.payterms AS int) IS NOT NULL;

