create database CollegeDB;
use collegedb;
create table  students(
student_id INT primary key
AUTO_INCREMENT,
first_name VARCHAR(50),
LAST_name VARCHAR(50),
dob DATE 
);
CREATE TABLE courses(
course_ID INT primary key
AUTO_INCREMENT,
course_name varchar(100) unique,
duration_weeks INT NOT NULL
);

CREATE TABLE ORDERS(
Order_id INT PRIMARY KEY 
AUTO_INCREMENT,
customer_name varchar(100),
order_date DATE DEFAULT (CURRENT_DATE)
);
create TABLE BOOKS(
ISBN VARCHAR(20) UNIQUE,
title varchar(100),
price decimal (7,2) check (price>0)
);

create table employees (
emp_id INT PRIMARY KEY
AUTO_INCREMENT,
email varchar(100) UNIQUE,
salary DECIMAL(10,2) DEFAULT 25000);


#SECTION 3


ALTER TABLE students
ADD COLUMN gender ENUM('Male', 'Female', 'Other') NOT NULL;

desc employee

#ALTER TABLE employees
#MODIFY salary INTEGER ;
use collegedb;
alter table  students drop column dob;



#section 4
desc employees;
update  employees set salary="55000" where emp_id=2;

desc orders;
USE collegedb ;
INSERT INTO orders(Order_id,customer_name,order_date)
VALUES("3","GVYGGT","2015-12-23"),
("4","SDBDGYT","2026-12-23");
SELECT*FROM orders;

delete from orders where Order_id=4;
SELECT*FROM orders;