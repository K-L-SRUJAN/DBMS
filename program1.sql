create database insurance_419;
use insurance_419;
drop database srujan_419;
create table person(driver_id varchar(10),name varchar(20),address varchar(30),primary key(driver_id));

desc person;

create table car(reg_num varchar(10),model varchar (10),year int,primary key(reg_num));

create table accident(report_num int,accident_date date,location varchar(20), primary key(report_num));

create table owns(driver_id varchar (10),reg_num varchar(10),primary key(driver_id,reg_num),foreign key(driver_id) references person(driver_id),foreign key(reg_num) references car(reg_num));

create table participated(driver_id varchar(10),reg_num varchar(10),
report_num int,damage_amount int,
primary key(driver_id,reg_num,report_num),
foreign key(driver_id) references person(driver_id),
foreign key(reg_num) references car(reg_num),
foreign key(report_num) references accident(report_num));

insert into person values("A04","Venu","N R Colony");
select *from person;

insert into car values("KA041702","Audi",2005);

select *from car;

insert into owns value("A05","KA041702");
select *from owns;

insert into accident values(15,"2004-03-05","kanakpura road");
select *from accident;

insert into participated values("A05","KA041702",15,5000);
select *from participated;

update participated set damage_amount=25000 where reg_num="KA053408";

select count(distinct driver_id) from participated a,accident b where a.report_num=b.accident_date like '%08';

insert into accident values(16,'2008-03-08',"Domlur");

