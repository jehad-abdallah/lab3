show databases;	
CREATE DATABASE hotel_complex;
use hotel_complex;
show tables;
describe hotel;
select * from hotel;

DROP TABLE IF EXISTS hotel;
CREATE TABLE IF NOT EXISTS hotel(
`id_hotel` INT(11) NOT NULL AUTO_INCREMENT,
name VARCHAR(255) NOT NULL,
star tinyint(1) NULL,
address text(1000) not null,
PRIMARY KEY (`id_hotel`)
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

insert into hotel
values
(1, 'Altai', 3, 'karla marksa 120'),
(2, 'Восток', 8, 'Ahmed Mahmoud'),
(3, 'Космос', 9, 'karla marksa 120');

select * from room_kind;
DROP TABLE IF EXISTS room_kind;
CREATE TABLE IF NOT EXISTS room_kind(
`id_room_category` INT(11) NOT NULL AUTO_INCREMENT,
category_room varchar(255) not null,
min_category varchar(255) default null,
PRIMARY KEY (`id_room_category`)
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

insert into room_kind
values
(4, 'Suite', '3'),
(5,'Suite', '5'),
(15,'Suite', '5'),
(6, 'Suite', '6');
drop table if exists room;
create table if not exists room(
id_room int(11) not null auto_increment,
id_hotel int(11) not null,
id_room_category int(11) not null,
room_number int(11) not null,
cost float not null,
primary key (id_room)
)
engine = InnoDB
default CHARACTER SET = utf8;
select * from room;
insert into room
values
(10, 1, 4, 326, '1000'),
(11, 2, 15, 327, '1000'),
(13, 3, 4, 328, '1500');

DROP TABLE IF EXISTS `client`;
CREATE TABLE IF NOT EXISTS client(
id_client INT(11) NOT NULL AUTO_INCREMENT,
name_client VARCHAR(255) NOT NULL,
phone_number VARCHAR(15) DEFAULT NULL,
PRIMARY KEY (`id_client`)
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

insert into `client` 
values
(5, 'mohamed', '12312488'),
(25, 'mohamed', '12312488'),
(26, 'mohamed', '12312488');

drop table if exists booking;
create table if not exists booking(
id_booking int(11) not null auto_increment,
id_client int(11) not null,
booking_date date not null,
primary key (id_booking)
)
engine = InnoDB
default character set = utf8;

insert into booking
values
(20, 5, '20.02.2000'),
(21, 25, '20.02.2000'),
(22, 26, '20.02.2000');
describe room_number;

drop table if exists room_number;
create table if not exists room_number(
id_room_number int(11) not null auto_increment,
id_booking int(11) not null,
id_room_category int(11) not null,
check_in_date date not null,
check_out_date date not null,
primary key (id_room_number)
)
engine = InnoDB
default character set = utf8;

insert into room_number
values 
(30, 20, 4, '15.03.2000','20.03.2000'),
(31, 21, 15, '15.03.2000','20.03.2000'), 
(32, 22, 6, '15.03.2000','20.03.2000');

ALTER TABLE room
ADD CONSTRAINT room.ib1 FOREIGN KEY (id_hotel) REFERENCES hotel(id_hotel),
ADD CONSTRAINT room.ib2 FOREIGN KEY (id_room_category) REFERENCES room_kind(id_room_category);

ALTER TABLE room_number
ADD CONSTRAINT room_number.ib1 FOREIGN KEY (id_room_category) REFERENCES room_kind(id_room_category),
ADD CONSTRAINT room_number.ib2 FOREIGN KEY (id_booking) REFERENCES booking(id_booking);

ALTER TABLE booking
ADD CONSTRAINT booking.ib1 FOREIGN KEY (id_client) REFERENCES `client`(id_client);
alter table booking 
drop foreign key booking_ibfk_1;
create index IN_hotel_id on hotel(id_hotel);
create index IN_room_kind_id on room_kind(id_room_category);
create index IN_room_id on room(id_room);
create index IN_client_id on `client`(id_client);
create index IN_bookind_id on booking(id_booking);
create index IN_room_number_id on room_number(id_room_number);
create index IN_hotel_name on hotel(name(10));

#2Выдать информацию о клиентах гостиницы “Алтай”, проживающих в номерах категории “люкс”.
select `client`.name_client, hotel.name as hotel_name, room_kind.category_room, booking.booking_date
from booking
left join `client` on booking.id_client = `client`.id_client
left join room_number on booking.id_booking = room_number.id_booking
left join room on room_number.id_room_category = room.id_room_category
left join hotel on room.id_hotel = hotel.id_hotel
left join room_kind on room.id_room_category = room_kind.id_room_category
where hotel.name = 'Altai' and room_kind.category_room = 'Suite';



#3Дать список свободных номеров всех гостиниц на 30.05.12.
select room.room_number, hotel.name
from room_number 
right join room on room_number.id_room_category = room.id_room_category
left join hotel on room.id_hotel = hotel.id_hotel
left join room_kind on room_number.id_room_category = room_kind.id_room_category
where room_number.check_in_date > '01.06.2012' and room_number.check_out_date < '30.05.2012'
group by hotel.name, room_number;

#4Дать количество проживающих в гостинице “Восток” на 25.05.12 по каждой категории номера
select count(`client`.id_client) as Clients_Nu, room.room_number as RoomNo
from booking
left join `client` on booking.id_client = `client`.id_client
left join room_number on booking.id_booking = room_number.id_booking
left join room on room_number.id_room_category = room.id_room_category
left join hotel on room.id_hotel = hotel.id_hotel
left join room_kind on room_number.id_room_category = room_kind.id_room_category
where hotel.name = 'Восток' and room_number.check_in_date <= '1.05.12' and 
room_number.check_out_date >= '1.05.12'
group by category_room;


#5дать список последних проживавших клиентов по всем комнатам гостиницы “Космос”, выехавшим в апреле 2012 с указанием даты выезда. 
-- group by
-- последний проживающий а не все
drop temporary table if exists last_living_customers;
create temporary table last_living_customers as(
select  room.id_room, max(room_number.check_out_date) as date_of_departure
from booking
left join `client` on booking.id_client = `client`.id_client
left join room_number on booking.id_booking = room_number.id_booking
left join room on room_number.id_room_category = room.id_room_category
left join hotel on room.id_hotel = hotel.id_hotel
where hotel.name = 'Космос' and room_number.check_out_date between '01.04.12' and'31.04.12'
group by room.id_room
);
select `client`.name_client ,last_living_customers.date_of_departure
from last_living_customers
left join room on last_living_customers.id_room = room.id_room  
left join room_number on room.id_room_category = room_number.id_room_category 
and last_living_customers.date_of_departure = room_number.check_out_date
left join booking on room_number.id_booking = booking.id_booking
left join `client` on booking.id_client = `client`.id_client;
#6Продлить до 30.05.12 дату проживания в гостинице “Сокол” всем клиентам комнат категории “люкс”, которые заселились 15.05.12, а выезжают 28.05.12
SET SQL_SAFE_UPDATES = 0;

update room_number 
left join room_kind on room_number.id_room_category = room_kind.id_room_category
left join room on room_number.id_room_category = room.id_room_category
left join hotel on room.id_hotel = hotel.id_hotel
set room_number.check_out_date = '30.05.12'
where hotel.name = 'Сокол' and room_kind.category_room = 'люкс' 
and room_number.check_in_date = '15.05.12' and room_number.check_out_date = '28.05.12';

#7Привести пример транзакции при создании брони.
#this is just example not more 
START TRANSACTION;
insert into booking
values (null, 124,'10.10.2000'); 

select @booking_values := last_insert_id();
insert into room_number 
values (null,@booking_values ,124, '20.01.2000','24.01.2000' );

commit;
rollback;



