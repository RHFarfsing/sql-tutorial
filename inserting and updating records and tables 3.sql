update OrderLines set
	price=price*0.9
	where id in (select ol.Id from customers c join orders o on c.id=o.CustomerId join orderlines ol on o.id=ol.OrdersId where c.sales>90000);

	select * from customers c join orders o on c.id=o.CustomerId join orderlines ol on o.id=ol.OrdersId where c.sales>90000;

