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
values ('AMV','Amazom','111 Victory Lane','Anthem','OH','45069','513-345-2313','Vendor@amazon.com')
insert into Vendors(code,Name,Address,City,State,Zip,Phone,Email)
values ('KRV','Kroger','134 Victory Lane','Anthem','OH','45069','513-984-3829','Vendor@kroger.com')
insert into Vendors(code,Name,Address,City,State,Zip,Phone,Email)
values ('LOV','Lowes','432 Victory Lane','Anthem','OH','45069','513-342-4938','Vendor@lowes.com')
insert into Vendors(code,Name,Address,City,State,Zip,Phone,Email)
values ('HDV','Home Depot','230 Victory Lane','Anthem','OH','45069','513-764-9632','Vendor@homedepot.com')
go
select * from Vendors
go