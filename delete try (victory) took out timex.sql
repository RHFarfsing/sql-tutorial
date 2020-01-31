select distinct(description) from OrderLines
;

delete from orderlines
where description='timex';

delete from orderlines
where id in(select id from orderlines where description='timex')

select id from orderlines where description='timex';

select * from orderlines