Use practice ;

select * from employees ;
select * from orders ;

-- Left Joins 
select * from employees e Left Join orders o 
on e.employee_id = o.employee_id ;

select * from orders o Left join employees e 
on o.employee_id = e.employee_id ;

-- Multiple Left Joins 
select * from orders o Left join employees e on o.employee_id = e.employee_id Left join departments d
on e.department_id = d.department_id ;

-- with WHERE 
select * from departments d Left Join employees e 
on d.department_id = e.department_id where e.employee_id > 13 ;
