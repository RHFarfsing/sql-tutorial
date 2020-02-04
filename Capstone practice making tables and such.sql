use master;
go
drop database if exists CapstonePractice;
go
create database CapstonePractice;
go
use CapstonePractice;
go
create table TheUsers(
	Id int not null primary key identity(1,1),
	Username nvarchar(30) not null,
	Password nvarchar(30) not null,
	Firstname nvarchar(30) not null,
	Lastname nvarchar(30) not null,
	Phone nvarchar(12) null,
	Email nvarchar(255) null,
	IsAdmin bit not null default 0,
	IsReviewer bit not null default 0
);

go
insert into TheUsers(Username,Password,Firstname,Lastname)
values('us','us','System','User');
insert into TheUsers(Username,Password,Firstname,Lastname,Phone,Email,IsAdmin,IsReviewer)
values('sa','sa','System','Admin','513-742-8362','sys@admin.com',1,1);
insert into TheUsers(Username,Password,Firstname,Lastname,Phone,Email,IsReviewer)
values('rv','rv','System','Reviewer','513-496-3300','sys@reviewer.com',1);
go

create table Vendors(
	Id int not null primary key identity(1,1),
	code nvarchar(30) not null unique,
	Name nvarchar(30) not null,
	Address nvarchar(30) not null,
	City nvarchar(30) not null,
	State nvarchar(30) not null,
	Zip nvarchar(5) not null,
	Phone nvarchar(12) null,
	Email nvarchar(255) null
);
go
insert into Vendors(code,Name,Address,City,State,Zip,Phone,Email)
values ('AMV','Amazom','111 Victory Lane','Anthem','OH','45069','513-345-2313','Vendor@amazon.com');
insert into Vendors(code,Name,Address,City,State,Zip,Phone,Email)
values ('KRV','Kroger','134 Victory Lane','Anthem','OH','45069','513-984-3829','Vendor@kroger.com');
insert into Vendors(code,Name,Address,City,State,Zip,Phone,Email)
values ('LOV','Lowes','432 Victory Lane','Anthem','OH','45069','513-342-4938','Vendor@lowes.com');
insert into Vendors(code,Name,Address,City,State,Zip,Phone,Email)
values ('HDV','Home Depot','230 Victory Lane','Anthem','OH','45069','513-764-9632','Vendor@homedepot.com');
go

create table Products(
	Id int not null primary key identity(1,1),
	PartNbr nvarchar(30) not null unique,
	Name nvarchar(30) not null,
	Price decimal(11,2) not null,
	Unit nvarchar(30) not null,
	PhotoPath nvarchar(255),
	VenderId int not null foreign key references Vendors(Id)
);
go
insert into Products(PartNbr,Name,Price,Unit,VenderId)
values ('Eggs','Eggs',15.50,'Each',(select id from Vendors where code='KRV'));
insert into Products(PartNbr,Name,Price,Unit,VenderId)
values ('BeefS','Beef Sticks',20.00,'Each',(select id from Vendors where code='AMV'));
insert into Products(PartNbr,Name,Price,Unit,VenderId)
values ('PorkS','Pork Sticks',20.00,'Each',(select id from Vendors where code='KRV'));
insert into Products(PartNbr,Name,Price,Unit,VenderId)
values ('Drill','Drill',150.00,'Each',(select id from Vendors where code='LOV'))
go
create table Requests(
	Id int Primary key identity(1,1),
	Description nvarchar(80) not null,
	Justification nvarchar(80) not null,
	RejectionReason nvarchar(80) null,
	DeliveryMode nvarchar(20) not null default'Pickup',
	Status nvarchar(10) not null default'NEW',
	Total decimal (11,2) not null default 0,
	UserId int not null foreign key references TheUsers(id)
);
go
insert into requests (Description,Justification,userid)
values('1st Request','None Needed',(select id from TheUsers where username='us'));
insert into requests (Description,Justification,userid)
values('2nd Request','None Needed',(select id from TheUsers where username='sa'));
insert into requests (Description,Justification,userid)
values('3rd Request','None Needed',(select id from theusers where username='rv'));
insert into requests (Description,Justification,userid)
values('4th Request','None Needed',(select id from theusers where username='us'));
go
create table RequestLines(
	Id int primary key identity (1,1),
	RequestId int foreign key references Requests(id),
	ProductId int foreign key references Products(id),
	Quantity int default 1
);
go
insert into RequestLines(RequestId,ProductId,Quantity)
values((select id from Requests where description='1st Request'),(select id from products where PartNbr='Eggs'),5)
insert into requestlines(RequestId,ProductId,Quantity)
values((select id from Requests where description='2nd Request'),(select id from Products where PartNbr='BeefS'),2)
insert into requestlines(RequestId,ProductId,Quantity)
values((select id from Requests where description='3rd Request'),(select id from Products where PartNbr='Drill'),1)
insert into requestlines(RequestId,ProductId,Quantity)
values((select id from Requests where description='4th Request'),(select id from Products where PartNbr='PorkS'),4)
go