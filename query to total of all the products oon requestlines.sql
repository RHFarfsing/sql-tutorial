select Price from Products p
join requestlines rqs on (p.id=rqs.productid)
group by Price 
