--use Northwind;
--SELECT p.ProductName, s.ContactName AS SupplierName
--FROM Products p
--INNER JOIN Suppliers s ON p.SupplierID = s.SupplierID
--WHERE LEN(p.ProductName) <= 10
--AND s.ContactName NOT LIKE '%A%'

--use Northwind;
--SELECT o.OrderID, o.OrderDate, o.EmployeeID, e.FirstName, e.LastName
--FROM Orders o
--INNER JOIN Employees e ON o.EmployeeID = e.EmployeeID;


--use Northwind;
--SELECT s.CompanyName AS SupplierName, COUNT(p.ProductID) AS ProductCount
--FROM Products p
--INNER JOIN Suppliers s ON p.SupplierID = s.SupplierID
--GROUP BY s.CompanyName
--HAVING COUNT(p.ProductID) < 5;

--use pubs;
--SELECT t.title, s.qty
--FROM titles t
--INNER JOIN sales s ON t.title_id = s.title_id
--WHERE s.qty < 10;

--use pubs;
--SELECT t.title AS BookTitle, p.pub_name AS PublisherName
--FROM titles t
--INNER JOIN publishers p ON t.pub_id = p.pub_id;

--use pubs;
--SELECT p.pub_name AS PublisherName FROM publishers p LEFT JOIN titles t ON p.pub_id = t.pub_id WHERE t.pub_id IS NULL;


--use pubs;
--SELECT DISTINCT a1.au_fname AS AuthorFirstName1, a1.au_lname AS AuthorLastName1,
--                a2.au_fname AS AuthorFirstName2, a2.au_lname AS AuthorLastName2
--FROM authors a1
--INNER JOIN authors a2 ON a1.city = a2.city AND a1.au_id <> a2.au_id;

--use pubs;
--SELECT t.title AS BookTitle, p.pub_name AS PublisherName
--FROM titles t
--CROSS JOIN publishers p;


--use Northwind;
--SELECT 
--    p.ProductName,
--    c.CategoryName,
--    s1.CompanyName AS SupplierName
--FROM 
--    Products p FULL JOIN Categories c ON p.CategoryID = c.CategoryID FULL JOIN Suppliers s1 ON p.SupplierID = s1.SupplierID;

use Northwind;
SELECT FirstName + + LastName [Employee Name]
FROM Employees 
WHERE City = (SELECT City FROM Employees WHERE FirstName = 'Nancy');
