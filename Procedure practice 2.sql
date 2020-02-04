alter procedure SetRequestStatus
	@requestid int,
	@IsApproved bit=1
as
begin
	set nocount on;
	declare @status nvarchar(10);
	If @IsApproved=1
	begin
		set @status='Approved';
	end
	If @IsApproved=0
	begin
		set @status='Rejected';
	end
	update Requests set
		status = @status
		where id = @requestid;
end

/*create procedure SetRequestToApproved
	@requestid int
as
begin
	set nocount on;
	update Requests set
		status='Approved'
		where id=@requestid;
end
go
create procedure SetRequestToRejected
	@requestid int
as
begin
	set nocount on;
	update Requests set
		status='Rejected'
		where id=@requestid;
end
go*/
exec SetRequestStatus @requestid=3
go
select * from requests