use Northwind;
-- 1. List the product id, product name, unit price and category name of all products. Order by category name and within that, by product name.
select products.ProductID, products.ProductName, products.UnitPrice, Products.CategoryID, Categories.CategoryName
from Products
inner join Categories
on Products.CategoryID = Categories.CategoryID
order by CategoryName, ProductName asc;
-- 2. List the product id, product name, unit price and supplier name of all products that cost more than $75. Order by product name.
select products.ProductID, productname, unitprice, products.supplierid, suppliers.companyName
from products
inner join suppliers
on products.supplierid = suppliers.SupplierID
where unitprice >= 75
order by products.productname;
-- 3. List the product id, product name, unit price, category name, and supplier name of every product. Order by product name.
select Products.ProductID, Products.ProductName, Products.UnitPrice, Products.CategoryID, Categories.CategoryName, Suppliers.CompanyName
from Products
inner join Categories
on Products.CategoryID = Categories.CategoryID
inner join Suppliers
on Products.SupplierID = Suppliers.SupplierID
order by ProductName;
-- 4. What is the product name(s) and categories of the most expensiveproducts? HINT: Find the max price in a subquery and then use that in your more complex query that joins products with categories.
select Products.ProductID, Products.ProductName, Categories.CategoryName
from Products
inner join Categories
on Products.CategoryID = Categories.CategoryID
where Products.UnitPrice = (select max(UnitPrice) from Products);
-- 5. List the order id, ship name, ship address, and shipping company name of every order that shipped to Germany.
select Orders.OrderID, Orders.ShipName, Orders.ShipAddress, Shippers.CompanyName, Orders.ShipCountry
from Orders
inner join Shippers
on Orders.ShipVia = Shippers.ShipperID
where Orders.ShipCountry = "Germany";
-- 6. List the order id, order date, ship name, ship address of all orders that ordered "Sasquatch Ale"?
select Orders.OrderID, Orders.OrderDate, Orders.ShipName, Orders.ShipAddress, Products.ProductName
from Orders
inner join `Order Details`
on Orders.OrderID = `Order Details`.OrderID
inner join Products
on `Order Details`.ProductID = Products.ProductID
where Products.ProductName = "Sasquatch Ale";