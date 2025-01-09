use practice ;

CREATE TABLE Jobs (
    job_id INT PRIMARY KEY,
    job_title VARCHAR(100) not null,
    min_salary DECIMAL(10, 2) not null,
    max_salary DECIMAL(10, 2) not null
);

CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100) not null
);

CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    phone_number VARCHAR(20) NOT NULL UNIQUE,
    hire_date DATE NOT NULL,
    job_id INT NOT NULL,
    salary DECIMAL(10, 2) NOT NULL,
    manager_id INT,
    department_id INT NOT NULL,
    FOREIGN KEY (job_id) REFERENCES Jobs(job_id),
    FOREIGN KEY (department_id) REFERENCES Departments(department_id),
    FOREIGN KEY (manager_id) REFERENCES Employees(employee_id)
);

create table orders(
order_id int primary key,
employee_id int not null,
order_name varchar(255) not null ,
order_price decimal(10,2) not null,
quantity int not null,
order_date date not null,
foreign key(employee_id ) references employees ( employee_id)
);

INSERT INTO Jobs (job_id , job_title, min_salary, max_salary) VALUES
(1,'Software Developer', 60000, 120000),
(2,'Data Analyst', 50000, 90000),
(3,'Project Manager', 80000, 150000),
(4,'HR Specialist', 40000, 70000),
(5,'Accountant', 45000, 85000),
(6,'Marketing Manager', 55000, 105000),
(7,'Sales Executive', 30000, 60000),
(8,'Customer Support', 25000, 45000),
(9,'Business Analyst', 60000, 110000),
(10,'IT Support', 35000, 65000);

INSERT INTO Departments (department_id , department_name) VALUES
(1,'IT'),
(2,'HR'),
(3,'Finance'),
(4,'Marketing'),
(5,'Sales'),
(6,'Customer Support'),
(7,'Operations'),
(8,'R&D'),
(9,'Logistics'),
(10,'Administration');

INSERT INTO Employees (employee_id , first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id) VALUES
(1,'John', 'Doe', 'john.doe@example.com', '1234567890', '2020-01-15', 1, 95000, NULL, 1);
INSERT INTO Employees (employee_id ,first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id) VALUES
(2,'Jane', 'Smith', 'jane.smith@example.com', '1234567809', '2021-03-22', 2, 70000, 1, 1),
(3,'Robert', 'Johnson', 'robert.johnson@example.com', '1234567089', '2019-11-12', 3, 130000, NULL, 3),
(4,'Emily', 'Davis', 'emily.davis@example.com', '1234560789', '2020-06-10', 4, 50000, 2, 2),
(5,'Michael', 'Brown', 'michael.brown@example.com', '1234506789', '2018-09-08', 5, 75000, 3, 3),
(6,'Jessica', 'Williams', 'jessica.williams@example.com', '1234056789', '2022-02-28', 6, 95000, 4, 4),
(7,'David', 'Miller', 'david.miller@example.com', '1230456789', '2017-07-01', 7, 55000, 5, 5),
(8,'Sarah', 'Wilson', 'sarah.wilson@example.com', '1203456789', '2021-05-15', 8, 40000, 6, 6),
(9,'James', 'Taylor', 'james.taylor@example.com', '1023456789', '2016-04-22', 9, 85000, 7, 7),
(10,'Patricia', 'Anderson', 'patricia.anderson@example.com', '1234567980', '2019-10-30', 10, 63000, 8, 8),
(11,'Linda', 'Martinez', 'linda.martinez@example.com', '1234569780', '2019-03-05', 1, 98000, 1, 1),
(12,'William', 'Garcia', 'william.garcia@example.com', '1234596780', '2018-04-22', 3, 125000, 3, 3),
(13,'Barbara', 'Martinez', 'barbara.martinez@example.com', '1234956780', '2020-02-10', 2, 72000, 1, 1),
(14,'Steven', 'Moore', 'steven.moore@example.com', '1239456780', '2017-09-12', 1, 90000, NULL, 1),
(15,'Elizabeth', 'Jackson', 'elizabeth.jackson@example.com', '1293456780', '2021-11-22', 4, 51000, 2, 2),
(16,'Charles', 'Thompson', 'charles.thompson@example.com', '1923456780', '2019-07-28', 5, 76000, 3, 3),
(17,'Susan', 'White', 'susan.white@example.com', '1234568970', '2022-01-15', 6, 96000, 4, 4),
(18,'Christopher', 'Harris', 'christopher.harris@example.com', '1234589670', '2022-01-15', 7, 58000, 5, 5),
(19,'Karen', 'Martin', 'karen.martin@example.com', '9634941005', '2018-10-09', 8, 43000, 6, 6),
(20,'Matthew', 'Thompson', 'matthew.thompson@example.com', '9832064532', '2020-07-02', 9, 87000, 7, 7),
(21,'Betty', 'Martinez', 'betty.martinez@example.com', '9021094582', '2019-12-22', 10, 64000, 8, 8),
(22,'Donald', 'Anderson', 'donald.anderson@example.com', '2342342341', '2017-06-12', 1, 98000, 1, 1),
(23,'Dorothy', 'Robinson', 'dorothy.robinson@example.com', '7645902109', '2016-08-01', 2, 71000, 1, 1),
(24,'Brian', 'Clark', 'brian.clark@example.com', '9634598765', '2020-11-18', 3, 131000, 3, 3),
(25,'Helen', 'Lewis', 'helen.lewis@example.com', '6729825641', '2021-09-22', 4, 52000, 2, 2),
(26,'George', 'Walker', 'george.walker@example.com', '1045027492', '2018-11-18', 5, 77000, 3, 3),
(27,'Deborah', 'Hall', 'deborah.hall@example.com', '8921458090', '2019-04-28', 6, 97000, 4, 4),
(28,'Paul', 'Allen', 'paul.allen@example.com', '3219870345', '2020-02-11', 7, 59000, 5, 5),
(29,'Nancy', 'Young', 'nancy.young@example.com', '9255295299', '2021-07-15', 8, 44000, 6, 6),
(30,'Kevin', 'Hernandez', 'kevin.hernandez@example.com', '9488499849', '2019-03-12', 9, 88000, 7, 7),
(31,'Laura', 'King', 'laura.king@example.com', '4564564568', '2016-02-02', 10, 65000, 8, 8),
(32,'Jason', 'Wright', 'jason.wright@example.com', '8907890789', '2019-09-05', 1, 96000, 1, 1),
(33,'Sarah', 'Lopez', 'sarah.lopez@example.com', '8899550044', '2018-10-15', 3, 129000, 3, 3),
(34,'Daniel', 'Hill', 'daniel.hill@example.com', '9997772211', '2020-06-25', 2, 73000, 1, 1),
(35,'Amy', 'Scott', 'amy.scott@example.com', '9993331110', '2021-03-12', 4, 53000, 2, 2),
(36,'Eric', 'Green', 'eric.green@example.com', '7773332220', '2018-07-11', 5, 78000, 3, 3),
(37,'Julie', 'Adams', 'julie.adams@example.com', '8889992221', '2017-08-28', 6, 98000, 4, 4),
(38,'Larry', 'Baker', 'larry.baker@example.com', '8576668901', '2019-11-23', 7, 60000, 5, 5),
(39,'Megan', 'Gonzalez', 'megan.gonzalez@example.com', '8198945623', '2021-02-18', 8, 45000, 6, 6),
(40,'Richard', 'Nelson', 'richard.nelson@example.com', '9410525061', '2020-03-30', 9, 89000, 7, 7),
(41,'Melissa', 'Carter', 'melissa.carter@example.com', '9634802050', '2019-06-02', 10, 66000, 8, 8),
(42,'Charles', 'Mitchell', 'charles.mitchell@example.com', '9213450981', '2017-04-11', 1, 97000, 1, 1),
(43,'Elizabeth', 'Perez', 'elizabeth.perez@example.com', '3459876012', '2018-09-22', 3, 126000, 3, 3),
(44,'James', 'Roberts', 'james.roberts@example.com', '4587903216', '2021-01-10', 2, 74000, 1, 1),
(45,'Dorothy', 'Turner', 'dorothy.turner@example.com', '8907265341', '2019-07-15', 4, 54000, 2, 2),
(46,'Andrew', 'Phillips', 'andrew.phillips@example.com', '7890654321', '2017-02-01', 5, 79000, 3, 3),
(47,'Pamela', 'Campbell', 'pamela.campbell@example.com', '6789054321', '2016-09-20', 6, 99000, 4, 4),
(48,'Jeffrey', 'Parker', 'jeffrey.parker@example.com', '5678904321', '2018-06-12', 7, 61000, 5, 5),
(49,'Angela', 'Evans', 'angela.evans@example.com', '9870789091', '2019-02-18', 8, 46000, 6, 6),
(50,'Ryan', 'Edwards', 'ryan.edwards@example.com', '9972034829', '2020-12-22', 9, 90000, 7, 7),
(51,'Rebecca', 'Collins', 'rebecca.collins@example.com', '6790783421', '2021-05-12', 10, 67000, 8, 8),
(52,'Jacob', 'Stewart', 'jacob.stewart@example.com', '2389456104', '2019-11-25', 1, 98000, 1, 1),
(53,'Laura', 'Sanchez', 'laura.sanchez@example.com', '7890634789', '2018-07-09', 3, 128000, 3, 3),
(54,'Aaron', 'Morris', 'aaron.morris@example.com', '9087457904', '2016-05-15', 2, 75000, 1, 1),
(55,'Jessica', 'Rogers', 'jessica.rogers@example.com', '9812345212', '2017-03-18', 4, 55000, 2, 2),
(56,'Joshua', 'Reed', 'joshua.reed@example.com', '8096655321', '2020-08-18', 5, 80000, 3, 3),
(57,'Ashley', 'Cook', 'ashley.cook@example.com', '9087765432', '2019-12-28', 6, 100000, 4, 4),
(58,'Brandon', 'Morgan', 'brandon.morgan@example.com', '9088765432', '2018-01-18', 7, 62000, 5, 5),
(59,'Emily', 'Bell', 'emily.bell@example.com', '9008765432', '2017-05-25', 8, 47000, 6, 6),
(60,'Christopher', 'Murphy', 'christopher.murphy@example.com', '8899889934', '2019-06-12', 9, 91000, 7, 7),
(61,'Victoria', 'Bailey', 'victoria.bailey@example.com', '7733556611', '2020-03-15', 10, 68000, 8, 8),
(62,'John', 'Rivera', 'john.rivera@example.com', '8833662211', '2018-04-25', 1, 99000, 1, 1),
(63,'Nicole', 'Cooper', 'nicole.cooper@example.com', '9665544332', '2017-07-28', 3, 127000, 3, 3),
(64,'Ethan', 'Richardson', 'ethan.richardson@example.com', '9443322115', '2016-06-02', 2, 76000, 1, 1),
(65,'Olivia', 'Cox', 'olivia.cox@example.com', '8934672189', '2019-03-10', 4, 56000, 2, 2),
(66,'Austin', 'Howard', 'austin.howard@example.com', '9739736745', '2020-10-01', 5, 81000, 3, 3),
(67,'Madison', 'Ward', 'madison.ward@example.com', '1451451458', '2018-02-05', 6, 101000, 4, 4),
(68,'Mason', 'Torres', 'mason.torres@example.com', '1918264533', '2019-09-22', 7, 63000, 5, 5),
(69,'Victoria', 'Peterson', 'victoria.peterson@example.com', '8811772266', '2020-07-12', 8, 48000, 6, 6),
(70,'Justin', 'Gray', 'justin.gray@example.com', '9933884477', '2018-11-12', 9, 92000, 7, 7),
(71,'Sophia', 'Ramirez', 'sophia.ramirez@example.com', '9922883377', '2017-12-22', 10, 69000, 8, 8),
(72,'Alexander', 'James', 'alexander.james@example.com', '9911882277', '2019-02-01', 1, 100000, 1, 1),
(73,'Zachary', 'Watson', 'zachary.watson@example.com', '1991288202', '2020-11-15', 3, 128000, 3, 3),
(74,'Hannah', 'Brooks', 'hannah.brooks@example.com', '1221344356', '2017-04-18', 2, 77000, 1, 1),
(75,'Lily', 'Sanders', 'lily.sanders@example.com', '1728394056', '2018-05-28', 4, 57000, 2, 2),
(76,'Jacob', 'Ross', 'jacob.ross@example.com', '1324354657', '2016-08-15', 5, 82000, 3, 3),
(77,'Isabella', 'Price', 'isabella.price@example.com', '1029384756', '2019-07-22', 6, 102000, 4, 4),
(78,'Oliver', 'Hughes', 'oliver.hughes@example.com', '1928374650', '2020-02-05', 7, 64000, 5, 5),
(79,'Emma', 'Bennett', 'emma.bennett@example.com', '1122334455', '2018-06-30', 8, 49000, 6, 6),
(80,'Jackson', 'Wood', 'jackson.wood@example.com', '9087654321', '2017-11-12', 9, 93000, 7, 7),
(81,'Avery', 'Barnes', 'avery.barnes@example.com', '9807654321', '2019-04-28', 10, 70000, 8, 8),
(82,'Mia', 'Rogers', 'mia.rogers@example.com', '9870654321', '2016-10-12', 1, 101000, 1, 1),
(83,'William', 'Powell', 'william.powell@example.com', '9876054321', '2020-03-10', 3, 129000, 3, 3),
(84,'Amelia', 'Sullivan', 'amelia.sullivan@example.com', '9876504321', '2017-05-22', 2, 78000, 1, 1),
(85,'Lucas', 'Perry', 'lucas.perry@example.com', '9876540321', '2018-09-15', 4, 58000, 2, 2),
(86,'Ella', 'Reed', 'ella.reed@example.com', '9876543021', '2019-06-18', 5, 83000, 3, 3),
(87,'Charlotte', 'Wheeler', 'charlotte.wheeler@example.com', '9876543201', '2020-01-30', 6, 103000, 4, 4),
(88,'Harper', 'Morris', 'harper.morris@example.com', '9876543210', '2018-11-22', 7, 65000, 5, 5);

Insert into orders (order_id,employee_id , order_name , order_price , quantity , order_date ) values 
(1,65 , '30 Tablets Calcium Bottle' , 299.50 , 2 , '2024-08-10' ),
(2,32 , '30 Tablets Calcium Bottle' , 299.50 , 1 , '2024-07-27'),
(3,24 , 'Whey Protein',3999.0 , 1, '2024-08-02'),
(4,10 , '30 Capsule Vitamin D3' , 349.50 , 2 , '2024-08-12'),
(5,82 , 'Rice Cake' , 99.99 , 3 , '2024-07-30'),
(6,47 , '30 Tablets Calcium Bottle' , 299.50 , 3 , '2024-08-12' ),
(7,53 , 'Fish oil 1000mg' , 539.00 , 1 , '2024-07-03'),
(8,28 , 'Protein Dark Chocolate - 6 Bar ' , 199.00 , 3 , '2024-08-10'),
(9,32 , 'Whey Protein',3999.0 , 2, '2024-08-02'),
(10,37 , 'pre workout 1.1lb' , 2500.00, 2 , '2024-08-05'),
(11,65 , 'Whey Protein',3999.0 , 2, '2024-08-03'),
(12,12 , '30 Capsule Vitamin D3' , 349.50 , 2 , '2024-08-07'),
(13,67 , 'Fish oil 1000mg' , 539.00 , 1 , '2024-08-01'),
(14,83 , '30 Tablets Calcium Bottle' , 299.50 , 2 , '2024-07-29'),
(15,10 , '60 Tablets Calcium Bottle' , 599.60 , 1 , '2024-08-04'),
(16,32 , 'Protein Dark Chocolate - 12 Bar ' , 199.00 , 1 , '2024-08-09'),
(17,35 , 'Whey Protein',3999.0 , 1, '2024-08-02'),
(18,75 , 'Rice Cake' , 99.99 , 2 , '2024-07-28'),
(19,47 , 'Whey Protein',3999.0 , 2, '2024-08-02'),
(20,42 , '60 Tablets Calcium Bottle' , 599.60 , 2 , '2024-08-01'),
(21,30 , 'Rice Cake' , 99.99 , 3 , '2024-07-30'),
(22,74 , 'Fish oil 1000mg' , 539.00 , 1 , '2024-08-02'),
(23,16 , 'pre workout 1.1lb' , 2500.00, 1 , '2024-08-10'),
(24,42 , 'Whey Protein',3999.0 , 1, '2024-08-04'),
(25,63 , 'Rice Cake' , 99.99 , 3 , '2024-08-10'),
(26,83 , '30 Tablets Calcium Bottle' , 299.50 , 1 , '2024-08-08' ),
(27,53 , 'Whey Protein',3999.0 , 1, '2024-08-02'),
(28,19 , '30 Capsule Vitamin D3' , 349.50 , 1 , '2024-08-12'),
(29,22 , 'pre workout 1.1lb' , 2500.00, 2 , '2024-07-21'),
(30,76 , 'Whey Protein',3999.0 , 1, '2024-08-05'),
(31,72 , 'Protein Dark Chocolate - 6 Bar ' , 199.00 , 2 , '2024-08-02'),
(32,88 , '60 Tablets Calcium Bottle' , 599.60 , 1 , '2024-08-03'),
(33,82, 'Whey Protein',3999.0 , 1, '2024-08-08'),
(34,25 , '30 Capsule Vitamin D3' , 349.50 , 2 , '2024-07-22'),
(35,6 , 'Rice Cake' , 99.99 , 1 , '2024-07-22'),
(36,10 , '30 Tablets Calcium Bottle' , 299.50 , 1 , '2024-07-24'),
(37,55 , 'Protein Dark Chocolate - 6 Bar ' , 199.00 , 1 , '2024-08-05'),
(38,3 , '30 Tablets Calcium Bottle' , 299.50 , 1 , '2024-08-12' ),
(39,32 , 'pre workout 1.1lb' , 2500.00, 1 , '2024-08-04'),
(40,48 , 'Fish oil 1000mg' , 539.00 , 2 , '2024-08-05'),
(41,63 , 'pre workout 1.1lb' , 2500.00, 1 , '2024-08-01'),
(42,21 , '60 Tablets Calcium Bottle' , 599.60 , 2 , '2024-07-24'),
(43,35 , '30 Capsule Vitamin D3' , 349.50 , 2 , '2024-08-01'),
(44,19 , 'Rice Cake' , 99.99 , 1 , '2024-07-26'),
(45,24 , 'pre workout 1.1lb' , 2500.00, 1 , '2024-08-07'),
(46,56 , 'Fish oil 1000mg' , 539.00 , 1 , '2024-08-05'),
(47,88 , 'Protein Dark Chocolate - 6 Bar ' , 199.00 , 1 , '2024-07-27');


-- JOINS 
select * from employees;
select * from jobs;
select * from departments;
select * from orders;

-- Inner Join 
select * from employees e Inner Join orders o on e.employee_id = o.employee_id ; 
select e.employee_id , o.employee_id from employees e Inner Join orders o where e.employee_id = o.employee_id ;
select * from orders o Inner Join employees e on o.employee_id = e.employee_id ;

-- Multiple Inner Join 
select * from employees e Inner Join orders o on e.employee_id = o.employee_id Inner join departments d on d.department_id = e.department_id where e.employee_id > 20 ;                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               

select * from employees e Inner Join Jobs j on e.job_id = j.job_id ;
select * from employees e Inner Join departments d on e.department_id = d.department_id where  e.department_id > 2 ;
select * from employees e Inner Join departments d on e.department_id = d.department_id Inner Join jobs j on e.job_id = j.job_id ;














