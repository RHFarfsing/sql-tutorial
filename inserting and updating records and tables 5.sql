insert into orders (customerid,date,Description)
		values (1,'2020-02-01','My first inserted order');
insert into orderlines (ordersid,Product,Description,quantity,price)
	values (28,'echo','amazon echo',3,99.99);
insert into orderlines (ordersid,Product,Description,quantity,price)
	values (28,'echodot','amazon echodot',5,39.99);
insert into orders (customerid,date,description)
	Values(4,'2020-02-02','My second inserted order');
insert into orderlines (ordersid,Product,Description,Quantity,Price)
	values(29,'gater','gater parts',9,89.99);
insert into orderlines (ordersid,Product,Description,Quantity,Price)
	values(29,'gaterpro','gaterpro parts',14,99.99);
insert into orderlines (ordersid,Product,Description,Quantity,Price)
	values(29,'supergater','supergater parts',1,50.99);
select * from OrderLines