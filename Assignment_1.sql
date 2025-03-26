create database School;
use school;

create table STUDENT (Roll_No int , Name varchar(30) , Mark varchar(10) , Grade varchar(10));

select * from student;

insert into student (Roll_No, Name, Mark) values
(1,"sajan",10,"B"),
(2,"baby",25,"A");

delete from student where Grade;

set sql_safe_updates = 0;

alter table student
drop column Grade;