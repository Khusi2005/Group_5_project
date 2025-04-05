use project_5;

DELIMITER $$  
CREATE PROCEDURE GetLowStockProducts()  
BEGIN  
    SELECT * FROM Product WHERE Stock < 10;  
END$$  
DELIMITER ;

CALL GetLowStockProducts();
