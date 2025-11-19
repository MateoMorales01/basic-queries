-- 1. What is the product name(s) of the most expensive products?
select productName, UnitPrice
from products
where unitprice = (select max(unitprice) 
					from products 
					order by productName);
-- 2. What is the order id, shipping name and shipping address of all orders shipped via "Federal Shipping"? 
select CompanyName, shipperID
from shippers;
select OrderID, ShipName, ShipAddress, shipVia
from orders
where ShipVia = 3;
-- 3. What are the order ids of the orders that ordered "Sasquatch Ale"? 
select productName, ProductID
from products
where productName = 'Sasquatch Ale';
select OrderID, ProductID
from orderdetails
where ProductID = 34;
-- 4. What is the name of the employee that sold order 10266?
select orderID, employeeID
from orders
where orderID = 10266;
select employeeID, FirstName, LastName
from employees
where EmployeeID = 3; -- Janet Leverling
-- 5. What is the name of the customer that bought order 10266?
select orderID, customerID
from orders
where orderID = 10266;
select customerID, CompanyName, ContactName
from customers
where customerID = 'WARTH'; -- Pirkko Koskitalo
