use project_5;

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

-- 7. Remove a discontinued product from the inventory 

 delimiter $$
 create trigger after_supplier_delete
 before delete on Suppliers
 for each row
 begin
	 delete from Sales
	 where ProductID in(
	 select ProductID from Product where SupplierID=old.SupplierID
	  );
	 delete from Product
	 where SupplierID=old.SupplierID;
 end $$
 delimiter ;
 delete from Suppliers
 where SupplierID=107;
