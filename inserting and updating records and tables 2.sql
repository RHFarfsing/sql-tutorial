update customers set
	sales=sales*1.1
	where city='Columbus';

select * from customers where city='Columbus';

select * from orderlines;

update orderlines set
	price=69.99
	where product='echo';
select * from OrderLines where product='echo'

