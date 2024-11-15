create database emp;
use emp;
create table dept(Dno varchar(20) primary key,Dname varchar(20),Dloc varchar(20));

create table employee(empno varchar(20) primary key,ename varchar(20),mgr_no varchar(20),hiredate date,sal varchar(20),Dno varchar(10), foreign key(Dno) references dept(Dno));

create table project(pno varchar(20) primary key,ploc varchar(20),pname varchar(20));

truncate table employee;

create table assigned(empno varchar(20) ,pno varchar(20) ,job_role varchar(20),primary key(empno,pno), foreign key(empno) references employee(empno), foreign key(pno) references project(pno));

create table incentive(empno varchar(20) ,incentive_date date ,primary key(empno,incentive_date),incentive_amount varchar(20), foreign key(empno) references employee(empno));

insert into dept values(1,"CS","Bengaluru"),(2,"technical","Mysuru"),(3,"marketing","Bengaluru"),(4,"producer","hyderabad"),(5,"testing","mysuru");

insert into employee values("e1","guru","m1","2022-07-08",30000,5),("e2","prajwal","m1","2022-06-08",35000,1),("e3","lokesh","m2","2023-07-21",45000,2),("e4","loith","m3","2022-10-03",39000,4),("e5","tarun","m3","2021-07-08",50000,5);

insert into project values("P1","Bengaluru","AI"),("P2","HOSPETE","EXPENC TRACKER"),("P3","mysuru","ADAS"),("P4","Bengaluru","chatbot"),("P5","hyderabad","link");

insert into assigned values("e1","P2","DEVELOPER"),("e2","P2","TESING"),("e3","P4","DEVELOPER"),("e4","P4","marketing"),("e5","P5","DEVELOPER");

insert into incentive values("e1","2022-09-6",20000),("e2","2023-06-09",2000),("e3","2023-09-12",6000),("e4","2023-01-23",6000),("e5","2022-09-06",2000);

select empno
from assigned a 
inner join project p
on p.pno=a.pno
where p.ploc in("Bangaluru","mysuru","hyderabad");


select empno
from incentive i
where empno not in(select empno from employee e where e.empno=i.empno);

select e.ename , e.empno,d.Dname,a.job_role,d.Dloc,p.ploc
from employee e, dept d, assigned a,project p
where (e.Dno=d.Dno and e.empno=a.empno and a.pno=p.pno and p.ploc=d.Dloc);

select e.ename,a.pno
from employee e,assigned a
where e.empno=a.empno;

select e.ename,i.incentive_amount,sum(incentive_amount)
from employee e, incentive i
where e.empno=i.empno
group by e.ename;

select p.pname,p.ploc,e.ename
from project p,assigned a,employee e
where p.pno=a.pno and a.empno=e.empno ;

select d.Dname,count(e.empno)
from dept d,employee e
where d.Dno=e.Dno
group by d.Dname;

select e.ename 
from employee e
where e.empno not in(select empno from assigned);

select * from assigned;

select ename,mgr_no
from employee
where mgr_no="m1";
