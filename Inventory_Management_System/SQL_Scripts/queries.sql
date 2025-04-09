use project_5;

-- 1. List all products with stock below 10. 

select ProductID,PName 
from Product 
where Stock<10; 

-- 2. Retrieve details of suppliers supplying a specific product. 

select s.SupplierID,s.SName,p.PName 
from Suppliers s 
join Product p on s.SupplierID=p.SupplierID; 

-- 3. Calculate total sales for a given month. 

select month(SaleDate) as month,count(s.QuantitySold) as total_sales 
from Sales s 
group by month(SaleDate);

-- 4. Update stock after a sale. 

delimiter $$  
create trigger update_stock_after_sale  
after insert on Sales  
for each row  
begin  
	update Product  
	set Stock=Stock-new.QuantitySold  
	where ProductID=new.ProductID;  
end$$  
delimiter ; 

insert into Sales(SaleID,ProductID,QuantitySold,SaleDate) values (219,11,2,'2025-04-03');

-- 5. Get top-selling products 

select p.ProductID,p.PName 
from Product p 
join Sales s on s.ProductID=p.ProductID 
where s.QuantitySold= (select max(QuantitySold) from Sales); 

-- 6. Find sales made in the last 7 days. 

SELECT * 
FROM Sales 
WHERE SaleDate >= CURDATE() - INTERVAL 7 DAY; 

-- 7. Remove a discontinued product from the inventory 

 delimiter $$
 create trigger after_supplier_delete
 before delete on Suppliers
 for each row
 begin
	 delete from Sales
	 where ProductID in(
	 select ProductID from Product where SupplierID=old.SupplierID);
	 delete from Product
	 where SupplierID=old.SupplierID;
 end $$
 delimiter ;
 delete from Suppliers
 where SupplierID=107;

-- 8. Retrieve products with the highest revenue. 

select p.ProductID,p.PName,sum(s.QuantitySold*p.Price) as TotalRevenue 
from Product p 
join Sales s on s.ProductID=p.ProductID 
group by p.ProductID 
order by TotalRevenue desc 
limit 1; 

-- 9. Identify the least sold products. 

select p.ProductID,p.PName,sum(s.QuantitySold) as QuantitySold 
from Product p 
join Sales s on s.ProductID=p.ProductID 
group by p.ProductID 
order by QuantitySold asc 
limit 1; 

-- 10. Find suppliers who supply the most products. 

select s.SupplierID,s.SName,count(p.PName) as No_of_Products_Given  
from Suppliers s  
join Product p on s.SupplierID=p.SupplierID  
group by s.SupplierID  
order by No_of_Products_Given desc  
limit 1; 
