/*select sum(rl.Quantity*p.price) as 'request total'
	from requests r
	join requestlines rl
		on rl.requestid=r.id
	join products p
		on p.id=rl.ProductId
	where r.description='2nd request';
	Use query above to find the request total, look in notes for a written step by step*/

create procedure updaterequesttotal
	@requestid int
as
begin
	set nocount on;
	update Requests set
	total=(
		select sum(rl.Quantity*p.price) as 'Request Total'
			from requests r
			join requestlines rl
				on rl.requestid=r.id
			join products p
				on p.id=rl.ProductId
			where r.id=@requestid
		)
		where id=@requestid;
end
go
select * from Requests;