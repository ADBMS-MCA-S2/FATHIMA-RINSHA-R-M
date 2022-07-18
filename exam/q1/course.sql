create database colleges;
use colleges;
create table Student(rollno int primary key,
name varchar(20),
address varchar(20),
totalmarks int);
create table Admission(rollno int,
cid int,
sem int,
primary key(rollno,cid),
foreign key(rollno) references Student(rollno),
foreign key(cid) references Course(cid));

create table Course(cid int primary key,
coursename varchar(20),
fees int);

insert into Student values(101,"rinhsa","kozhikode",90);
insert into Student values(102,"prashant","thrissur",100);
insert into Student values(103,"gokul","kochi",70);
insert into Student values(104,"priya","kozhikode",75);
insert into Student values(105,"karthik","kasargod",99);

insert into Course values(200,"mca",15000);
insert into Course values(201,"bca",20000);

insert into Admission values(101,200,2);
insert into Admission values(102,201,1);
insert into Admission values(103,200,2);
insert into Admission values(104,201,2);
insert into Admission values(105,200,1);
insert into Admission values(105,201,1);

select * from Student;
select * from Course;
select * from Admission;

create view abc as select name from Student,Admission,Course
 where Student.rollno=Admission.rollno and Course.cid=Admission.cid and coursename="mca";
select * from abc;

select sum(fees) as total from Course where cid in(select cid from Admission where rollno=105);

select coursename,count(rollno) as total from Course,Admission  where Course.cid=Admission.cid  group by coursename;

