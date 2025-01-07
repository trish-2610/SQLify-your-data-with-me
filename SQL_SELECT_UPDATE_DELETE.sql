use practice ;
show tables ;

select * from customer ;

select * from customer where pin_code = 12345 ;
select * from customer where country in ( "USA" , "India" ) ;

select user_name , pin_code from customer where pin_code = 54321 ;

select distinct pin_code from customer;
select distinct country from customer where customer_id between 10 and 90 ;
select distinct pin_code , country from customer ;
select distinct country , pin_code , customer_id from customer ;

update customer set user_name = "Trishansh" where customer_id = 2 ; 
update customer set user_name = "John Doe" , pin_code = 12345 where customer_id = 2 ;

start transaction;
update customer set user_name = "ERROR" ;
rollback ;

delete from customer where customer_id = 2 ;
start transaction ;
delete from customer ; 
select * from customer ;
rollback ;
select * from customer ;