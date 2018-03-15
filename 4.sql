show tables;
select customer.Name, voucher.id_voucher
from customer
left join voucher on customer.id_customer = voucher.id_customer
where id_voucher > 10;

select voucher.id_voucher, customer.id_customer
from voucher
right join customer on voucher.id_customer = customer.id_customer
where 'id_voucher'  = 10;

select *
from voucher
left join customer on voucher.id_customer = customer.id_customer
where id_voucher  > 20;


select customer.Name, voucher.id_voucher
from customer
left join voucher on customer.id_customer = voucher.id_customer
where customer.id_customer > 20;


SELECT   voucher.cost, route_to_tour.id_route_to_tour, customer.name
FROM voucher
left JOIN customer ON voucher.id_customer = customer.id_customer
LEFT JOIN route_to_tour ON route_to_tour.id_voucher = voucher.id_voucher
where voucher.cost > 200
and customer.name = 'mohamed'
and route_to_tour.id_route_to_tour > 10;
