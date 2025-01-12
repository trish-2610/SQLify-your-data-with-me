use practice ;        

select * from employees ;

select * from employees e 
join employees m 
where e.manager_id = m.employee_id ;

select e.employee_id , e.first_name , e.last_name , e.manager_id , m.employee_id , m.first_name , m.last_name , m.manager_id
from employees e 
join employees m
where e.manager_id = m.employee_id ;

create table emp1 (
  employee_id int primary key ,
  employee_name varchar(50) not null ,
  manager_id int 
  -- foreign key (manager_id) references emp(employee_id) 
);

Insert into emp1(employee_id,employee_name,manager_id) values(1,"Ram",4);
Insert into emp1(employee_id,employee_name,manager_id) values(2,"Shyam",7);
Insert into emp1(employee_id,employee_name,manager_id) values(3,"Ritu",7);
Insert into emp1(employee_id,employee_name,manager_id) values(4,"Aaryan",3);
Insert into emp1(employee_id,employee_name,manager_id) values(5,"Khushi",7);
Insert into emp1(employee_id,employee_name,manager_id) values(6,"Aaditya",3);
Insert into emp1(employee_id,employee_name,manager_id) values(7,"Chetna",null);
Insert into emp1(employee_id,employee_name,manager_id) values(8,"Arjun",4);

select * from emp1;

select * from emp1 e1 join emp1 m 
where e1.manager_id = m.employee_id ;

select e.employee_id , e.employee_name , e.manager_id , m.employee_id , m.employee_name as employee_manager_name , m.manager_id as employee_manager_id 
from emp1 e join emp1 m where e.manager_id = m.employee_id ;