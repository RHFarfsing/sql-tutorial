select * from customers c 
join orders o on c.id=o.customerid 
join orderlines ol on o.id=ol.ordersid 
where c.name='P&G';

select * from Orders o
	join customers c on c.id=o.customerid
	where c.id=4;

update customers set
	sales =
		(select sum(ol.Quantity*ol.Price) 
			from orderlines ol
			where ol.ordersid=29
			group by ol.OrdersId)
	where customers.id =4;

update customers set
	sales =(select sum(ol.Quantity*ol.Price) 
			from orderlines ol
			join orders o on o.id=ol.OrdersId
			join customers c on c.id=o.CustomerId
			where c.name='P&G')
	where name='P&G';
