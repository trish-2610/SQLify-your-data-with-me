-- showing databases 
show databases ;

-- using database
use practice ;

-- creating table 
create table Student_info (
name varchar(255),
age int,
fathername varchar(255)
);
-- show tables 
show tables;

-- fetch data from table 
select * from Student_info;

create table Transcation (
transaction_status boolean,
trascation_amount int
);

select * from Transcation ;
select trascation_amount from Transcation ;


