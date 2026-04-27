create database sis04t25; -- criando a database

use sis04t25; -- usando a database criada

-- criação das tabelas:

create table Customers ( -- criando a tabela de clientes
    CustomerID int primary key auto_increment,
    CustomerName varchar(100),
    ContactName varchar(100),
    Address varchar(150),
    City varchar(50),
    PostalCode varchar(20),
    Country varchar(50)
);

create table Categories ( -- criando a tabela de categorias
    CategoryID int primary key auto_increment,
    CategoryName varchar(100),
    CategoryDescription varchar(1000)
);

create table Employees ( -- criando a tabela de funcionários
    EmployeeID int primary key auto_increment,
    LastName varchar(50),
    FirstName varchar(50),
    BirthDate date,
    Photo blob,
    Notes varchar(1000)
);

create table Orders ( -- criando a tabela de pedidos
    OrderID int primary key auto_increment,
    CustomerID int,
    EmployeeID int,
    OrderDate date,
    foreign key (CustomerID) references Customers (CustomerID),
    foreign key (EmployeeID) references Employees (EmployeeID)
);

create table OrderDetails ( -- criando a tabela de detalhes dos pedidos
    OrderDetailID int primary key auto_increment,
    OrderID int,
    ProductID int,
    Quantity int,
    foreign key (OrderID) references Orders (OrderID)
);

-- inserts:

-- clientes
insert into Customers (CustomerName, ContactName, Address, City, PostalCode, Country) values
('Cliente1','Contato1','Rua 1','Cidade1','00001','Brasil'),
('Cliente2','Contato2','Rua 2','Cidade2','00002','Brasil'),
('Cliente3','Contato3','Rua 3','Cidade3','00003','Brasil'),
('Cliente4','Contato4','Rua 4','Cidade4','00004','Brasil'),
('Cliente5','Contato5','Rua 5','Cidade5','00005','Brasil'),
('Cliente6','Contato6','Rua 6','Cidade6','00006','Brasil'),
('Cliente7','Contato7','Rua 7','Cidade7','00007','Brasil'),
('Cliente8','Contato8','Rua 8','Cidade8','00008','Brasil'),
('Cliente9','Contato9','Rua 9','Cidade9','00009','Brasil'),
('Cliente10','Contato10','Rua 10','Cidade10','00010','Brasil');

-- categorias
insert into Categories (CategoryName, CategoryDescription) values
('Cat1','Desc1'),('Cat2','Desc2'),('Cat3','Desc3'),('Cat4','Desc4'),('Cat5','Desc5'),
('Cat6','Desc6'),('Cat7','Desc7'),('Cat8','Desc8'),('Cat9','Desc9'),('Cat10','Desc10');

-- funcionários
insert into Employees (LastName, FirstName, BirthDate, Photo, Notes) values
('Sob1','Nome1','1990-01-01',NULL,'Nota1'),
('Sob2','Nome2','1990-01-02',NULL,'Nota2'),
('Sob3','Nome3','1990-01-03',NULL,'Nota3'),
('Sob4','Nome4','1990-01-04',NULL,'Nota4'),
('Sob5','Nome5','1990-01-05',NULL,'Nota5'),
('Sob6','Nome6','1990-01-06',NULL,'Nota6'),
('Sob7','Nome7','1990-01-07',NULL,'Nota7'),
('Sob8','Nome8','1990-01-08',NULL,'Nota8'),
('Sob9','Nome9','1990-01-09',NULL,'Nota9'),
('Sob10','Nome10','1990-01-10',NULL,'Nota10');

-- pedidos
insert into Orders (CustomerID, EmployeeID, OrderDate) values
(1,1,'2024-01-01'),(2,2,'2024-01-02'),(3,3,'2024-01-03'),
(4,4,'2024-01-04'),(5,5,'2024-01-05'),(6,6,'2024-01-06'),
(7,7,'2024-01-07'),(8,8,'2024-01-08'),(9,9,'2024-01-09'),
(10,10,'2024-01-10');

-- detalhes dos pedidos
insert into OrderDetails (OrderID, ProductID, Quantity) values
(1,101,1),(1,102,2),(1,103,3),(1,104,4),(1,105,5),
(2,101,6),(2,102,7),(2,103,8),(2,104,9),(2,105,10),
(3,101,11),(3,102,12),(3,103,13),(3,104,14),(3,105,15),
(4,101,16),(4,102,17),(4,103,18),(4,104,19),(4,105,20),
(5,101,21),(5,102,22),(5,103,23),(5,104,24),(5,105,25),
(6,101,26),(6,102,27),(6,103,28),(6,104,29),(6,105,30),
(7,101,31),(7,102,32),(7,103,33),(7,104,34),(7,105,35),
(8,101,36),(8,102,37),(8,103,38),(8,104,39),(8,105,40),
(9,101,41),(9,102,42),(9,103,43),(9,104,44),(9,105,45),
(10,101,46),(10,102,47),(10,103,48),(10,104,49),(10,105,50),
(1,106,51),(2,107,52),(3,108,53),(4,109,54),(5,110,55),
(6,111,56),(7,112,57),(8,113,58),(9,114,59),(10,115,60),
(1,116,61),(2,117,62),(3,118,63),(4,119,64),(5,120,65),
(6,121,66),(7,122,67),(8,123,68),(9,124,69),(10,125,70),
(1,126,71),(2,127,72),(3,128,73),(4,129,74),(5,130,75),
(6,131,76),(7,132,77),(8,133,78),(9,134,79),(10,135,80),
(1,136,81),(2,137,82),(3,138,83),(4,139,84),(5,140,85),
(6,141,86),(7,142,87),(8,143,88),(9,144,89),(10,145,90),
(1,146,91),(2,147,92),(3,148,93),(4,149,94),(5,150,95),
(6,151,96),(7,152,97),(8,153,98),(9,154,99),(10,155,100);