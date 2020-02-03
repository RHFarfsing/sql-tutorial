--create database Bootcamp;
--use bootcamp; script to switch to a specific database: use [datebase]
--default to use in insert omit the column that has the default if you want the default, default wont happen if you don't omit the column
--primary key has to have not null with it from it to be actually a primary key

/*create table Students (
	Id int not null primary key identity(1,1),
	Firstname nvarchar(30) not null,
	Lastname nvarchar(30) not null,
	Active bit not null default 1,
	Birthday DateTime not null ,
	Loan decimal(8,2)
);*/

/*insert into Students(Firstname,Lastname,Birthday,Active,loan)
   values ('John','Farfsing','1994-06-09',0,14000.00);
*/

/*Create table Technology(
	Id int not null primary key identity(100,100),
	Name nvarchar(50) not null,
	PrimaryInstructor nvarchar(30) not null
);*/

/*insert into technology(Name,PrimaryInstructor)
	values ('Java','Shawn');
*/

/*create table Cohort (
	Id int not null primary key identity(1,1),
	Starts DateTime,
	Capacity int not null default 0,
	Enrolled int not null default 0,
	TechnologyId int foreign key references Technology(Id)
);*/

/*Alter table Students
	alter column loan decimal(8,2) not null;*/

/*Alter table students
	add constraint df_loan default 0 for loan;*/

/*alter table cohort
	add note nvarchar(80) not null;*/

/*alter table cohort drop column note*/