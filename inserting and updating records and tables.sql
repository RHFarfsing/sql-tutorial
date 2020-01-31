select ol.Id from customers c join orders o on c.id=o.CustomerId join orderlines ol on o.id=ol.OrdersId where c.sales>90000;
