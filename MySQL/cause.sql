#clauses and operator 
use sql_batch;
create table users(
id INT primary key,
name varchar(50),
age int,
city varchar(20),
email varchar(50)
);

insert into users(id,name,age,city,email)
values(1,"aditya","33","akola","aditya@gmailcom"),
(2,"sam","30","manchester","massam@gmailcom"),
(3,"adit","33","akola");


insert into users(id,name,age ,city,email)
values(4,"jack","23","buckinghum","null");
select * from users;

# where - 
select *  from users where age>30;
select * from users where id>2;
select * from users where name="aditya";
select * from users where id =2;



# like 


select * from users where  name like 's%';
select * from users where name like '%a';

select * from users where city like 'akola';
select * from users where city like 'manchester';
select *from users where email like 'null';
select * from users  where name like 'sam';



 # AND 
 select * from users;
select * from users where  age > 25 and city ='akola';
select * from users where age>20 and city = 'manchester';
select *from users  where age>20 and city = 'buckinghum';
select * from users where age >20 and email= 'null';




# OR 

select * from users where age>20 or email='null';
select *from users where name='aditya' or age=23;
select * from users where  name='adit' or email='masam@gmail.com';
select * from users where name='aditya';


#  NOT
SELECT * from users where not city= 'akola' ;

# IN 
 SELECT* FROM USERS where  city  in('akola');
 select*from users where city like 'akola';
 select * from users where name in ('aditya');
 select * from users where  city in('buckinghum');
 select * from users where city in ('akola','buckinghum');
 
 
 # beetweeen 
 select* from users where age between 20 and 30;
 
 
 # isnull
 
 select* from users where email is not  null;
 
 

select * from users where 
email is null;



#DISTINCT

select distinct city from users ;
select distinct name from users;
select distinct age from users;
select distinct email from users;



#ORDER - BY ASC AND desc ORDER

SELECT * FROM  USERS ORDER BY AGE DESC;
SELECT * FROM USERS ORDER BY AGE ASC;
SELECT * FROM USERS ORDER  BY  NAME DESC;
SELECT * FROM USERS ORDER  BY NAME ASC;
SELECT* FROM USERS ORDER BY EMAIL DESC;
SELECT* FROM  USERS ORDER BY EMAIL ASC;
SELECT * FROM USERS ORDER BY ID DESC;



# LIMIT 

SELECT * FROM USERS ORDER BY AGE DESC LIMIT 1;  
SELECT * FROM USERS ORDER  BY NAME ASC LIMIT 3; 
SELECT*FROM USERS  ORDER BY EMAIL DESC LIMIT 3;

# ALIAS

SELECT NAME AS EMPLOYEE_NAME FROM USERS;
SELECT CITY AS CITY_NAME FROM USERS;


select name as region_name from users;
select CITY AS HOME_BIRTH_PLACE FROM USERS;
SELECT * FROM USERS;
SELECT EMAIL AS PROFFESIONAL_DEGREE FROM USERS;
SELECT  ID AS ID_NAME FROM USERS;


# COUNT()




SELECT COUNT(*) AS TOTAL_USERS FROM USERS WHERE 





 