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