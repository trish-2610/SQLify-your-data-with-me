use practice ;
CREATE TABLE Categories (
    categoryId INT PRIMARY KEY,
    categoryName VARCHAR(50) NOT NULL
);
INSERT INTO Categories (categoryId, categoryName) VALUES
(1, 'Ball Sports'),
(2, 'Water Sports'),
(3, 'Winter Sports'),
(4, 'Athletics'),
(5, 'Racquet Sports'),
(6, 'Outdoor Sports'),
(7, 'Combat Sports'),
(8, 'Gym Equipment'),
(9, 'Cycling');

CREATE TABLE Suppliers (
       supplierId int PRIMARY KEY , 
       supplierName varchar(50) NOT NULL
);

INSERT INTO Suppliers (supplierId, supplierName) VALUES
(1, 'Global Sports Co.'),
(2, 'Outdoor Essentials Inc.'),
(3, 'Fitness World Ltd.'),
(4, 'Adventure Gear'),
(5, 'Pro Athlete Supply'),
(6, 'Aquatic Sports Supplies'),
(7, 'WinterGear LLC'),
(8, 'Cycling Depot'),
(9, 'Martial Arts Pro');

Create table Products (
  productId int auto_increment primary key , -- No need to give product id in INSERT command 
  productName varchar(50) not null ,
  supplierId int ,
  categoryId int , 
  units int not null , 
  price decimal(10,2) not null , 
  foreign key (supplierId) references suppliers(supplierId),
  foreign key (categoryId) references categories(categoryId) 
);

INSERT INTO Products (productName, supplierId, categoryId, units, price) VALUES
('Football', 1, 1, 50, 29.99),
('Basketball', 2, 1, 40, 24.99),
('Volleyball', 3, 1, 60, 19.99),
('Tennis Racket', 4, 5, 30, 89.99),
('Badminton Shuttlecock', 5, 5, 200, 14.99),
('Soccer Ball', 1, 1, 80, 34.99),
('Hockey Stick', 2, 3, 25, 49.99),
('Baseball Bat', 3, 1, 35, 39.99),
('Swimming Goggles', 6, 2, 120, 12.99),
('Dumbbell Set', 3, 8, 15, 199.99),
('Mountain Bike', 8, 9, 10, 499.99),
('Boxing Gloves', 9, 7, 50, 59.99),
('Surfboard', 6, 2, 12, 349.99),
('Ice Skates', 7, 3, 20, 99.99),
('Running Shoes', 4, 4, 100, 89.99),
('Jump Rope', 3, 4, 200, 9.99),
('Golf Clubs', 5, 6, 18, 299.99),
('Camping Tent', 2, 6, 15, 149.99),
('Kayak', 6, 2, 8, 799.99),
('Elliptical Machine', 3, 8, 7, 999.99),
('Boxing Bag', 9, 7, 20, 119.99),
('Yoga Mat', 3, 8, 100, 19.99),
('Skateboard', 2, 6, 50, 79.99),
('Cricket Bat', 5, 1, 40, 59.99),
('Table Tennis Paddle', 4, 5, 70, 29.99),
('Fishing Rod', 2, 6, 25, 89.99),
('Weight Bench', 3, 8, 12, 249.99),
('Snowboard', 7, 3, 15, 199.99),
('Roller Skates', 2, 6, 30, 89.99),
('Badminton Racket', 5, 5, 40, 24.99),
('Diving Mask', 6, 2, 50, 49.99),
('Rowing Machine', 3, 8, 8, 799.99),
('Treadmill', 3, 8, 6, 1199.99),
('Boxing Helmet', 9, 7, 30, 39.99),
('Rock Climbing Rope', 4, 6, 10, 199.99),
('Ski Poles', 7, 3, 30, 69.99),
('Soccer Jersey', 1, 1, 100, 49.99),
('Tennis Balls', 4, 5, 150, 14.99),
('Crossbow', 2, 6, 12, 299.99),
('Snorkel Set', 6, 2, 25, 59.99),
('Bicycle Helmet', 8, 9, 30, 49.99),
('Punching Mitts', 9, 7, 40, 24.99),
('Hand Wraps', 9, 7, 100, 9.99),
('Wetsuit', 6, 2, 15, 149.99),
('Kayak Paddle', 6, 2, 20, 79.99),
('Darts Set', 4, 6, 70, 19.99),
('Archery Bow', 2, 6, 10, 399.99),
('Hockey Puck', 2, 3, 100, 9.99),
('Ski Boots', 7, 3, 20, 249.99),
('Sports Water Bottle', 1, 4, 300, 14.99),
('Parachute', 2, 6, 5, 999.99),
('Climbing Helmet', 4, 6, 10, 79.99),
('Sleeping Bag', 2, 6, 25, 89.99),
('Barbell Set', 3, 8, 10, 299.99),
('Bicycle Lock', 8, 9, 50, 19.99),
('Football Helmet', 1, 1, 40, 129.99),
('Hiking Boots', 2, 6, 30, 159.99),
('Weightlifting Belt', 3, 8, 20, 29.99),
('Snowboard Bindings', 7, 3, 10, 149.99),
('Baseball Glove', 1, 1, 40, 79.99),
('Badminton Net', 5, 5, 20, 49.99),
('Climbing Harness', 4, 6, 15, 99.99),
('Water Polo Ball', 6, 2, 30, 24.99),
('Golf Balls', 5, 6, 100, 19.99),
('Punching Bag Stand', 9, 7, 8, 199.99),
('Fencing Sword', 7, 7, 15, 99.99),
('Camping Stove', 2, 6, 20, 49.99),
('Kickboard', 6, 2, 40, 19.99),
('Mountain Climbing Boots', 4, 6, 12, 299.99),
('Racing Bike', 8, 9, 8, 799.99),
('Gymnastic Rings', 3, 8, 20, 49.99),
('Paintball Gun', 2, 6, 15, 199.99),
('Scuba Fins', 6, 2, 25, 89.99),
('Wrestling Singlet', 9, 7, 30, 39.99),
('Ice Hockey Skates', 7, 3, 25, 199.99),
('Soccer Shin Guards', 1, 1, 80, 19.99),
('Javelin', 4, 4, 15, 149.99),
('Cricket Ball', 5, 1, 70, 14.99),
('Rugby Ball', 1, 1, 60, 29.99),
('Speed Bag', 9, 7, 20, 39.99),
('Paragliding Wing', 2, 6, 5, 1499.99),
('Cycling Gloves', 8, 9, 50, 24.99),
('Rowing Oar', 6, 2, 20, 99.99),
('Ski Jacket', 7, 3, 15, 199.99),
('Weightlifting Chalk', 3, 8, 100, 9.99),
('Dumbbells', 3, 8, 25, 49.99),
('Bicycling Shorts', 8, 9, 40, 69.99),
('Table Tennis Table', 4, 5, 10, 299.99),
('Boxing Ring', 9, 7, 3, 2999.99),
('Resistance Bands', 3, 8, 100, 14.99),
('Fishing Reel', 2, 6, 25, 79.99),
('Ski Goggles', 7, 3, 20, 79.99),
('Racquet Grip', 5, 5, 150, 9.99),
('Hiking Backpack', 2, 6, 20, 99.99);


show tables ; 
select * from products ;

select * from products Order by price ASC ;
select * from products Order by price ; -- by default ascending 
select * from products Order by price DESC ;
select * from products Order by productName ;  -- A to Z 
select * from products Order by price desc , supplierId desc ;
select * from products Order by price desc , supplierId asc ;
select * from products Order by categoryId desc , supplierId asc ;
select * from products Order by price asc , units desc ;

select * from products where categoryId = 1;
select count(supplierId) from products group by supplierId ;
select categoryId,count(categoryId) from products group by categoryId ;

select count(supplierId) from products group by supplierId order by supplierId desc ;
select categoryId,count(categoryId) from products group by categoryId order by categoryId desc ;