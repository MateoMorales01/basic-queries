-- 1.
select ProductName
from products;

-- 2.
select ProductID,ProductName,UnitPrice
from products;

-- 3. 
select * from products
order by ProductID asc,ProductName asc,UnitPrice asc;
-- 4
select * from products
where UnitPrice < 7.50;
-- 5 
select * from products
where UnitsInStock > 100
order by UnitPrice desc;
-- 6 
select * from products
where UnitsInStock > 100 
order by UnitPrice desc;
-- 7.
select * from products
where UnitsInStock < 1 and UnitsOnOrder > 1
order by ProductName;
-- 8.
select categoryName
from categories;
-- 9.
select * from categories
where CategoryID = 8;
-- 10. 

-- 11.
select firstName, LastName
from employees;
-- 12.
select * from employees
where Title = 'sales Manager';
-- 13.
select title
from employees;
-- 14
select * from employees
where Salary > 2000.00 and Salary < 2500.00;
-- 15
select * from suppliers;
-- 16
select * from suppliers
where SupplierID = 4;
