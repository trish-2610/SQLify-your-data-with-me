show databases;
use practice;

CREATE TABLE customer (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    contact_number VARCHAR(15),
    address VARCHAR(255),
    pin_code INT,
    email_id VARCHAR(100),
    country VARCHAR(50)
);

-- Insert 100 customer records
INSERT INTO customer (customer_id, customer_name, contact_number, address, pin_code, email_id, country) VALUES
(1, 'John Doe', '1234567890', '123 Elm Street, Springfield', 12345, 'john.doe@example.com', 'USA'),
(2, 'Jane Smith', '0987654321', '456 Oak Street, Springfield', 54321, 'jane.smith@example.com', 'USA'),
(3, 'Alice Johnson', '1230984567', '789 Pine Street, Springfield', 67890, 'alice.johnson@example.com', 'USA'),
(4, 'Bob Brown', '5678901234', '321 Maple Street, Springfield', 98765, 'bob.brown@example.com', 'Canada'),
(5, 'Charlie Davis', '2345678901', '654 Cedar Street, Springfield', 45678, 'charlie.davis@example.com', 'Canada'),
(6, 'David Evans', '3456789012', '987 Birch Street, Springfield', 34567, 'david.evans@example.com', 'Canada'),
(7, 'Eva Green', '4567890123', '654 Walnut Street, Springfield', 23456, 'eva.green@example.com', 'Canada'),
(8, 'Frank Harris', '5678901234', '321 Chestnut Street, Springfield', 12345, 'frank.harris@example.com', 'USA'),
(9, 'Grace Lee', '6789012345', '987 Willow Street, Springfield', 67890, 'grace.lee@example.com', 'UK'),
(10, 'Henry Miller', '7890123456', '654 Sycamore Street, Springfield', 98765, 'henry.miller@example.com', 'UK'),
(11, 'Ivy Nelson', '8901234567', '321 Hickory Street, Springfield', 45678, 'ivy.nelson@example.com', 'UK'),
(12, 'Jack Owen', '9012345678', '987 Magnolia Street, Springfield', 34567, 'jack.owen@example.com', 'UK'),
(13, 'Kathy Parker', '0123456789', '654 Dogwood Street, Springfield', 23456, 'kathy.parker@example.com', 'UK'),
(14, 'Liam Quinn', '1234567890', '321 Poplar Street, Springfield', 12345, 'liam.quinn@example.com', 'Australia'),
(15, 'Mia Roberts', '2345678901', '987 Fir Street, Springfield', 67890, 'mia.roberts@example.com', 'Australia'),
(16, 'Nathan Scott', '3456789012', '654 Spruce Street, Springfield', 98765, 'nathan.scott@example.com', 'Australia'),
(17, 'Olivia Turner', '4567890123', '321 Redwood Street, Springfield', 45678, 'olivia.turner@example.com', 'Australia'),
(18, 'Paul Walker', '5678901234', '987 Alder Street, Springfield', 34567, 'paul.walker@example.com', 'Australia'),
(19, 'Quinn Young', '6789012345', '654 Ash Street, Springfield', 23456, 'quinn.young@example.com', 'Australia'),
(20, 'Rachel Adams', '7890123456', '321 Aspen Street, Springfield', 12345, 'rachel.adams@example.com', 'India'),
(21, 'Sam Baker', '8901234567', '987 Beech Street, Springfield', 67890, 'sam.baker@example.com', 'India'),
(22, 'Tina Clark', '9012345678', '654 Elm Street, Springfield', 98765, 'tina.clark@example.com', 'India'),
(23, 'Umar Diaz', '0123456789', '321 Pine Street, Springfield', 45678, 'umar.diaz@example.com', 'India'),
(24, 'Vera Edwards', '1234567890', '987 Oak Street, Springfield', 34567, 'vera.edwards@example.com', 'India'),
(25, 'Will Foster', '2345678901', '654 Maple Street, Springfield', 23456, 'will.foster@example.com', 'India'),
(26, 'Xena Graham', '3456789012', '321 Cedar Street, Springfield', 12345, 'xena.graham@example.com', 'India'),
(27, 'Yara Hill', '4567890123', '987 Walnut Street, Springfield', 67890, 'yara.hill@example.com', 'Germany'),
(28, 'Zane King', '5678901234', '654 Chestnut Street, Springfield', 98765, 'zane.king@example.com', 'Germany'),
(29, 'Amy Lee', '6789012345', '321 Willow Street, Springfield', 45678, 'amy.lee@example.com', 'Germany'),
(30, 'Ben Martin', '7890123456', '987 Sycamore Street, Springfield', 34567, 'ben.martin@example.com', 'Germany'),
(31, 'Cara Nelson', '8901234567', '654 Hickory Street, Springfield', 23456, 'cara.nelson@example.com', 'Germany'),
(32, 'Dan Owens', '9012345678', '321 Magnolia Street, Springfield', 12345, 'dan.owens@example.com', 'Germany'),
(33, 'Ella Perez', '0123456789', '987 Dogwood Street, Springfield', 67890, 'ella.perez@example.com', 'France'),
(34, 'Finn Quinn', '1234567890', '654 Poplar Street, Springfield', 98765, 'finn.quinn@example.com', 'France'),
(35, 'Gina Ross', '2345678901', '321 Fir Street, Springfield', 45678, 'gina.ross@example.com', 'France'),
(36, 'Hank Smith', '3456789012', '987 Spruce Street, Springfield', 34567, 'hank.smith@example.com', 'France'),
(37, 'Isla Taylor', '4567890123', '654 Redwood Street, Springfield', 23456, 'isla.taylor@example.com', 'France'),
(38, 'Jackie Urman', '5678901234', '321 Alder Street, Springfield', 12345, 'jackie.urman@example.com', 'France'),
(39, 'Kyle Valdez', '6789012345', '987 Ash Street, Springfield', 67890, 'kyle.valdez@example.com', 'Spain'),
(40, 'Lara White', '7890123456', '654 Aspen Street, Springfield', 98765, 'lara.white@example.com', 'Spain'),
(41, 'Mike Young', '8901234567', '321 Beech Street, Springfield', 45678, 'mike.young@example.com', 'Spain'),
(42, 'Nina Zhang', '9012345678', '987 Elm Street, Springfield', 34567, 'nina.zhang@example.com', 'Spain'),
(43, 'Oscar Brown', '0123456789', '654 Pine Street, Springfield', 23456, 'oscar.brown@example.com', 'Spain'),
(44, 'Pamela Davis', '1234567890', '321 Oak Street, Springfield', 12345, 'pamela.davis@example.com', 'Spain'),
(45, 'Quincy Evans', '2345678901', '987 Maple Street, Springfield', 67890, 'quincy.evans@example.com', 'Italy'),
(46, 'Rita Ford', '3456789012', '654 Cedar Street, Springfield', 98765, 'rita.ford@example.com', 'Italy'),
(47, 'Steve Green', '4567890123', '321 Walnut Street, Springfield', 45678, 'steve.green@example.com', 'Italy'),
(48, 'Tara Harris', '5678901234', '987 Chestnut Street, Springfield', 34567, 'tara.harris@example.com', 'Italy'),
(49, 'Uma Ives', '6789012345', '654 Willow Street, Springfield', 23456, 'uma.ives@example.com', 'Italy'),
(50, 'Victor James', '7890123456', '321 Sycamore Street, Springfield', 12345, 'victor.james@example.com', 'Italy'),
(51, 'Wendy Klein', '8901234567', '987 Hickory Street, Springfield', 67890, 'wendy.klein@example.com', 'Japan'),
(52, 'Xander Lewis', '9012345678', '654 Magnolia Street, Springfield', 98765, 'xander.lewis@example.com', 'Japan'),
(53, 'Yasmine Miller', '0123456789', '321 Dogwood Street, Springfield', 45678, 'yasmine.miller@example.com', 'Japan'),
(54, 'Zachary Nelson', '1234567890', '987 Poplar Street, Springfield', 34567, 'zachary.nelson@example.com', 'Japan'),
(55, 'Alicia Owens', '2345678901', '654 Fir Street, Springfield', 23456, 'alicia.owens@example.com', 'Japan'),
(56, 'Brian Peters', '3456789012', '321 Spruce Street, Springfield', 12345, 'brian.peters@example.com', 'Japan'),
(57, 'Catherine Quinn', '4567890123', '987 Redwood Street, Springfield', 67890, 'catherine.quinn@example.com', 'China'),
(58, 'David Ross', '5678901234', '654 Alder Street, Springfield', 98765, 'david.ross@example.com', 'China'),
(59, 'Eleanor Smith', '6789012345', '321 Ash Street, Springfield', 45678, 'eleanor.smith@example.com', 'China'),
(60, 'Fred Thompson', '7890123456', '987 Aspen Street, Springfield', 34567, 'fred.thompson@example.com', 'China'),
(61, 'Gwen Underwood', '8901234567', '654 Beech Street, Springfield', 23456, 'gwen.underwood@example.com', 'China'),
(62, 'Harry Vaughn', '9012345678', '321 Elm Street, Springfield', 12345, 'harry.vaughn@example.com', 'China'),
(63, 'Irene Wilson', '0123456789', '987 Pine Street, Springfield', 67890, 'irene.wilson@example.com', 'South Korea'),
(64, 'Jake Xu', '1234567890', '654 Oak Street, Springfield', 98765, 'jake.xu@example.com', 'South Korea'),
(65, 'Kelly Young', '2345678901', '321 Maple Street, Springfield', 45678, 'kelly.young@example.com', 'South Korea'),
(66, 'Liam Zane', '3456789012', '987 Cedar Street, Springfield', 34567, 'liam.zane@example.com', 'South Korea'),
(67, 'Mona Adams', '4567890123', '654 Walnut Street, Springfield', 23456, 'mona.adams@example.com', 'South Korea'),
(68, 'Nick Brown', '5678901234', '321 Chestnut Street, Springfield', 12345, 'nick.brown@example.com', 'South Korea'),
(69, 'Olivia Clark', '6789012345', '987 Willow Street, Springfield', 67890, 'olivia.clark@example.com', 'South Korea'),
(70, 'Peter Davis', '7890123456', '654 Sycamore Street, Springfield', 98765, 'peter.davis@example.com', 'South Korea'),
(71, 'Quinn Edwards', '8901234567', '321 Hickory Street, Springfield', 45678, 'quinn.edwards@example.com', 'South Korea'),
(72, 'Rachel Foster', '9012345678', '987 Magnolia Street, Springfield', 34567, 'rachel.foster@example.com', 'South Korea'),
(73, 'Sam Green', '0123456789', '654 Dogwood Street, Springfield', 23456, 'sam.green@example.com', 'South Korea'),
(74, 'Tina Harris', '1234567890', '321 Poplar Street, Springfield', 12345, 'tina.harris@example.com', 'South Korea'),
(75, 'Uma Jackson', '2345678901', '987 Fir Street, Springfield', 67890, 'uma.jackson@example.com', 'South Korea'),
(76, 'Vera King', '3456789012', '654 Spruce Street, Springfield', 98765, 'vera.king@example.com', 'Australia'),
(77, 'Will Lewis', '4567890123', '321 Redwood Street, Springfield', 45678, 'will.lewis@example.com', 'Australia'),
(78, 'Xena Moore', '5678901234', '987 Alder Street, Springfield', 34567, 'xena.moore@example.com', 'Australia'),
(79, 'Yara Nguyen', '6789012345', '654 Ash Street, Springfield', 23456, 'yara.nguyen@example.com', 'Australia'),
(80, 'Zack Owens', '7890123456', '321 Aspen Street, Springfield', 12345, 'zack.owens@example.com', 'Australia'),
(81, 'Ava Perez', '8901234567', '987 Beech Street, Springfield', 67890, 'ava.perez@example.com', 'Mexico'),
(82, 'Brian Quinn', '9012345678', '654 Elm Street, Springfield', 98765, 'brian.quinn@example.com', 'Mexico'),
(83, 'Cara Roberts', '0123456789', '321 Pine Street, Springfield', 45678, 'cara.roberts@example.com', 'Mexico'),
(84, 'David Smith', '1234567890', '987 Oak Street, Springfield', 34567, 'david.smith@example.com', 'Mexico'),
(85, 'Eva Thompson', '2345678901', '654 Maple Street, Springfield', 23456, 'eva.thompson@example.com', 'Mexico'),
(86, 'Frank Underwood', '3456789012', '321 Cedar Street, Springfield', 12345, 'frank.underwood@example.com', 'Mexico'),
(87, 'Gina Vaughn', '4567890123', '987 Walnut Street, Springfield', 67890, 'gina.vaughn@example.com', 'Mexico'),
(88, 'Hank Wilson', '5678901234', '654 Chestnut Street, Springfield', 98765, 'hank.wilson@example.com', 'Mexico'),
(89, 'Isla Xu', '6789012345', '321 Willow Street, Springfield', 45678, 'isla.xu@example.com', 'Mexico'),
(90, 'Jake Young', '7890123456', '987 Sycamore Street, Springfield', 34567, 'jake.young@example.com', 'Mexico'),
(91, 'Kelly Zane', '8901234567', '654 Hickory Street, Springfield', 23456, 'kelly.zane@example.com', 'Brazil'),
(92, 'Liam Adams', '9012345678', '321 Magnolia Street, Springfield', 12345, 'liam.adams@example.com', 'Brazil'),
(93, 'Mona Brown', '0123456789', '987 Dogwood Street, Springfield', 67890, 'mona.brown@example.com', 'Brazil'),
(94, 'Nick Clark', '1234567890', '654 Poplar Street, Springfield', 98765, 'nick.clark@example.com', 'Brazil'),
(95, 'Olivia Davis', '2345678901', '321 Fir Street, Springfield', 45678, 'olivia.davis@example.com', 'Brazil'),
(96, 'Peter Evans', '3456789012', '987 Spruce Street, Springfield', 34567, 'peter.evans@example.com', 'Brazil'),
(97, 'Quinn Foster', '4567890123', '654 Redwood Street, Springfield', 23456, 'quinn.foster@example.com', 'Brazil'),
(98, 'Rachel Green', '5678901234', '321 Alder Street, Springfield', 12345, 'rachel.green@example.com', 'Brazil'),
(99, 'Sam Harris', '6789012345', '987 Ash Street, Springfield', 67890, 'sam.harris@example.com', 'Brazil'),
(100, 'Tina Ives', '7890123456', '654 Aspen Street, Springfield', 98765, 'tina.ives@example.com', 'Brazil');


select * from customer;

select * from customer where customer_id = 76 ;
select * from customer where customer_name = "Vera King" ;
select * from customer where country = "India" ;
select * from customer where pin_code = 12345;
select * from customer where country = "USA" ;

select * from customer where customer_id > 10 ;
select * from customer where customer_id < 20 ;
select * from customer where customer_id <= 76 ;
select * from customer where customer_id >= 45 ;

select * from customer where country <> "India";
select * from customer where country <> "USA" ;
select * from customer where customer_id <> 12 ;
select * from customer where pin_code <> 12345 ; 

select * from customer where customer_id between 10 and 20 ;
select * from customer where customer_id between 34 and 35 ;

select * from customer where customer_id in ( 10 , 14 , 65 ,75 ,67 );
select * from customer where country in ( "USA" , "India" , "French" );
select * from customer where country in ("USA") ;

select * from customer where customer_id not BETWEEN 10 and 20 ;
select * from customer where country not in ( "USA" , "India" );

select * from customer where customer_name LIKE "a%";
select * from customer where customer_name LIKE "%e";
select * from customer where customer_name LIKE "%a%" ;
select * from customer where customer_name LIKE "_a%" ;
select * from customer where customer_name LIKE "_a%_e" ;
select * from customer where customer_name LIKE "%ar%" ;