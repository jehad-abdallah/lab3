//first insert
INSERT INTO customer VALUES(0, 'AHMED');
INSERT INTO customer (id_customer, name, telephone, address) VALUES(1, 'MOHAMED', 01123, '120KARLAMARKSA');
INSERT INTO voucher(id_customer) select id_customer FROM customer;


//DELETE
DELETE FROM customer;
DELETE FROM customer WHERE id_customer > 0;
truncate table customer;

//UPDATE
UPDATE customer SET name ='Juan'; 
UPDATE customer SET name ='Juan' where id_customer = 0;
UPDATE customer SET name ='Juan' , address ='120karla marksa' where id_customer = 0; 

//SELECT
select id_customer, name from customer;
SELECT* FROM customer;
SELECT* FROM customer WHERE id_customer > 1;
