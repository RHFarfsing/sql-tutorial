alter procedure SaleRangeByCity
	    @city varchar(30)='cleveland',
		@lowsales decimal(8,2)= 30000,
		@highsales decimal(8,2)= 85000
as
BEGIN
--set @lowsales = 40000;
--set @highsales = 70000;

		select * from customers where city=@city and sales between @lowsales and @highsales;

END
/* create procedure declare varchar(n),int,decimal(x,y) as :: x=amount of numbers in the int. y=amount of numbers after the decimal point.*/