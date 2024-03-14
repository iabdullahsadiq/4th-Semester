--select CURRENT_TIMESTAMP;
--select GETDATE;

--use Northwind

--select orderdate, dateadd(day, 7, orderdate) from orders;
--select orderdate, dateadd(month, 7, orderdate) from orders;

--select orderdate, format(orderdate, 'dd/MM/yyyy') from orders;

--select orderdate, datename(month,orderdate) from orders;

--select orderdate, day(orderdate) from orders;

--from orders select unitprice, CELLING(unitprice)

select CHARINDEX('h', 'home');
select replace('homeh', 'h', 'c');
select trim ('    homeh    ');