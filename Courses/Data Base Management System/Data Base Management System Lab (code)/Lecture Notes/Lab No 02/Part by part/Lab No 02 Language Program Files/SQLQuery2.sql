--select Customers.ContactName, Orders.OrderID from Customers full OUTER JOIN Orders on Customers.CustomerID = Orders.CustomerID order by Customers.ContactName;

--select A.ContactName as CustomerName1, B.ContactName as CustomerName2, A.City from Customers A, Customers B where A.CustomerID <> B.CustomerID and A.City = B.City order by A.City;