-- SQL PROJECT 1:
/* Question:
Create a database named "University" and switch to that database.
Create a table named "Students" with the following columns:
student_id (INT, primary key)
student_name (VARCHAR(50))
student_age (INT)
student_major (VARCHAR(50))
Insert at least 5 records into the "Students" table with different student details.
*/

create database University;
use University;
create table Students(
student_id int, 
student_name varchar(50),
student_age int,
student_major varchar(50),
primary key(student_id));
describe Students;
insert into Students values(1,"Mahi",22,"BSC");
insert into Students values(2,"Mano",19,"ECE");
insert into Students values(3,"Sri",19,"ECE");
insert into Students values(4,"Mani",20,"CSC");
insert into Students values(5,"Mughil",20,"EEE");
insert into Students values(6,"Ravi",19,"BME");
insert into Students values(7,"Kaavi",21,"Civil");

-- Write a query to retrieve all records from the "Students" table.
select * from Students;

-- Write a query to retrieve the names of all students majoring in "Computer Science".
select * from Students where student_major ="CSC";

-- Write a query to retrieve the details of the oldest student in the "Students" table.
select * from Students order by student_age desc limit 1;

-- Write a query to update the major of a student with a specific student_id.
update Students set student_major="BME" where student_id=2;

-- Write a query to delete a student with a specific student_id from the "Students" table.
delete from Students where student_name="Mahi";

drop database University;
