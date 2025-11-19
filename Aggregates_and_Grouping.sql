-- 1. How many suppliers are there?
select CompanyName
from suppliers; -- There are 29 suppliers
-- 2. What is the sum of all the employee's salaries?
select sum(salary)
from employees; -- The sum of salary is $2,036
-- 3. What is the price of the cheapest item that Northwind sells?
select*from `order details`
Order By UnitPrice asc;
select productname, ProductID
from products; -- The cheapest item that Northwind sells is called "Geitost"
-- 4. What is the average price of items that Northwind sells?
select avg(unitprice)
from products; -- average price of items is $29 (rounded)
-- 5. What is the price of the most expensive item that Northwind sells?
select max(unitprice)
from products; -- The most expensive item from northwind is $264 (rounded)
-- 6. What is the supplier ID of each supplier and the number of items they supply? You can answer this query by only looking at the Products table.
select SupplierID, QuantityPerUnit
from products;
-- 7. What is the category ID of each category and the average price of each item in the category? You can answer this query by only looking at the Products table.
select CategoryID, avg(unitprice)
from products
group by CategoryID;
-- 8. For suppliers that provide at least 5 items to Northwind, what is the supplier ID of each supplier and the number of items they supply? You can answer this query by only looking at the Products table.
select SupplierID, count(ProductName)
from products
group by SupplierID
having count(ProductName)>=5;
-- 9. List the product id, product name, and inventory value (calculated by multiplying unit price by the number of units on hand). Sort the results in descending order by value. If two or more have the same value, order by product name.
select ProductID, ProductName, UnitPrice*UnitsInStock as 'inventory value'
from products
order by UnitPrice*UnitsInStock desc, ProductName;