use practice ;

select * from employees ;
select * from orders ;

select * from employees e Right Join orders o
on e.employee_id = o.employee_id ;

Insert into orders(order_id ,employee_id , order_name , order_price, quantity , order_date) values 
(49 , 45 , '30 Tablets Calcium Bottle' , 299.50 , 2 , '2024-08-11' ) ;

select * from employees e Right Join orders o
on e.employee_id = o.employee_id Left Join departments d on d.department_id = e.department_id 
where e.employee_id > 50 ; 