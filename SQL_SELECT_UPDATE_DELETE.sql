use practice ;
show tables ;

-- SELECT command used to fetch data
select * from customer ;
select * from customer where pin_code = 12345 ;
select * from customer where country in ( "USA" , "India" ) ;
select user_name , pin_code from customer where pin_code = 54321 ;
select distinct pin_code from customer;
select distinct country from customer where customer_id between 10 and 90 ;
select distinct pin_code , country from customer ;
select distinct country , pin_code , customer_id from customer ;

-- UPDATE command used to modify/update data
update customer set user_name = "Trishansh" where customer_id = 2 ; 
update customer set user_name = "John Doe" , pin_code = 12345 where customer_id = 2 ;

start transaction;
update customer set user_name = "ERROR" ;
rollback ;

-- DELETE command used to delete data from table or delete table itself 
delete from customer where customer_id = 2 ;
start transaction ;
delete from customer ; 
select * from customer ;
rollback ;
select * from customer ;
