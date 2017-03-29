create schema cab_service;
set search_path to cab_service ;

create table availability(vehicle_id int primary key,response varchar(3));


create table discount(dis_id int primary key,dis_amount int);

create table driver(did int primary key,dname varchar(20),gender char(1),age smallint,contact int,address varchar(50));

create table vehicle(vid int primary key references availability(vehicle_id),reg_number int,v_name varchar(20),cost_per_km int,driver_id int references driver(did));

create table customer(cid int primary key,name varchar(20),gender char(1),email_id varchar(40),age smallint,c_address varchar(50),vehicle_id int references vehicle(vid));

create table bill(bid int primary key,discount_id int references discount(dis_id),total_amount int,customer_id int references customer(cid));

create table journey(veh_id int primary key references vehicle(vid),j_date date,source varchar(15),destination varchar(15),customer_id int references customer(cid));

insert into discount values(1,10);
insert into discount values(2,20);
insert into discount values(3,30);
insert into discount values(4,40);
insert into discount values(5,50);
insert into discount values(6,60);
insert into discount values(7,70);
insert into discount values(8,100);



insert into availability values(101,'y');
insert into availability values(102,'y');
insert into availability values(103,'y');
insert into availability values(104,'n');
insert into availability values(105,'n');
insert into availability values(106,'n');
insert into availability values(107,'y');
insert into availability values(108,'y');
insert into availability values(109,'y');
insert into availability values(110,'n');



insert into driver values(201,'rakesh','m',30,99125,'sec-21');
insert into driver values(202,'mukesh','m',35,99126,'sec-23');
insert into driver values(203,'suresh','m',38,99127,'sec-24');
insert into driver values(204,'lalit','m',23,99128,'sec-12');
insert into driver values(205,'savita','f',45,99129,'sec-13');
insert into driver values(206,'babli','f',39,99130,'sec-16');
insert into driver values(207,'aditya','m',19,99131,'sec-11');
insert into driver values(208,'rahul','m',23,99132,'sec-21');
insert into driver values(209,'geeta','m',32,99133,'sec-22');
insert into driver values(210,'radhe','m',27,99134,'sec-28');




insert into vehicle values(101,301,'bmw',8,210);
insert into vehicle values(102,302,'maruti',9,209);
insert into vehicle values(103,303,'bmw',6,208);
insert into vehicle values(104,304,'bmw',8,207);
insert into vehicle values(105,305,'bmw',7,206);
insert into vehicle values(106,306,'wagonr',8,205);
insert into vehicle values(107,307,'bmw',8,204);
insert into vehicle values(108,308,'bmw',12,203);
insert into vehicle values(109,309,'xuv',8,202);
insert into vehicle values(110,310,'bmw',13,201);




insert into customer values(1,'vikas','m','201452047@iiitvadodra.ac.in',18,'petahpur',101);
insert into journey values(101,'2016-01-01','pethapur','sec-21',1);
insert into bill values(501,1,400,1);

insert into customer values(2,'lalit','m','201452049@iiitvadodra.ac.in',21,'petahpur',102);
insert into journey values(102,'2016-01-02','pethapur','sec-21',2);
insert into bill values(502,2,450,2);

insert into customer values(3,'aniket','m','201452027@iiitvadodra.ac.in',20,'petahpur',103);
insert into journey values(103,'2016-06-05','sec-21','sec-29',3);
insert into bill values(503,5,420,3);

insert into customer values(4,'sandeep','m','201452031@iiitvadodra.ac.in',25,'indrora',104);
insert into journey values(104,'2016-03-08','indrora','gh-5',4);
insert into bill values(504,6,3000,4);



