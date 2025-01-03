show databases;
use practice;
show tables ;
drop table person;

-- Constraints - NOT NULL , UNIQUE , CHECK , PRIMARY KEY 
-- PRIMARY KEY = NOT NULL + UNIQUE
create table person(
 id int not null ,
 name varchar(255) not null , 
 age int not null
 );
select * from person;
Insert into person(id,name,age) values(1,"A",10);
Insert into person(id,name,age) values(1,NULL,10); -- ERROR because column name cannot be null
Insert into person(id,name,age) values(NULL,"B",12); -- ERROR becuase column id cannot be null 

create table person1(
 id int not null ,
 age int
 );
 
Insert Into person1(id,age) values(1,NULL);
select * from person1;

Alter table person1 
Modify column age int not null;

drop table person1;

create table person1(
 id int not null ,
 age int
 );
 
 Insert into person1(id,age) values(1,NULL); -- error because we have modified the column age  
 Insert into person1(id,age) values(1,10);
 
 select * from person1;
 
 
 create table person2(
  id int not null,
  name varchar(255) not null,
  age int not null,
  city varchar(255) not null);
  
Insert into person2(id,name,age,city) values(1,"A",12,"Indore");
select * from person2;
Insert into person2(id,name,age) values(1,"A",12); -- error because city is set as not null and no value is given for it ( can't be null )

alter table person2 
modify column city varchar(255) default "INDORE";

Insert into person2(id,name,age) values(1,"A",12);
select * from person2;

alter table person2
modify column city varchar(255) default "Ghaziabad";

Insert into person2(id,name,age,city) values(2,"B",10,"Betul");
select * from person2;
Insert into person2(id,name,age) values(3,"C",12); -- by default city is set to Ghaziabad
select * from person2;


create table person3(
 id int not null,
 name varchar(255) not null 
 );
 
Insert into person3(id,name) values(1,"A");
select * from person3;
Insert into person3(id,name) values(1,"A");
select * from person3;
-- Same entry in id creates confusion 
-- So we make in unique

drop table person3;
create table person3(
 id int not null,
 name varchar(255) not null 
 );
 
Alter table person3 
Modify column name varchar(255) unique;

Insert into person3(id,name) values(1,"A");
select * from person3; 
Insert into person3(id,name) values(2,"A"); -- error ( duplicate entry for name column "A" )
Insert into person3(id,name) values(2,"B"); -- No error 


create table person5(
 id int not null,
 age int not null,
 check(age >= 18)
);

Insert into person5(id,age) values(1,20); -- No error 
Insert into person5(id,age) values(1,10); -- error becuase ( age < 18 )


create table person6(
 id int primary key ,-- not null unique 
 name varchar(255) not null 
 );
 
Insert into person6(id,name) values (1,"A");
Insert into person6(id,name) values (1,"B"); -- error primary key(unique)
Insert into person6(id,name) values (null, "C"); -- error primary key(not null)
