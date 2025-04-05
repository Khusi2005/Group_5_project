create database project_5;
use project_5;

create table Suppliers( 

SupplierID int primary key, 

SName varchar(100), 

Contact varchar(15) 

); 

create table Product( 

ProductID int primary key, 

PName varchar(100), 

Price decimal(10,2), 

Stock int, 

SupplierID int, 

foreign key(SupplierID) references Suppliers(SupplierID) 

); 

create table Sales( 

SaleID int  primary key, 

ProductID int, 

QuantitySold int, 

SaleDate date, 

foreign key(ProductID) references Product(ProductID) 

); 

