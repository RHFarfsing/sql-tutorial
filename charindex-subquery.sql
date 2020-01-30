/*charindex('b',abc)>0 for any sting that your looking for. Can use in (a,b,c) for replacement for a bunch of or*/
select * from customers
where id=8 or id=11 or id=12;

select * from customers
where charindex('bank',name)>0

select * from customers
where id in (8,11,12);

select * from customers
where id in (select id from customers where charindex('bank',name)>0 or CHARINDEX('cardinal',name)>0 or CHARINDEX('eagle',name)>0)