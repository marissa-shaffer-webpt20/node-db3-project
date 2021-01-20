-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
SELECT p.ProductName, c.CategoryName
FROM Product as p
JOIN Category as c
ON p.CategoryId = c.Id;

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.

select o.id, o.orderdate, s.companyname
from "order" as o
join shipper as s on o.ShipVia = s.id
where o.OrderDate < "2012-08-09";

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.

select p.ProductName, o.OrderId, o.Quantity
from product as p
join OrderDetail as o on o.ProductId = p.id
where o.OrderId = 10251;

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.

select o.id as OrderID, c.CompanyName as CustomerCompanyName, e.LastName as EmployeeLastName
from "Order" as o
join Customer as c on c.id = o.CustomerId
join Employee as e on e.id = o.EmployeeId 