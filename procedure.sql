use lab8;

START TRANSACTION;
BEGIN;
insert into shop(id_N,ssname,specialization,place,phone_number,time_work)
values(11,'nike','общая мода','третий этаж',23232342,9);
insert into shop(id_N,ssname,specialization,place,phone_number,time_work)
values(12,'adidas','общая мода','второй этаж',224462554,10);
commit;
select * from shop;

START TRANSACTION;
select id_N,ssname
from shop;

update shop
set ssname = 'puma'
where id_N = 12;

select id_N,ssname
from shop;
commit;

START TRANSACTION;
select id_N,ssname,time_work
from shop;

update shop
set time_work = 13
where id_N = 1;

select id_N,ssname,time_work
from shop;
rollback;


START TRANSACTION;
select rname,location from entertain_center;

delete from entertain_center
where rname = 'ресторан';

select rname,location from entertain_center;
rollback;
