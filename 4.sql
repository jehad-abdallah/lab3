select customer.Name, voucher.id_voucher
from customer
left join voucher on customer.id_customer = voucher.id_voucher
where id_voucher > 10;

select voucher.id_voucher, customer.id_customer
from voucher
right join customer on voucher.id_voucher = customer.id_customer
where 'id_voucher'  = 10;

select customer.Name, voucher.id_voucher
from customer
left join voucher on customer.id_customer = voucher.id_voucher
where customer.id_customer= voucher.id_voucher;


SELECT   voucher.cost, route_to_tour.id_route_to_tour, tourist_route.duration
FROM voucher
LEFT JOIN route_to_tour ON route_to_tour.id_route_to_tour = voucher.id_voucher
LEFT JOIN tourist_route ON tourist_route.id_route = voucher.id_voucher
where voucher.id_voucher = route_to_tour.id_route
and route_to_tour.id_route_to_tour= voucher.id_voucher; 
