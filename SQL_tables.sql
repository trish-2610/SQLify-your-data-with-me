-- to show existing databases 
show databases ;

-- deleting database 
drop database practice ;

-- creating database 
create database practice ;


show databases;

-- to use database
use practice;

-- to show tables in database 
show tables ;

-- creating table 
create table person(
 id int ,
 name varchar(255),
 phone int
 );
 
show tables ;

-- fetching all data from table 
select * from person ;

-- Inserting values in table 
insert into person(id, name , phone) values(1,"Trishansh",1234);
insert into person(name,id,phone) values("Sahane",2,3421);
-- insert into person(name,id,phone) values(1,2344,"A"); ERROR
-- insert into person(id , name , phone) values("abc","A",1234); ERROR Incorrect Integer value 
insert into person(id ,name , phone) values("10","A",1233);
-- NO ERROR because of implicit conversion from string to integer 
