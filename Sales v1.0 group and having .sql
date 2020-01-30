select city,sum(sales) as 'Total of sales',
			max(sales) as 'Max sales',
			min(sales) as 'Min sales',
			avg(sales) as 'Avg sales',
			count(sales) as 'Number of customers'
    from Customers 
	--where sales > 50000
	group by city
	having sum(sales)>600000
	--order by sales desc;
--order by and having and agrigates