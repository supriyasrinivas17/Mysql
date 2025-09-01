create database spec;
use spec;

create table students(
name char(250), Rollnumber int(50), section varchar(20));
 show tables;
 CREATE TABLE markss (
    sub_name VARCHAR(255),
    credits INT
);
show tables;


INSERT INTO students (name, Rollnumber, section) VALUES
('supriya', '7208', 'a'),
('tej', '7229', 'a'),
('vamshi', '7222', 'a'),
('mayur', '7217', 'a');
select * from students;
insert into markss(sub_name,credits) values ("java",2),
("phy",3),("chem",3),("maths",3);

alter table markss add column faculty varchar(50);
select * from markss;
alter table markss modify column sub_name char(50);
alter table markss drop column faculty ;
select * from markss;
alter table markss rename column sub_name  to course_name;

drop table markss;


truncate table markss;


