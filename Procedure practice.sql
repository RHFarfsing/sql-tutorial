alter procedure AddLineItem
	@requestdescription nvarchar(30),
	@productpartnbr nvarchar(30),
	@quantity int=1
as
begin
	set nocount on;
	declare @requestid int,@productid int;
	select @requestid=id from requests where description=@requestdescription;
	select @productid=id from Products where PartNbr=@productpartnbr;
	insert into requestlines (RequestId,ProductId,Quantity)
		values (@requestid,@productid,@quantity);
end
go
exec AddLineItem @requestdescription='1st request', @productpartnbr='eggs';
go
select * from RequestLines where requestid=1