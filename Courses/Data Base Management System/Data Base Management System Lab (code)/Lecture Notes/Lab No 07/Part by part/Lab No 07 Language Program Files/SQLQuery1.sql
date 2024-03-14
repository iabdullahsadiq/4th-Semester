--use Northwind;
--select * from orders;
--select * from [order details];

--1
--select od.ProductID, o.OrderDate
--from Orders  o join [Order Details] od
--on o.OrderID = o.OrderID
--where o.OrderDate = (select min (orderDate) from orders);


--use ArtGalleryDB;
--select name,
--(select max (price) from Paintings) [Max Price]
--from paintings
--where price = (select max (price) from Paintings);

--2
--use ArtGalleryDB;
--select name,
--price from Paintings
--where price = (select max (price) from Paintings);

--3
--use ArtGalleryDB;
--select name, price, (select avg (price) from Paintings) from Paintings;

--4
--use ArtGalleryDB;
--select * from Sales_Agents where agency_fee>(select avg (agency_fee) from Sales_Agents);

--5
--use ArtGalleryDB;
--select * from managers;
--select * from Sales_Agents
--select avg (agency_fee) [Avg Agency Fee]
--from Sales_Agents
--where id in (select id  from Managers);


--       using join

--use ArtGalleryDB;
--select * from managers;
--select * from Sales_Agents
--select avg (s.agency_fee) [Avg Agency Fee]
--from Sales_Agents s join managers m on m.id = s.id;

--6
--use ArtGalleryDB;
--select name, (select min (price) from Paintings) from Paintings;

--7
--use ArtGalleryDB;
--select * from Galleries
--select * from paintings
--select count (p.id) from paintings p join Galleries g on p.id = g.id;

--use ArtGalleryDB;
--select * from Galleries
--select * from paintings
--select city, count (*)
--from Galleries g join Paintings p on p.gallery_id = g.id group by city;

-------------------------------------------------------------------
--use ArtGalleryDB;
--select name, price, (select avg (price) from Paintings) from Paintings where ;

--select city, 
--(select count (*) from paintings p
--where p.gallery_id = g.id)
--total_paintings
--from Galleries g;

--select city, (select count (*) from paintings p where p.gallery_id = g.id) [Total paintings] from galleries g;

--8
--select name, price, 
--(select avg(price) from paintings where price >= 5000)
--from paintings where price >= 5000;

