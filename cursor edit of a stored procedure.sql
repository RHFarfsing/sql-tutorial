USE [CapstonePractice]
GO
/****** Object:  StoredProcedure [dbo].[GetAllRequests]    Script Date: 2/4/2020 10:07:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[GetAllRequests]
as
begin
	set nocount on
	declare cur cursor for 
		select distinct r.Id from requests r
					join RequestLines rl
						on r.id=rl.requestid;
	declare @id int;
	open cur;

	fetch next from cur into @id;
	while(@@fetch_status = 0)
	begin
		--otherstatments
		print 'request id is ' + cast(@id as nvarchar(10));
		exec updaterequesttotal @id;
		fetch next from cur into @id;
	end

	Close cur;
	deallocate cur;
end 
go
exec GetAllRequests;
go
select * from requests
go