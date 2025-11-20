-- 1. Add a new supplier
insert into suppliers (companyName, ContactName)
values ('ADHD Toys', 'Shigero Miyamoto');
-- 2. Add a new product provided by that supplier
insert into products ( productName, supplierid, unitprice)
values ('Fidget Spinners', 31, 15.0000);
-- 3. List all products and their suppliers
select productid, productName, suppliers.CompanyName, suppliers.contactname, products.SupplierID
from products
inner join suppliers
on products.SupplierID = Suppliers.supplierID;
-- 4. Raise the price of your new product by 15%
update products
set unitprice = 17.2500
where supplierid = 31;
-- 5. List the products and the prices of all products from that supplier
select productid, productName, unitprice, suppliers.contactname, products.supplierid
from products
inner join suppliers
on products.SupplierID = Suppliers.supplierID
where products.supplierid = 31;
-- 6. Delete the new product
delete from products
where productid = 79;
-- 7. Delete the new supplier
delete from suppliers
where supplierid = 31;
-- 8. List all products
select*from products;
-- 9. List all suppliers
select*from suppliers;