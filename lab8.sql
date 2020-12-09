create database lab8;

CREATE TABLE lab8.ShoppingCenter(
sname varchar(50)  PRIMARY KEY,
adress varchar(50)   NOT NULL,
phonenumber int    NOT NULL,
numberofloor int NOT NULL,
time_work int NOT NULL
);

CREATE TABLE lab8.shop(
id_N int PRIMARY KEY,
ssname varchar(50) 	NOT NULL,
specialization varchar(50) NOT NULL,
place varchar(50) NOT NULL,
phone_number int NOT NULL,
time_work int REFERENCES ShoppingCenter(time_work)
);

create table lab8.sharea(
number_of_seats int primary key,
number_of_free_seat int not null
);

create table lab8.entertain_center(
rname varchar(50) primary key,
location varchar(50) not null,
kind_of_activity varchar(50) not null,
time_work int REFERENCES ShoppingCenter(time_work)
);


insert into lab8.shoppingcenter(sname,adress,phonenumber,numberofloor,time_work)
values('Akvarel','volgograd',844226660,3,12);
insert into lab8.shop(id_N,ssname,specialization,place,phone_number,time_work)
values(1,'HM','общая мода','второй этаж',798733424,12);
insert into lab8.shop(id_N,ssname,specialization,place,phone_number,time_work)
values(2,'letyal','косместика','второй этаж',798822242,10);
insert into lab8.shop(id_N,ssname,specialization,place,phone_number,time_work)
values(3,'zara','общая мода','второй этаж',887333322,11);
insert into lab8.shop(id_N,ssname,specialization,place,phone_number,time_work)
values(4,'mvideo','электронное устройство','третий этаж',898745453,12);
insert into lab8.shop(id_N,ssname,specialization,place,phone_number,time_work)
values(5,'sport master','спортивная форма','третий этаж',799843435,9);
insert into lab8.entertain_center(rname,location,kind_of_activity,time_work)
values('кинотеатр','третий этаж','фильмы',10);
insert into lab8.entertain_center(rname,location,kind_of_activity,time_work)
values('театр','третий этаж','музыка',12);
insert into lab8.entertain_center(rname,location,kind_of_activity,time_work)
values('кафе','третий этаж','кофе',11);
insert into lab8.entertain_center(rname,location,kind_of_activity,time_work)
values('ресторан','третий этаж','кущать',9);
insert into lab8.entertain_center(rname,location,kind_of_activity,time_work)
values('детская игровая площадка','первый этаж','играть',13);
insert into lab8.sharea(number_of_seats,number_of_free_seat)
values(40,7);
insert into lab8.shop(id_N,ssname,specialization,place,phone_number,time_work)
values(6,'ашан','продукты','первый этаж',799843455,10);
insert into lab8.shop(id_N,ssname,specialization,place,phone_number,time_work)
values(7,'Elis','общая мода','третий этаж',799843475,10);
insert into lab8.shop(id_N,ssname,specialization,place,phone_number,time_work)
values(8,'obi','предметы быта','первый этаж',795843475,10);
insert into lab8.shop(id_N,ssname,specialization,place,phone_number,time_work)
values(9,'kari','обувь','третий этаж',767843475,10);
insert into lab8.shop(id_N,ssname,specialization,place,phone_number,time_work)
values(10,'Levis','обувь','второй этаж',799855475,10);