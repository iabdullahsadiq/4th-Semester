--select * from orders;
--select * from customers;
--select c.CustomerID, o.OrderID, c.ContactName from Customers c inner join Orders o on c.CustomerID = o .CustomerID;

--select cust.CompanyName, ord.OrderID from Customers cust inner join Orders ord on cust.CustomerID = ord.CustomerID;

--select p.ProductName, s.ContactName from Products p inner join Suppliers s on p.SupplierID = s.SupplierID where s.ContactName not like '%A' and len (p.productName) <=10;

--select Customers.ContactName,Orders.OrderID from Customers left join Orders on Customers.CustomerID = Orders.CustomerID order by Customers.ContactName;


--Select Orders.OrderID, Employees.LastName, Employees.FirstName from Orders right join Employees on Orders.EmployeeID = Employees.EmployeeID order by Orders.OrderID;

--select Customers.ContactName, Orders.OrderID from Customers full OUTER JOIN Orders on Customers.CustomerID = Orders.CustomerID order by Customers.ContactName;

--select A.ContactName as CustomerName1, B.ContactName as CustomerName2, A.City from Customers A, Customers B where A.CustomerID <> B.CustomerID and A.City = B.City order by A.City;--select e1.FirstName, e2.FirstName, e1.City from Employees e1, Employees e2 where e1.EmployeeID <> e2.EmployeeID and e1.city = e2.city;--select Customers.ContactName, Orders.OrderID from Customers cross join Orders;