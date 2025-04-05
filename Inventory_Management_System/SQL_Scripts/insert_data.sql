use project_5;

insert into Suppliers(SupplierID,SName,Contact) values 

(101,'Reliance Digital','9876543210'), 

(102,'Croma','9123456789'), 

(103,'Big C Mobiles','9988776655'), 

(104,'Poorvika Mobiles','9011223344'), 

(105,'Vijay Sales','9090909090'), 

(106,'Sangeetha Mobiles','8888888888'), 

(107,'Spice Digital','8777666555');

insert into Product(ProductID,PName,Price,Stock,SupplierID) values 

(1,'Laptop A1',45000.00,10,101), 

(2,'Wireless Mouse',700.00,40,102), 

(3,'Web Camera',1200.00,15,101), 

(4,'Bluetooth Speaker',1500.00,25,103), 

(5,'Smart Watch X',2200.00,8,102), 

(6,'Phone Charger',300.00,50,104), 

(7,'Earphones',500.00,60,105), 

(8,'Hard Disk 1TB',3500.00,12,101), 

(9,'Power Adapter',900.00,30,106), 

(10,'Computer Mouse',600.00,70,102), 

(11,'External HDD 2TB',5200.00,9,101), 

(12,'Mini Drone',6800.00,4,107), 

(13,'Smart Mug',800.00,20,106), 

(14,'Fitness Band',1100.00,11,105), 

(15,'VR Headset',7500.00,3,103);

insert into Sales(SaleID,ProductID,QuantitySold,SaleDate) values 

(201,1,2,'2024-12-01'),  

(202,2,4,'2024-12-02'),  

(203,3,1,'2024-12-03'),   

(204,4,3,'2024-12-03'),   

(205,5,2,'2024-12-04'),  

(206,6,5,'2024-12-05'),    

(207,7,3,'2024-12-06'),   

(208,8,2,'2024-12-07'),   

(209,9,2,'2024-12-07'),   

(210,10,6,'2024-12-08'), 

(211,11,1,'2024-12-09'),   

(212,12,2,'2024-12-10'),   

(213,13,4,'2024-12-10'),   

(214,14,3,'2024-12-11'),   

(215,15,1,'2024-12-12'), 

(216,1,5,'2024-09-01'), 

(217,4,2,'2025-03-04'), 

(218,6,2,'2025-04-03'); 