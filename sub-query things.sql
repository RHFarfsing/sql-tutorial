select avg(sales) from customers
select * from customers where sales > 56951

select * from customers where sales > 97036

select * from customers where sales >(
select max(sales) from Customers where city='cleveland'
)





/*sub-query runs sql inside () first then the rest. Make sure inside () is from one col. 
sub-queries can have multiple sub-queries inside them.
use select * from col for the main query
anymore issues look through the student manual*/