-- SQL PROJECT 2:
/* Question:
Once upon a time, in a small town called SQLville, there was a renowned bookstore named "Books & Bytes."
The store had a vast collection of books, ranging from classic literature to modern technology.
As part of their college curriculum, the students of SQLville University were tasked with learning the basics of MySQL and database management.
To make the learning experience more interactive and practical, the bookstore decided to collaborate with the university and create a hands-on assignment for the students.
Assignment:
You are a student studying computer science at SQLville University, and you have recently started your journey into the world of databases and SQL.
The assignment given to you by "Books & Bytes" is as follows:
Create a database named "BooksDB" to store information about the bookstore's collection of books.
Design a table called "Books" to store the details of each book, including the book's title, author, genre, publication year, and price.
Insert at least five books into the "Books" table, ensuring that each book has unique information for all columns.

Write SQL queries to perform the following tasks:
a. Retrieve all the books from the database.
b. Retrieve the details of a book based on its title.
c. Update the price of a book.
d. Delete a book from the database based on its title.

Write a query to calculate and display the average price of all the books in the database.
Bonus Challenge: Create a new table called "Authors" to store information about the authors of the books.
Establish a relationship between the "Books" table and the "Authors" table using appropriate constraints (such as foreign key) and perform a query to retrieve books along with their respective authors.
Your task is to complete the assignment by writing the required SQL queries and demonstrating your understanding of basic MySQL concepts.
Remember to follow best practices for naming conventions, data types, and query optimization. */

create database BooksDB;
use BooksDB;
create table Books(
S_No int Primary Key,
Book_Title varchar(25),
Author_Name varchar(25),
Genre varchar(25),
Publication int,
Price int);

create table Authors(
Se_No int Primary Key,
Author_Age int,
Author_Native varchar(15),
Author_Name varchar(25),
S_No int,
Constraint foreign key(S_No) references Books(S_No)
on delete set null);

insert into Books values(1,"Cindrella","Walter Elias Disney","Cartoon",1997,5000);
insert into Books values(2,"Zombie","Hitler","Horror",1987,500);
insert into Books values(3,"Life of Pie","Mary Comb","Life lesson",2007,2000);
insert into Books values(4,"Life of Lord","Prince Jack","Fiction",1907,4000);
insert into Books values(5,"World tour","William","action",2002,5500);
insert into Books values(6,"Poppins","Wright Brothers","Cartoon",2010,3000);

-- a. Retrieve all the books from the database.
select * from Books;

-- b. Retrieve the details of a book based on its title.
select * from Books where Book_Title like "Life%";

-- c. Update the price of a book.
update Books set Price=10000;
select * from Books;

-- d. Delete a book from the database based on its title.
delete from Books where Author_Name="Hitler";


insert into Authors values(1,20,"Dubai","William",5);
insert into Authors values(2,25,"Bombay","Zombie",2);
insert into Authors values(3,30,"Sidney","Walter Elias Disney",1);
insert into Authors values(4,40,"Darjiling","Wright Brothers",6);

Select * from Books;
select * from Authors;

-- Inner Join
Select * from Authors
inner join Books
on Authors.S_No=Books.S_No
order by Author_Age;

-- Left Join
Select * from Authors
left join Books
on Authors.S_No=Books.S_No
order by Author_Age;

-- Right Join
Select * from Authors
right join Books
on Authors.S_No=Books.S_No
order by Author_Age;

drop database BooksDB;
